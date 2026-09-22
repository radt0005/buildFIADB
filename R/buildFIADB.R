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

# Prints/warns msg (so it's visible the normal R way) and, if log_file isn't
# NULL, also appends a timestamped copy to it -- so a non-interactive run
# (cron, a wrapper script) leaves a record even if nobody was watching the
# console. Never lets a logging problem (e.g. an unwritable path) stop the
# build: a failure to write the log file is itself just a message().
logMsg <- function(msg, log_file) {
  line <- paste0("[", format(Sys.time(), "%Y-%m-%d %H:%M:%S"), "] ", msg)
  message(line)
  if (!is.null(log_file)) {
    ok <- tryCatch({
      cat(line, "\n", file = log_file, append = TRUE)
      TRUE
    }, error = function(e) FALSE)
    if (!ok) message("(could not write to log_file '", log_file, "')")
  }
  invisible(line)
}

# Best-effort email via the system 'mail' command -- never fatal, and a
# no-op if 'to' is NULL. Whether it actually delivers depends on this
# machine's mail transport being configured; not verified here.
notifyEmail <- function(subject, body, to) {
  if (is.null(to)) return(invisible(FALSE))
  ok <- tryCatch({
    system2("mail", c("-s", shQuote(subject), to), input = body) == 0
  }, error = function(e) FALSE)
  if (!ok) {
    message("Note: could not send notification email to ",
            paste(to, collapse = ", "),
            " (is 'mail'/'mailx' installed and configured to deliver?)")
  }
  invisible(ok)
}

