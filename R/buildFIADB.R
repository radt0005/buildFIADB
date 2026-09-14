# buildFIADB.R -- unified, cross-platform build/refresh of the FIADB Postgres
# database from the FIA DataMart. Replaces the separate buildFIADBUpdate.R
# (Linux/Mac) and buildFIADBUpdate_WINDOWS_PC.R scripts: there was never an
# actual behavioral difference between a first-time "install" and a later
# "update" (both run the same full rebuild), so this is one function rather
# than a script you hand-edit and one you pick per platform.
#
# Postgres access is via pg_admin_connect() (R/pg_admin_connect.R): Unix-
# socket peer auth + SET ROLE to the admin role on Linux/Mac, TCP +
# FIADB_ADMIN_USER/FIADB_ADMIN_PASSWORD env vars on Windows or wherever no
# socket is available. Creating the database and the admin/reader roles
# (fiadb_admin/fiadb_reader on charcoal2) is a one-time setup step done by
# whoever administers that Postgres instance -- this function does not try
# to install Postgres or create the database itself, and fails fast with a
# clear message if that setup isn't done yet, rather than partway through
# a multi-hour download.

library(RSQLite)
library(data.table)
library(RPostgres)

# Assumes this file is sourced from the repo root (e.g. an RStudio project
# opened there), matching R/pg_admin_connect.R's own relative source path.
source("R/pg_admin_connect.R")

# Translates a SQLite-declared column type (e.g. "VARCHAR(34)", "INTEGER",
# "FLOAT", "DATETIME" -- confirmed against a real FIA DataMart SQLite export)
# into an Oracle-style type_guide row (DATA_TYPE/DATA_LENGTH/DATA_PRECISION/
# DATA_SCALE), so it can flow through the existing Oracle-to-Postgres
# translation machinery unchanged. Used by buildFIADB()'s item 6 fallback
# for columns missing from data_types.csv (see the comment where it's used).
sqliteTypeToOracleRow <- function(sqlite_type) {
  t <- toupper(trimws(sqlite_type))
  len <- suppressWarnings(as.numeric(sub(".*\\(([0-9]+).*\\).*", "\\1", t)))
  base <- sub("\\(.*\\)", "", t)

  if (grepl("^VARCHAR", base)) {
    data.frame(DATA_TYPE = "VARCHAR2", DATA_LENGTH = ifelse(is.na(len), 255, len),
               DATA_PRECISION = NA, DATA_SCALE = NA)
  } else if (grepl("^CHAR", base)) {
    data.frame(DATA_TYPE = "CHAR", DATA_LENGTH = ifelse(is.na(len), 1, len),
               DATA_PRECISION = NA, DATA_SCALE = NA)
  } else if (base %in% c("INTEGER", "INT", "BIGINT", "SMALLINT")) {
    # true precision unknown -- size generously (-> BIGINT downstream)
    # rather than risk silently truncating/overflowing
    data.frame(DATA_TYPE = "NUMBER", DATA_LENGTH = 22, DATA_PRECISION = 18, DATA_SCALE = 0)
  } else if (base %in% c("FLOAT", "REAL", "DOUBLE", "NUMERIC", "DECIMAL")) {
    data.frame(DATA_TYPE = "NUMBER", DATA_LENGTH = 22, DATA_PRECISION = NA, DATA_SCALE = NA)
  } else if (base %in% c("DATE", "DATETIME", "TIMESTAMP")) {
    data.frame(DATA_TYPE = "DATE", DATA_LENGTH = NA, DATA_PRECISION = NA, DATA_SCALE = NA)
  } else {
    # BLOB or anything unrecognized -- safest generic fallback
    data.frame(DATA_TYPE = "CLOB", DATA_LENGTH = NA, DATA_PRECISION = NA, DATA_SCALE = NA)
  }
}