# See the "REF_POP_ATTRIBUTE drift guard" section of buildFIADB()'s Details
# for the full rationale. Compares this run's freshly-downloaded
# FIADB_REFERENCE/REF_POP_ATTRIBUTE.csv against the permanently-pinned
# REF_PERM/REF_POP_ATTRIBUTE.csv that the actual import always reads from
# (table_guide.csv routes this table's csv_location to REF_PERM, and that
# is deliberately NOT changed here -- see the buildFIADB() call site for
# why retargeting csv_location itself would be both unnecessary and unsafe
# for this particular table). If the live download looks like a strictly
# safe upgrade (same-or-more ATTRIBUTE_NBRs, none newly blank, same
# columns), offers to promote it into REF_PERM; if not run interactively,
# only logs/warns/emails -- it never rewrites REF_PERM on its own.
# Wrapped in tryCatch at the call site so a bug in this guard can never
# break the main build.
checkRefPopAttributeDrift <- function(prompt, log_file, notify_email) {
  perm_file <- file.path("REF_PERM", "REF_POP_ATTRIBUTE.csv")
  live_file <- file.path("FIADB_REFERENCE", "REF_POP_ATTRIBUTE.csv")

  if (!file.exists(live_file)) {
    logMsg("REF_POP_ATTRIBUTE.csv not present in this DataMart download -- staying on the permanent REF_PERM copy.", log_file)
    return(invisible(FALSE))
  }
  if (!file.exists(perm_file)) {
    logMsg("No permanent REF_PERM/REF_POP_ATTRIBUTE.csv found to compare against -- skipping the drift guard.", log_file)
    return(invisible(FALSE))
  }

  perm <- read.csv(perm_file, stringsAsFactors = FALSE)
  live <- read.csv(live_file, stringsAsFactors = FALSE)

  sql_cols <- c("SQL_QUERY", "SQL_QUERY_SE")
  if (!all(c("ATTRIBUTE_NBR", sql_cols) %in% names(live))) {
    logMsg("This download's REF_POP_ATTRIBUTE.csv is missing expected column(s) -- staying on the permanent REF_PERM copy.", log_file)
    return(invisible(FALSE))
  }

  # Precondition: a straight CSV swap only makes sense if the column set
  # still matches what TableScriptsPerm/CreateREF_POP_ATTRIBUTE.sql
  # declares (a *column*-level change is a bigger deal than a data refresh
  # and needs a human to update that script too).
  if (!setequal(names(perm), names(live))) {
    msg <- paste0(
      "REF_POP_ATTRIBUTE's live DataMart export now has a different column set ",
      "than the permanent REF_PERM copy -- added: [",
      paste(setdiff(names(live), names(perm)), collapse = ", "), "], removed: [",
      paste(setdiff(names(perm), names(live)), collapse = ", "), "]. This needs ",
      "manual review (and likely an update to ",
      "TableScriptsPerm/CreateREF_POP_ATTRIBUTE.sql) -- not auto-refreshing."
    )
    logMsg(msg, log_file)
    warning(msg, call. = FALSE)
    notifyEmail("buildFIADB: REF_POP_ATTRIBUTE column drift needs manual review", msg, notify_email)
    return(invisible(FALSE))
  }

  blank <- function(x) is.na(x) | trimws(x) == ""
  live_blank_attrs <- live$ATTRIBUTE_NBR[blank(live$SQL_QUERY) | blank(live$SQL_QUERY_SE)]

  # No regression: every ATTRIBUTE_NBR already trusted (in the permanent
  # copy) must still be present in the live download, and non-blank there.
  missing_attrs <- setdiff(perm$ATTRIBUTE_NBR, live$ATTRIBUTE_NBR)
  regressed_attrs <- intersect(perm$ATTRIBUTE_NBR, live_blank_attrs)

  if (length(missing_attrs) > 0 || length(regressed_attrs) > 0) {
    msg <- paste0(
      "REF_POP_ATTRIBUTE in this DataMart download looks WORSE than the permanent ",
      "REF_PERM copy -- staying pinned.",
      if (length(missing_attrs) > 0) paste0(
        " ", length(missing_attrs), " previously-known ATTRIBUTE_NBR(s) missing entirely: ",
        paste(head(missing_attrs, 10), collapse = ", "),
        if (length(missing_attrs) > 10) ", ..." else "", "."
      ) else "",
      if (length(regressed_attrs) > 0) paste0(
        " ", length(regressed_attrs), " previously-known ATTRIBUTE_NBR(s) now have blank ",
        "SQL_QUERY/SQL_QUERY_SE: ", paste(head(regressed_attrs, 10), collapse = ", "),
        if (length(regressed_attrs) > 10) ", ..." else "", "."
      ) else ""
    )
    logMsg(msg, log_file)
    warning(msg, call. = FALSE)
    notifyEmail("buildFIADB: REF_POP_ATTRIBUTE regression detected in DataMart export", msg, notify_email)
    return(invisible(FALSE))
  }

  # Don't promote a copy whose *new* rows are half-populated either -- only
  # the previously-known set was checked above.
  new_attrs <- setdiff(live$ATTRIBUTE_NBR, perm$ATTRIBUTE_NBR)
  new_blank_attrs <- intersect(new_attrs, live_blank_attrs)

  if (length(new_blank_attrs) > 0) {
    msg <- paste0(
      length(new_blank_attrs), " new ATTRIBUTE_NBR(s) in this download have blank ",
      "SQL_QUERY/SQL_QUERY_SE: ", paste(head(new_blank_attrs, 10), collapse = ", "),
      if (length(new_blank_attrs) > 10) ", ..." else "",
      ". Staying on the permanent REF_PERM copy rather than promoting a partially-blank set."
    )
    logMsg(msg, log_file)
    warning(msg, call. = FALSE)
    notifyEmail("buildFIADB: REF_POP_ATTRIBUTE new rows incomplete", msg, notify_email)
    return(invisible(FALSE))
  }

  # Everything checks out. Also surface *changed* (but non-blank) SQL text
  # for attributes present in both -- not unsafe the way a blank is, but
  # useful information about what a refresh would actually change.
  common_attrs <- intersect(perm$ATTRIBUTE_NBR, live$ATTRIBUTE_NBR)
  p <- perm[match(common_attrs, perm$ATTRIBUTE_NBR), ]
  l <- live[match(common_attrs, live$ATTRIBUTE_NBR), ]
  changed_attrs <- common_attrs[p$SQL_QUERY != l$SQL_QUERY | p$SQL_QUERY_SE != l$SQL_QUERY_SE]

  summary_msg <- paste0(
    "REF_POP_ATTRIBUTE in this DataMart download validates cleanly against the permanent ",
    "REF_PERM copy: all ", length(common_attrs), " previously-known ATTRIBUTE_NBR(s) still ",
    "present and non-blank; ", length(new_attrs), " new one(s)",
    if (length(new_attrs) > 0) paste0(" (", paste(head(new_attrs, 15), collapse = ", "),
                                       if (length(new_attrs) > 15) ", ..." else "", ")") else "",
    "; ", length(changed_attrs), " existing one(s) with changed (still non-blank) SQL text",
    if (length(changed_attrs) > 0) paste0(" (", paste(head(changed_attrs, 15), collapse = ", "),
                                           if (length(changed_attrs) > 15) ", ..." else "", ")") else "",
    "."
  )
  logMsg(summary_msg, log_file)

  do_refresh <- FALSE
  if (isTRUE(prompt)) {
    cat("\n", summary_msg, "\n\n",
        "Refresh the permanent copy (REF_PERM/REF_POP_ATTRIBUTE.csv) with this ",
        "validated download? A dated backup is kept first. [y/N]: ", sep = "")
    ans <- tolower(trimws(readline()))
    do_refresh <- identical(ans, "y") || identical(ans, "yes")
  } else {
    msg <- paste0(
      "Running non-interactively: NOT auto-refreshing REF_PERM/REF_POP_ATTRIBUTE.csv, even ",
      "though this download validated cleanly. Re-run with prompt = TRUE (interactively) to ",
      "review and apply it. ", summary_msg
    )
    logMsg(msg, log_file)
    warning(msg, call. = FALSE)
    notifyEmail("buildFIADB: validated REF_POP_ATTRIBUTE refresh available", msg, notify_email)
  }

  if (do_refresh) {
    bak_file <- file.path("REF_PERM", paste0("REF_POP_ATTRIBUTE_", format(Sys.Date(), "%Y%m%d"), ".bak.csv"))
    if (file.exists(bak_file)) {
      stop(
        "Backup '", bak_file, "' already exists -- refusing to overwrite an existing ",
        "backup. Remove or rename it first if you really want to refresh again today."
      )
    }
    file.copy(perm_file, bak_file)
    file.copy(live_file, perm_file, overwrite = TRUE)
    logMsg(paste0("Refreshed REF_PERM/REF_POP_ATTRIBUTE.csv from this download (backup: ", bak_file, ")."), log_file)
  }

  invisible(do_refresh)
}

# Chunked large-table import -------------------------------------------------
# Added 2026-09-20 after buildFIADB()'s national (state_abbr="ENTIRE") build
# twice OOM-killed the R session on the same tables (TREE, then TREE_GRM_ESTN)
# -- confirmed via kernel logs, see project memory. Root cause: TREE's CSV is
# "only" 13.3GB but 198 columns wide, so fully materializing it as an R
# data.frame took ~101.7GB (about a 7.6x raw-bytes-to-memory expansion) --
# more than a much-taller-but-narrower table like POP_PLOT_STRATUM_ASSGN
# (23.5M rows, 14 columns, 2.6GB) ever needed despite a similar row count.
# File size (proportional to rows * columns) is what predicts the risk, not
# row count alone.

# Total system memory in bytes (Linux: /proc/meminfo; a conservative fixed
# fallback elsewhere -- this is aimed at charcoal2-scale Linux deployments,
# not a general cross-platform memory profiler).
detectTotalMemoryBytes <- function() {
  meminfo <- "/proc/meminfo"
  if (file.exists(meminfo)) {
    line <- grep("^MemTotal:", readLines(meminfo, n = 5), value = TRUE)
    kb <- suppressWarnings(as.numeric(gsub("[^0-9]", "", line)))
    if (length(kb) == 1 && !is.na(kb)) return(kb * 1024)
  }
  NA_real_
}