#' Build or refresh the FIADB PostgreSQL database from the FIA DataMart
#'
#' Downloads the FIADB reference and data tables from the FIA DataMart
#' (either fresh, or reusing files already on disk), loads them into a
#' local SQLite file, and imports them into a PostgreSQL database --
#' creating/replacing the \code{fs_fiadb} schema's tables to match.
#' Safe to re-run: works whether this is the first build or a later
#' refresh, since both do the same full rebuild.
#'
#' @param dbname Character. Target PostgreSQL database name. Default
#'   \code{"fiadb"}.
#' @param state_abbr Character scalar. A single state postal abbreviation
#'   (e.g. \code{"DE"}) or \code{"ENTIRE"} for the whole country. Multiple
#'   states in one call are not yet supported (see Details).
#' @param download Logical. If \code{TRUE} (the default), download fresh
#'   reference/data zips from the DataMart. If \code{FALSE}, reuse
#'   \code{FIADB_REFERENCE.zip}/\code{FIADB_DATA.zip} already present in
#'   \code{root_dir} -- e.g. for testing against a previously-downloaded
#'   copy, or retrying after a failure without re-downloading.
#' @param root_dir Character. Directory containing \code{table_guide.csv},
#'   \code{makeTableScripts/}, \code{TableScripts/}, etc. (i.e. the
#'   buildFIADB repo root). Default is the current working directory. The
#'   caller's working directory is restored on exit either way.
#'
#' @details
#' \strong{Multiple states:} passing a vector like \code{c("DE","VA")}
#' is deliberately rejected rather than silently only using the first
#' element -- the DataMart download URL only supports one state (or
#' \code{"ENTIRE"}) per zip, so combining states isn't currently
#' implemented. Run \code{buildFIADB()} once per state instead.
#'
#' \strong{Prerequisites (one-time, done by a Postgres admin, not by this
#' function):} the target database must already exist, along with an
#' admin role you're authorized to use (\code{fiadb_admin} on charcoal2)
#' and, if applicable, a reader role for regular query access
#' (\code{fiadb_reader}). See \code{R/pg_admin_connect.R} and the
#' project README.
#'
#' @return Invisibly, \code{TRUE} on success.
#'
#' @examples
#' \dontrun{
#'   # Full national rebuild, downloading fresh data
#'   buildFIADB()
#'
#'   # Quick single-state test run against already-downloaded zips
#'   buildFIADB(state_abbr = "DE", download = FALSE)
#' }
#'
#' @export
buildFIADB <- function(dbname = "fiadb",
                        state_abbr = "ENTIRE",
                        download = TRUE,
                        root_dir = getwd()) {

  if (length(state_abbr) != 1) {
    stop(
      "state_abbr must be a single state code or 'ENTIRE' -- multiple ",
      "states in one call are not yet supported (the DataMart download ",
      "URL only covers one state, or 'ENTIRE', per zip). Call buildFIADB() ",
      "once per state instead."
    )
  }

  old_wd <- getwd()
  on.exit(setwd(old_wd), add = TRUE)
  setwd(root_dir)

  old_timeout <- getOption("timeout")
  on.exit(options(timeout = old_timeout), add = TRUE)
  # 5 hour download timeout -- should be sufficient for an ENTIRE-US pull
  options(timeout = max(60 * 60 * 5, old_timeout))

  table_guide <- read.csv("table_guide.csv")

  # 1.0 confirm Postgres access ------------------------------------------------
  # Fail fast, before any downloading, if the one-time database/role setup
  # hasn't been done -- rather than discovering it after a multi-hour pull.
  postgres_con <- tryCatch(
    pg_admin_connect(dbname = dbname),
    error = function(e) e
  )
  if (inherits(postgres_con, "error")) {
    stop(
      "Could not open the admin connection to PostgreSQL database '", dbname, "'.\n",
      "This requires one-time setup by a Postgres admin: the '", dbname, "' database ",
      "and a NOLOGIN admin role (e.g. 'fiadb_admin') must already exist, and your own ",
      "Postgres role must be a member of it (GRANT fiadb_admin TO <you>;). If your ",
      "admin role isn't named 'fiadb_admin', set the FIADB_ADMIN_USER environment ",
      "variable (and FIADB_ADMIN_PASSWORD if not using Unix-socket peer auth).\n",
      "Original error: ", conditionMessage(postgres_con)
    )
  }
  on.exit(try(DBI::dbDisconnect(postgres_con), silent = TRUE), add = TRUE)

  #
  # 2.0 download ref tables------------------------------------------------------
  ref_loc <- "https://apps.fs.usda.gov/fia/datamart/CSV/FIADB_REFERENCE.zip"

  dir.create("FIADB_REFERENCE", showWarnings = FALSE)
  file.remove(list.files("FIADB_REFERENCE", full.names = TRUE))

  if (download) download.file(url = ref_loc, destfile = "FIADB_REFERENCE.zip")
  #
  # 2.1 extract ref tables-------------------------------------------------------
  unzip("FIADB_REFERENCE.zip", exdir = "FIADB_REFERENCE")
  #
  # 3.0 download data tables (entire or state)-----------------------------------
  dir.create("FIADB_DATA", showWarnings = FALSE)
  file.remove(list.files("FIADB_DATA/", full.names = TRUE))

  data_loc <- "https://apps.fs.usda.gov/fia/datamart/Databases/SQLite_FIADB_abbr.zip"
  data_loc <- gsub("abbr", state_abbr, data_loc)

  if (download) download.file(url = data_loc, destfile = "FIADB_DATA.zip")
  #
  # 3.1 extract data tables------------------------------------------------------
  unzip("FIADB_DATA.zip", exdir = "FIADB_DATA")

  # extract everything from the sqlite as csv
  sqlite_file <- list.files("FIADB_DATA/", pattern = ".db$", full.names = TRUE)

  sqlite_con <- dbConnect(RSQLite::SQLite(), sqlite_file)
  on.exit(try(DBI::dbDisconnect(sqlite_con), silent = TRUE), add = TRUE)

  tbl_list <- dbListTables(sqlite_con)

  # only extract those that will be uploaded to the db
  tbl_list <- tbl_list[tbl_list %in% table_guide$table]

  getTable <- function(x, noread = FALSE) {

    # this section is if you just want the tables and field names
    if (noread) {
      dat <- dbGetQuery(sqlite_con, paste0("SELECT * FROM ", x, " LIMIT 0"))
      return(data.frame(TABLE_NAME = x, COLUMN_NAME = names(dat)))
    }

    cat(x, "\n")

    nt <- dbGetQuery(sqlite_con, paste0("SELECT count(*) cnt from ", x))$cnt
    nu <- dbGetQuery(sqlite_con,
                     paste0("SELECT count(*) cnt FROM (SELECT distinct * from ", x, ") cnt"))$cnt

    dat <- dbReadTable(x, conn = sqlite_con)

    if (nu < nt) {
      cat("detected non-unique rows in table", x, "\n")
      dat <- unique(dat)
    }

    tbl_info <- data.frame(TABLE_NAME = x, COLUMN_NAME = names(dat))

    fwrite(dat,
           file = file.path("FIADB_DATA/", paste0(x, ".csv")),
           quote = TRUE,
           na = "")

    tbl_info
  }

  sql_tables <- lapply(tbl_list, getTable)
  sql_tables <- do.call(rbind, sql_tables)
  sql_tables$in_sqlite <- "Y"

  # SQLite's own declared column types (item 6) -- used as a fallback source
  # below when a column is missing from data_types.csv (Oracle schema drift).
  getSqliteColumnTypes <- function(x) {
    info <- dbGetQuery(sqlite_con, paste0("PRAGMA table_info(", x, ")"))
    data.frame(TABLE_NAME = x, COLUMN_NAME = info$name,
               SQLITE_TYPE = info$type, SQLITE_NOTNULL = info$notnull,
               SQLITE_CID = info$cid)
  }
  sqlite_types <- lapply(tbl_list, getSqliteColumnTypes)
  sqlite_types <- do.call(rbind, sqlite_types)

  DBI::dbDisconnect(sqlite_con); rm(sqlite_con)

  dir.create("CSV_DATA", showWarnings = FALSE)
  file.remove(list.files("CSV_DATA", full.names = TRUE))

  file.copy(list.files("FIADB_DATA/", full.names = TRUE, pattern = ".csv"),
            "CSV_DATA/", overwrite = TRUE)
  file.copy(list.files("FIADB_REFERENCE/", full.names = TRUE, pattern = ".csv"),
            "CSV_DATA/", overwrite = TRUE)
  #
  # 4.0 create the import scripts------------------------------------------------
  source("makeTableScripts/R/formattingFunctions.R")

  # data type, index/key/constraint guides
  type_guide <- read.csv("makeTableScripts/Data/data_types.csv")
  type_guide$in_oracle <- "Y"
  # contains the indexes, foreign keys, and unique key rules
  index_guide <- read.csv("makeTableScripts/Data/index_info.csv")
  # contains the foreign key relationships
  fk_guide <- read.csv("makeTableScripts/Data/foreign_keys.csv")
  # rough oracle to postgres conversion
  type_trans <- read.csv("makeTableScripts/Data/type_translation.csv")

  type_guide <- unique(type_guide)

  trans <- type_trans$postres
  names(trans) <- type_trans$oracle

  ## fixes ##
  # subplot is always an integer
  type_guide[type_guide$COLUMN_NAME == "SUBP", c("DATA_PRECISION", "DATA_SCALE")] <- data.frame(1, 0)
  # plot is always an integer
  type_guide[type_guide$COLUMN_NAME == "PLOT", c("DATA_PRECISION", "DATA_SCALE")] <- data.frame(1, 0)

  # item 6: fall back to SQLite's own declared type for columns that exist in
  # a table Oracle's data_types.csv already knows about, but that specific
  # column isn't in the guide -- i.e. the FIA Oracle schema added a column
  # since data_types.csv was last generated. Translated into an Oracle-style
  # row (DATA_TYPE = VARCHAR2/NUMBER/DATE/etc., via sqliteTypeToOracleRow())
  # so it flows through the existing trans/makeTableScript() machinery
  # unchanged. Dropped columns already degrade gracefully via the merge
  # below and don't need this -- only *added* columns hit the problem this
  # works around. This is a stopgap: it won't carry Oracle's exact
  # precision/scale until data_types.csv is refreshed, so it warns loudly
  # rather than failing.
  known_tables <- unique(type_guide$TABLE_NAME)
  drifted <- sql_tables[sql_tables$TABLE_NAME %in% known_tables &
                          !paste(sql_tables$TABLE_NAME, sql_tables$COLUMN_NAME) %in%
                            paste(type_guide$TABLE_NAME, type_guide$COLUMN_NAME), ]

  if (nrow(drifted) > 0) {
    msg <- paste0(
      nrow(drifted), " column(s) found in SQLite that aren't in data_types.csv, in ",
      "table(s) already known to Oracle -- likely the FIA Oracle schema added these ",
      "since data_types.csv was last generated. Falling back to SQLite's own declared ",
      "type (won't have Oracle's exact precision/scale until data_types.csv is ",
      "refreshed): ", paste(paste0(drifted$TABLE_NAME, ".", drifted$COLUMN_NAME), collapse = ", ")
    )
    message(msg)
    warning(msg, call. = FALSE)

    fallback_rows <- do.call(rbind, lapply(seq_len(nrow(drifted)), function(i) {
      row <- drifted[i, ]
      sqlite_row <- sqlite_types[sqlite_types$TABLE_NAME == row$TABLE_NAME &
                                    sqlite_types$COLUMN_NAME == row$COLUMN_NAME, ]
      type_info <- sqliteTypeToOracleRow(sqlite_row$SQLITE_TYPE[1])
      data.frame(
        OWNER = "FALLBACK_SQLITE_TYPE",
        TABLE_NAME = row$TABLE_NAME,
        COLUMN_NAME = row$COLUMN_NAME,
        DATA_TYPE = type_info$DATA_TYPE,
        DATA_LENGTH = type_info$DATA_LENGTH,
        DATA_PRECISION = type_info$DATA_PRECISION,
        DATA_SCALE = type_info$DATA_SCALE,
        NULLABLE = ifelse(identical(sqlite_row$SQLITE_NOTNULL[1], 1L), "N", "Y"),
        # place after real Oracle columns for this table, preserving SQLite's order
        COLUMN_ID = 10000 + sqlite_row$SQLITE_CID[1],
        COMMENTS = "fallback: SQLite-declared type (Oracle schema drift)",
        in_oracle = "Y",
        stringsAsFactors = FALSE
      )
    }))

    type_guide <- rbind(type_guide, fallback_rows)
  }

  # compare what's in the sqlite to what is exported from Oracle
  comp <- merge(x = type_guide, y = sql_tables,
                by = c("TABLE_NAME", "COLUMN_NAME"), all = TRUE)

  comp <- merge(x = comp, y = table_guide,
                by.x = "TABLE_NAME", by.y = "table", all.x = TRUE)

  # see if the sqlite files have any columns not in oracle
  tables_in_sqlite <- unique(comp[is.na(comp$OWNER), ]$TABLE_NAME)
  tables_in_oracle <- unique(type_guide$TABLE_NAME)

  if (any(tables_in_sqlite %in% tables_in_oracle)) {
    # The item 6 fallback above should already cover "added column in a
    # known table" -- reaching this stop() means something it didn't
    # anticipate (e.g. a table appearing more than once with conflicting
    # metadata). Needs manual investigation, not an automatic fallback.
    print(comp[is.na(comp$OWNER) & (comp$TABLE_NAME %in% tables_in_oracle), ])
    stop(
      "field(s) in SQLite not in the Oracle data_types.csv guide.\n",
      "Likely fix: the FIA Oracle schema has drifted since data_types.csv was\n",
      "generated. Save makeTableScripts/Data/data_types.csv -> data_types_old.csv,\n",
      "compare the table(s) named above between type_guide and sql_tables, update\n",
      "makeTableScripts/Data/data_types.csv accordingly (or ask for a refreshed\n",
      "copy), and re-run."
    )
  }

  # these are entries that are in oracle but not in sqlite
  not_in_sqlite <- comp[is.na(comp$in_sqlite), ]

  # subset to what is used and create the import scripts
  type_to_run <- comp[(!is.na(comp$in_sqlite) & !is.na(comp$in_oracle)) |
                        comp$csv_location %in% c("REF_PERM", "CSV_PERM"), ]

  # re-order
  type_to_run <- type_to_run[order(type_to_run$TABLE_NAME, type_to_run$COLUMN_ID), ]

  # make sure the index, primary, unique and foreign keys are still in the sqlite
  upi_keys <- index_guide[, c("TABLE_NAME", "COLUMN_NAME")]
  upi_keys$source <- "Index_Primary_Unique"

  f_keys <- fk_guide[, c("TABLE_NAME", "COLUMN_NAME")]
  f_keys$source <- "Foreign_Current"

  r_keys <- fk_guide[, c("R_TABLE_NAME", "FOREIGN_COL")]
  names(r_keys) <- c("TABLE_NAME", "COLUMN_NAME")
  r_keys$source <- "Foreign_Reference"

  keys <- rbind(upi_keys, f_keys, r_keys)

  no_keys <- merge(x = keys, y = not_in_sqlite)

  if (any(no_keys$csv_location %in% c("CSV_DATA"))) {
    print(no_keys[no_keys$csv_location %in% c("CSV_DATA"),
                  c("TABLE_NAME", "COLUMN_NAME", "source")])
    stop("missing columns to create keys")
  }

  # make all the create table scripts
  dir.create("TableScripts", showWarnings = FALSE)
  file.remove(list.files("TableScripts", full.names = TRUE))

  table_list <- unique(type_to_run$TABLE_NAME)

  table_scripts <- lapply(table_list,
                          makeFullScript,
                          data_types = type_to_run,
                          index_info = index_guide,
                          foreign_key_info = fk_guide,
                          trans_guide = trans)

  names(table_scripts) <- table_list

  # write out each table import script
  for (i in seq_along(table_scripts)) {
    info <- table_scripts[i]
    fn <- paste0("Create", names(info), ".sql")
    sink(file = file.path("TableScripts/", fn))
    cat(info[[1]])
    sink()
  }
  #
  # 4.1 create postgres tables---------------------------------------------------
  # run each import script. Split on statement-terminating ';' (handling both
  # \r\n and \n line endings, since these scripts may be generated/edited on
  # either Windows or Linux/Mac) so multi-statement scripts run correctly.
  for (row in seq_len(nrow(table_guide))) {
    file_name <- file.path(table_guide$script_location[row], table_guide$oracle[row])

    if (!file.exists(file_name)) {
      stop(paste0("script ", table_guide$oracle[row], " not found"))
    }
    query <- readChar(file_name, file.info(file_name)$size)

    if (grepl(pattern = ";\r\n", query, fixed = TRUE)) {
      qLines <- unlist(strsplit(query, split = ";\r\n", fixed = TRUE))
    } else {
      qLines <- unlist(strsplit(query, split = ";\n", fixed = TRUE))
    }

    cat("running script", table_guide$oracle[row], "\n")
    lapply(qLines, function(x) dbExecute(postgres_con, x))
  }
  #
  # 5.0 force correct data types-------------------------------------------------
  # the data types from sqlite don't always match what postgres needs, so grab
  # all the data types from postgres, then use data.table::fread to force the
  # correct types
  table_descriptions <- dbGetQuery(postgres_con,
                                   "select
                                   table_name,
                                   column_name,
                                   data_type from information_schema.columns
                                   where table_schema = 'fs_fiadb'")

  table_descriptions$table_name <- toupper(table_descriptions$table_name)

  # approximation of R to postgres data types
  trans <- c("integer64", "character", "character", "double", "double",
             "double", "double", "POSIXct", "character", "character")

  names(trans) <- c("bigint", "character", "character varying", "double precision",
                    "integer", "numeric", "smallint",
                    "timestamp without time zone", "text", "bytea")

  table_descriptions$r_type <- as.vector(trans[table_descriptions$data_type])

  data_guide <- table_descriptions[table_descriptions$table_name %in% table_guide$table, ]

  table_list <- sort(unique(data_guide$table_name))

  has_csv <- table_guide[!is.na(table_guide$csv_location), ]$table

  table_list <- table_list[table_list %in% has_csv]

  # this function reads in each data files, forces the correct data type
  # then writes back to csv. somewhat memory intensive.
  updateCSV <- function(tbl) {
    cat(tbl, "\n")

    # table variables and their types
    sql_recs <- data_guide[data_guide$table_name == tbl, ]

    trans <- c("integer64", "character", "character", "double", "double",
               "double", "double", "POSIXct")

    names(trans) <- c("bigint", "character", "character varying", "double precision",
                      "integer", "numeric", "smallint", "timestamp without time zone")

    var_types <- as.vector(trans[sql_recs$data_type])
    names(var_types) <- toupper(sql_recs$column_name)

    # read, update and write the files
    file <- file.path("CSV_DATA", paste0(tbl, ".csv"))

    if (!file.exists(file)) return(NULL)

    d <- fread(file = file, data.table = FALSE, colClasses = var_types)

    # file currently has duplicate rows
    if (tbl == "LICHEN_SPECIES_SUMMARY") {
      d <- d[!duplicated(d$CN), ]
    }

    if (tbl == "REF_HABTYP_DESCRIPTION") {
      d[is.na(d$HABTYPCD), "HABTYPCD"] <- "NA"
    }

    if (tbl == "REF_LICHEN_SPP_COMMENTS") {
      d$YEAREND <- as.integer(d$YEAREND)
      d$YEARSTART <- as.integer(d$YEARSTART)
    }

    if (any(names(d) == "modified_date")) {
      d$modified_date <- as.IDate("2004-03-10 12:05:53 UTC")
    }

    fwrite(d, file, quote = TRUE, na = "")

    NULL
  }

  # sometimes the data from sqlite doesn't match the type specifications that
  # oracle/postgres expect -- force all types to match what's in the schema.
  # can be memory intensive when working with the national dataset.
  invisible(lapply(table_list, updateCSV))

  #
  # 6.0 import the data into postgres--------------------------------------------
  # 'table_guide.csv' has the csv directory listed for each file
  # csv_data, csv_perm, ref_perm
  #
  # Loaded via dbAppendTable() rather than a server-side `COPY table FROM
  # '<path>'`: the latter requires the connecting role to hold the
  # pg_read_server_files privilege (Postgres won't let a non-superuser have
  # the server read an arbitrary file path otherwise), which we deliberately
  # don't want to grant the least-privilege fiadb_admin role. dbAppendTable()
  # streams the data through the client connection instead (RPostgres
  # implements this via COPY ... FROM STDIN under the hood), so Postgres
  # never touches the filesystem itself and no extra privilege is needed.
  import_trans <- c("integer64", "character", "character", "double", "double",
                    "double", "double", "POSIXct")
  names(import_trans) <- c("bigint", "character", "character varying", "double precision",
                           "integer", "numeric", "smallint", "timestamp without time zone")

  for (row in seq_len(nrow(table_guide))) {
    if (is.na(table_guide$file[row])) next

    file_name <- file.path(table_guide$csv_location[row], table_guide$file[row])

    if (!file.exists(file_name)) {
      stop(paste0("file ", table_guide$file[row], " not found"))
    }

    sql_recs <- data_guide[data_guide$table_name == toupper(table_guide$table[row]), ]
    var_types <- as.vector(import_trans[sql_recs$data_type])
    names(var_types) <- toupper(sql_recs$column_name)

    cat("running import for", table_guide$table[row], "\n")

    d <- fread(file = file_name, data.table = FALSE, colClasses = var_types)
    names(d) <- tolower(names(d))

    result <- try(DBI::dbAppendTable(
      postgres_con,
      DBI::Id(schema = "fs_fiadb", table = tolower(table_guide$table[row])),
      d
    ))

    if (inherits(result, "try-error")) {
      stop("there was an error when copying data into table ",
           table_guide$table[row], ".\n",
           "if this error was an invalid syntax or type error\n",
           "try re-running -- updateCSV() above should force the correct types")
    }
  }

  # simple forest area check -- sanity-checks the build actually worked
  area_query <- dbGetQuery(postgres_con,
                           "SELECT sql_query FROM fs_fiadb.ref_pop_attribute
                           WHERE attribute_nbr = 2")$sql_query
  area_query <- gsub("^SELECT", "SELECT peg.eval_grp,", area_query)
  area_query <- paste(area_query, " GROUP BY peg.eval_grp order by peg.eval_grp", collapse = "")
  area_query <- gsub("&FIADB_SCHEMA", "FS_FIADB", area_query)
  area_query <- gsub("= &EVAL_GRP",
                     "IN (SELECT eval_grps::integer FROM fs_fiadb.datamart_most_recent_inv)",
                     area_query)
  print(dbGetQuery(postgres_con, area_query))

  invisible(TRUE)
}