# Target raw CSV bytes per chunk: aim for each chunk's *expanded* in-memory
# size (raw bytes * mem_expansion) to stay under mem_frac of TOTAL system
# memory -- not momentarily-available memory, which swings with whatever else
# is running on a shared machine (observed firsthand the night this was
# added) and would make chunk-count decisions unpredictable and hard to test.
# mem_expansion = 8 is a conservative rounding of the ~7.6x TREE expansion
# above; narrower tables expand less, so this errs safe rather than tight.
# A machine with half the RAM gets a proportionally smaller target, and so
# roughly twice as many chunks for the same table -- no manual retuning
# needed per machine.
computeChunkTargetBytes <- function(mem_frac = 0.10, mem_expansion = 8,
                                     fallback_bytes = 2e9) {
  total_mem <- detectTotalMemoryBytes()
  if (is.na(total_mem)) return(fallback_bytes)
  (total_mem * mem_frac) / mem_expansion
}

# The same per-table data-cleaning updateCSV() used to apply, factored out so
# it can run once per chunk. Operates on already-uppercase column names (the
# CSV/Postgres-metadata convention used throughout this file) and returns the
# cleaned chunk.
# NOTE: LICHEN_SPECIES_SUMMARY's dedup-by-CN only catches duplicates within
# a single chunk -- a duplicate CN split across two different chunks would
# slip through. Not a real risk today (that table is far too small to ever
# be chunked -- only file-size-triggered chunking applies here), but worth
# knowing if that ever changed.
cleanTableChunk <- function(tbl, d) {
  if (tbl == "LICHEN_SPECIES_SUMMARY" && "CN" %in% names(d)) {
    d <- d[!duplicated(d$CN), ]
  }
  if (tbl == "REF_HABTYP_DESCRIPTION" && "HABTYPCD" %in% names(d)) {
    d[is.na(d$HABTYPCD), "HABTYPCD"] <- "NA"
  }
  if (tbl == "REF_LICHEN_SPP_COMMENTS") {
    if ("YEAREND" %in% names(d)) d$YEAREND <- as.integer(d$YEAREND)
    if ("YEARSTART" %in% names(d)) d$YEARSTART <- as.integer(d$YEARSTART)
  }
  if (any(names(d) == "modified_date")) {
    d$modified_date <- as.IDate("2004-03-10 12:05:53 UTC")
  }
  d
}

# Reads, cleans, and imports ONE table (table_guide row `row`) into Postgres.
# Replaces both the old updateCSV()/Section 5.0 rewrite-to-CSV step and the
# Section 6.0 import-loop body -- previously every table was fread() twice
# (once to force types and fwrite() back to CSV_DATA, again to actually
# import) purely so the import step had something to read; nothing else ever
# consumed the rewritten CSV, so that round-trip is dropped entirely here.
# Tables at or under chunk_target_bytes are read in one pass (n_chunks == 1
# is just the single-chunk case of the same code path below, not a separate
# branch); larger tables are read/cleaned/imported in row-range chunks via
# fread()'s skip=/nrows=, with an explicit gc() between chunks -- confirmed
# the same night that R's own incremental GC does not reliably reclaim a
# chunk's memory before the next one is read.
processAndImportTable <- function(row, table_guide, data_guide, postgres_con,
                                   import_trans, chunk_target_bytes,
                                   log_file = NULL) {
  if (is.na(table_guide$file[row])) return(invisible(NULL))

  tbl <- toupper(table_guide$table[row])
  file_name <- file.path(table_guide$csv_location[row], table_guide$file[row])

  if (!file.exists(file_name)) {
    stop(paste0("file ", table_guide$file[row], " not found"))
  }

  sql_recs <- data_guide[data_guide$table_name == tbl, ]
  var_types <- as.vector(import_trans[sql_recs$data_type])
  names(var_types) <- toupper(sql_recs$column_name)

  # True on-disk column order/names, via fread's own (quote-aware) header
  # parsing rather than a manual split -- used for positional colClasses
  # below, which is unambiguous regardless of whether a given read relies on
  # the file's real header (header = TRUE) or an explicit col.names= (the
  # chunked reads, which skip past the header row).
  header_names <- toupper(names(fread(file_name, nrows = 0)))
  colclasses_pos <- unname(var_types[header_names])

  if (anyNA(colclasses_pos)) {
    stop(
      tbl, ": column(s) in ", file_name, " not found in the live Postgres ",
      "schema: ", paste(header_names[is.na(colclasses_pos)], collapse = ", "),
      ". This is the schema-drift case Section 4.0's sqliteTypeToOracleRow() ",
      "fallback is meant to catch upstream -- if it's showing up here instead, ",
      "something in that fallback didn't cover this table/column."
    )
  }

  file_size <- file.size(file_name)
  n_chunks <- max(1L, ceiling(file_size / chunk_target_bytes))

  rows_per_chunk <- NA_integer_
  if (n_chunks > 1) {
    # wc -l with a filename argument prints "<count> <filename>", not just
    # the bare number -- extract the leading digits rather than coercing the
    # whole line (which silently produced NA here during testing, and NA
    # ends up meaning "no limit" to fread()'s nrows=, defeating chunking
    # entirely without any visible error).
    wc_out <- system2("wc", c("-l", shQuote(file_name)), stdout = TRUE)
    total_rows <- as.integer(sub("^\\s*([0-9]+).*$", "\\1", wc_out)) - 1L
    rows_per_chunk <- ceiling(total_rows / n_chunks)
    logMsg(paste0(tbl, ": ", round(file_size / 1e9, 1), "GB -- chunking into ",
                   n_chunks, " pieces of ~", rows_per_chunk, " rows each"), log_file)
  }

  cat("running import for", tbl, "\n")

  for (i in seq_len(n_chunks)) {
    if (n_chunks == 1) {
      d <- fread(file = file_name, data.table = FALSE, header = TRUE,
                 colClasses = colclasses_pos)
    } else {
      skip_rows <- 1L + (i - 1L) * rows_per_chunk
      d <- fread(file = file_name, data.table = FALSE, header = FALSE,
                 skip = skip_rows, nrows = rows_per_chunk,
                 col.names = header_names, colClasses = colclasses_pos)
      if (nrow(d) == 0) break  # ran past EOF on the (rounded-up) last chunk
    }

    names(d) <- toupper(names(d))
    d <- cleanTableChunk(tbl, d)
    names(d) <- tolower(names(d))

    result <- try(DBI::dbAppendTable(
      postgres_con,
      DBI::Id(schema = "fs_fiadb", table = tolower(tbl)),
      d
    ))

    if (inherits(result, "try-error")) {
      stop("there was an error when copying data into table ", tbl,
           if (n_chunks > 1) paste0(" (chunk ", i, " of ", n_chunks, ")") else "",
           ".\nif this error was an invalid syntax or type error, check that ",
           "colclasses_pos/header_names line up with the file's real columns.")
    }

    rm(d)
    if (n_chunks > 1) gc(full = TRUE)
  }

  invisible(NULL)
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
#'   \code{"fiadb"}. Lower-cased automatically: an unquoted
#'   \code{CREATE DATABASE} folds its name to lowercase, but the connection
#'   parameter used to reach it is not folded, so a mixed-case name here
#'   would otherwise silently fail to connect ("database does not exist")
#'   even though the database is really there.
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
#' @param prompt Logical. Whether to interactively ask before refreshing
#'   the permanent \code{REF_PERM/REF_POP_ATTRIBUTE.csv} copy when this
#'   download's version validates cleanly (see Details). Default
#'   \code{interactive()} -- \code{FALSE} in a non-interactive/scripted run,
#'   which logs and warns loudly instead of prompting (and emails
#'   \code{notify_email}, if set) rather than blocking on input.
#' @param log_file Character or \code{NULL}. Path (relative to
#'   \code{root_dir} unless absolute) to append timestamped log messages
#'   to, in addition to \code{message()}/\code{warning()}. Default
#'   \code{"buildFIADB.log"}. \code{NULL} disables file logging.
#' @param notify_email Character vector of email addresses, or \code{NULL}
#'   (the default) to disable. When set, a notification is sent via the
#'   system \code{mail} command for loud, actionable warnings raised during
#'   the run (currently just the \code{REF_POP_ATTRIBUTE} drift guard, see
#'   Details) -- most useful combined with \code{prompt = FALSE} for an
#'   unattended/cron-style run, so a sysadmin finds out even though nobody
#'   was watching the console. Best-effort: a failure to send never stops
#'   the build, it just prints a note. Depends on this machine's \code{mail}
#'   command actually being configured to deliver (not verified here).
#' @param reimport_only Logical, default \code{FALSE}. \strong{Temporary/
#'   experimental switch, added 2026-09-20} for quickly re-testing just the
#'   import step against a run that already got as far as extracting
#'   \code{FIADB_REFERENCE}/\code{FIADB_DATA}/\code{CSV_DATA} and generating
#'   \code{TableScripts/*.sql} (e.g. after a crash during import, or while
#'   iterating on the chunked-import logic itself). When \code{TRUE}, skips
#'   downloading/extracting entirely (Sections 2 and 3, and the
#'   \code{REF_POP_ATTRIBUTE} guard) and skips regenerating the CREATE TABLE
#'   scripts (Section 4.0) -- runs only: \code{pg_admin_connect()}, Section
#'   4.1 (\code{DROP SCHEMA fs_fiadb CASCADE} + re-run the \emph{existing}
#'   \code{TableScripts/*.sql} files as-is), and the combined, chunked
#'   import. Requires \code{FIADB_REFERENCE}, \code{CSV_DATA}, and
#'   \code{TableScripts} from a prior run to already be present and still
#'   valid (nothing about the schema/data changed since) -- \code{download}
#'   and \code{state_abbr} are ignored when this is \code{TRUE}.
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
#' \strong{REF_POP_ATTRIBUTE drift guard:} \code{REF_POP_ATTRIBUTE}'s
#' \code{SQL_QUERY}/\code{SQL_QUERY_SE} columns are hand-authored SQL query
#' templates that FIADB.diRect's \code{GB_est()}/\code{TREE_obs()}/
#' \code{PLOT_obs()} execute directly -- not just reference metadata. This
#' table has previously vanished from DataMart's public export entirely
#' (see \code{table_guide.csv}'s \code{REF_PERM} routing for it), so it's
#' permanently pinned to \code{REF_PERM/REF_POP_ATTRIBUTE.csv} rather than
#' sourced from each live download like other reference tables. Every run
#' still checks the freshly-downloaded copy (if DataMart has one) against
#' the pinned copy: if it has every \code{ATTRIBUTE_NBR} the pin has (with
#' non-blank SQL), plus any new ones also non-blank, and the same column
#' set, it's treated as a validated upgrade candidate. Interactively, you're
#' asked before the pin is touched; non-interactively, it's only logged/
#' warned/emailed -- never refreshed automatically. A dated backup is
#' always taken first. See \code{ref_perm_csv_perm_purpose} in project
#' memory for the full investigation.
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
                        root_dir = getwd(),
                        prompt = interactive(),
                        log_file = "buildFIADB.log",
                        notify_email = NULL,
                        reimport_only = FALSE) {

  if (length(state_abbr) != 1) {
    stop(
      "state_abbr must be a single state code or 'ENTIRE' -- multiple ",
      "states in one call are not yet supported (the DataMart download ",
      "URL only covers one state, or 'ENTIRE', per zip). Call buildFIADB() ",
      "once per state instead."
    )
  }

  # An unquoted CREATE DATABASE folds its name to lowercase, but the dbname
  # connection parameter is not folded -- so a mixed-case name here would
  # otherwise silently fail to connect even though the database exists.
  dbname <- tolower(dbname)

  old_wd <- getwd()
  on.exit(setwd(old_wd), add = TRUE)
  setwd(root_dir)

  old_timeout <- getOption("timeout")
  on.exit(options(timeout = old_timeout), add = TRUE)
  # 5 hour download timeout -- should be sufficient for an ENTIRE-US pull
  options(timeout = max(60 * 60 * 5, old_timeout))

  table_guide <- read.csv("table_guide.csv")

  # reimport_only skips straight to Section 4.1 + the chunked import, reusing
  # a prior normal run's extracted CSVs and generated scripts -- fail fast,
  # before even trying to connect to Postgres, if that prior output isn't
  # actually there (or isn't there anymore). Without this, a stale/missing
  # prior run surfaces as a confusing low-level "file not found" deep inside
  # Section 4.1 or the import loop instead of a clear, actionable message.
  if (reimport_only) {
    missing <- character(0)

    if (!dir.exists("FIADB_REFERENCE") ||
        length(list.files("FIADB_REFERENCE", pattern = "\\.csv$")) == 0) {
      missing <- c(missing, "FIADB_REFERENCE/ -- no .csv files found")
    }
    if (!dir.exists("CSV_DATA") ||
        length(list.files("CSV_DATA", pattern = "\\.csv$")) == 0) {
      missing <- c(missing, "CSV_DATA/ -- no .csv files found")
    }
    if (!dir.exists("TableScripts")) {
      missing <- c(missing, "TableScripts/ -- directory doesn't exist")
    } else {
      missing_scripts <- table_guide[!file.exists(file.path(table_guide$script_location, table_guide$oracle)), ]
      if (nrow(missing_scripts) > 0) {
        missing <- c(missing, paste0(
          "TableScripts/ -- ", nrow(missing_scripts), " script(s) referenced by table_guide.csv not ",
          "found (e.g. ", paste(head(missing_scripts$oracle, 3), collapse = ", "), ")"
        ))
      }
    }

    if (length(missing) > 0) {
      stop(
        "reimport_only = TRUE requires FIADB_REFERENCE/, CSV_DATA/, and TableScripts/ from a prior ",
        "normal run to already be present -- but:\n",
        paste0("  - ", missing, collapse = "\n"), "\n",
        "Run buildFIADB() normally at least once first (reimport_only = FALSE, the default), or fix ",
        "the gap(s) above, before retrying with reimport_only = TRUE. Note this does NOT check that ",
        "prior output still matches the current table_guide.csv/data_types.csv -- only that the ",
        "expected files exist."
      )
    }
  }

  # 1.0 confirm Postgres access ------------------------------------------------
  # Fail fast, before any downloading, if the one-time database/role setup
  # hasn't been done -- rather than discovering it after a multi-hour pull.
  postgres_con <- tryCatch(
    pg_admin_connect(dbname = dbname),
    error = function(e) e
  )
  if (inherits(postgres_con, "error")) {
    stop(
      "Can't connect to Postgres database '", dbname, "' as fiadb_admin.\n",
      "Postgres says: ", conditionMessage(postgres_con), "\n\n",
      "Most common fix -- the database doesn't exist yet; create it as the ",
      "Postgres superuser, owned by fiadb_admin:\n",
      "  sudo -u postgres psql -c \"CREATE DATABASE ", dbname, " OWNER fiadb_admin;\"\n\n",
      "If that doesn't fix it, see R/pg_admin_connect.R."
    )
  }
  on.exit(try(DBI::dbDisconnect(postgres_con), silent = TRUE), add = TRUE)

  # reimport_only skips Sections 2/3 (download/extract) and 4.0 (script
  # generation) entirely -- see @param reimport_only. Everything in this
  # block populates objects (sql_tables, type_guide, comp, type_to_run,
  # TableScripts/*.sql) that only Section 4.0/4.1 itself consumes; nothing
  # downstream in the combined 5.0/6.0 import needs them (it re-derives
  # data_guide fresh from Postgres's live schema instead).
  if (!reimport_only) {
  #
  # 2.0 download ref tables------------------------------------------------------
  ref_loc <- "https://apps.fs.usda.gov/fia/datamart/CSV/FIADB_REFERENCE.zip"

  dir.create("FIADB_REFERENCE", showWarnings = FALSE)
  file.remove(list.files("FIADB_REFERENCE", full.names = TRUE))

  if (download) download.file(url = ref_loc, destfile = "FIADB_REFERENCE.zip")
  #
  # 2.1 extract ref tables-------------------------------------------------------
  unzip("FIADB_REFERENCE.zip", exdir = "FIADB_REFERENCE")

  # See "REF_POP_ATTRIBUTE drift guard" above. Never allowed to break the
  # actual build -- a bug here should degrade to "left the permanent copy
  # alone", not to a failed rebuild.
  tryCatch(
    checkRefPopAttributeDrift(prompt = prompt, log_file = log_file, notify_email = notify_email),
    error = function(e) {
      logMsg(paste0("REF_POP_ATTRIBUTE drift guard itself errored (leaving REF_PERM untouched): ",
                     conditionMessage(e)), log_file)
    }
  )
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
  } # end if (!reimport_only) -- Sections 2, 3, 4.0
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
  # 5.0/6.0 force correct data types AND import into postgres, one table at a
  # time (chunked for large ones) ------------------------------------------
  # Was two separate full passes over every table (5.0 force-types + rewrite
  # CSV_DATA, then 6.0 re-read + import) -- merged into one pass per table
  # 2026-09-20, since nothing ever consumed 5.0's rewritten CSV; that was
  # pure double I/O and double memory churn. See processAndImportTable()'s
  # own comment above for the chunking rationale (this run OOM-killed twice
  # on TREE/TREE_GRM_ESTN at national scale before this was added).
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

  # Loaded via dbAppendTable() rather than a server-side `COPY table FROM
  # '<path>'`: the latter requires the connecting role to hold the
  # pg_read_server_files privilege (Postgres won't let a non-superuser have
  # the server read an arbitrary file path otherwise), which we deliberately
  # don't want to grant the least-privilege fiadb_admin role. dbAppendTable()
  # streams the data through the client connection instead (RPostgres
  # implements this via COPY ... FROM STDIN under the hood), so Postgres
  # never touches the filesystem itself and no extra privilege is needed.
  # Includes text/bytea (missing from this vector pre-2026-09-21 in both the
  # old updateCSV() and the old Section 6.0 loop this replaced) -- REF_PERM/
  # CSV_PERM tables like REF_POP_ATTRIBUTE (SQL_QUERY_SE is Postgres `text`)
  # are the only ones that hit this, and every run before tonight crashed on
  # TREE/TREE_GRM_ESTN before ever reaching row 29 in the import order, so
  # the gap was never actually exercised until now. Caught by the anyNA()
  # guard in processAndImportTable() rather than silently mis-typing data.
  import_trans <- c("integer64", "character", "character", "double", "double",
                    "double", "double", "POSIXct", "character", "character")
  names(import_trans) <- c("bigint", "character", "character varying", "double precision",
                           "integer", "numeric", "smallint", "timestamp without time zone",
                           "text", "bytea")

  chunk_target_bytes <- computeChunkTargetBytes()
  logMsg(paste0("Chunk target: ", round(chunk_target_bytes / 1e9, 2),
                 "GB raw CSV per chunk (based on detected total system memory)."),
         log_file)

  for (row in seq_len(nrow(table_guide))) {
    processAndImportTable(row, table_guide, data_guide, postgres_con,
                           import_trans, chunk_target_bytes, log_file)
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
