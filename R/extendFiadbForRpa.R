# extendFiadbForRpa.R -- optional add-on to buildFIADB(): extends a database
# buildFIADB() already built with the RPA_FDM modeling pipeline's
# materialized views and lookup tables, so it can be used for RPA-related
# modeling. Investigated and added 2026-09-21.
#
# This is deliberately NOT part of buildFIADB() itself -- it's a separate,
# optional step for the subset of users who need a database ready for RPA
# modeling, not everyone who just wants FIADB.
#
# Design: the orchestration code below lives here, in buildFIADB (durable,
# version-controlled, backed by your own remote) -- but it reads the actual
# SQL/CSV content it needs live from the RPA_FDM repo at run time, by path,
# rather than copying that content in. RPA_FDM's eval_grps.csv (one curated
# EVAL_GRP per state) needs periodic updates as new inventory cycles
# complete, and the view SQL itself may be revised over time; reading it
# live means this function always uses whatever's currently there, with no
# separate copy to remember to keep in sync. The tradeoff: this function
# depends on RPA_FDM being present at a known path (see rpa_fdm_path
# below) -- it does nothing to that repo itself (never writes to it), only
# reads a handful of files from it.
#
# What this replicates, and from where (see RPA_FDM's own directory):
#   - The 3 lookup tables (rpa_subregions, rpa_subregions_islands,
#     rpa_subregions_sunit): adapted from the create_*()/load_*() functions
#     at the bottom of RPA_FDM/01_setUp.R.
#   - 8 materialized views: adapted from
#     RPA_FDM/01_base_and_donors/R/01_createViews.R, which runs every
#     *.sql file in RPA_FDM/01_base_and_donors/SQL/views/ (condition,
#     condition_change, inventory, remeasured [from create_matched_eval.sql],
#     qmd, t1_tree, t2_tree, tree_cond), substituting a curated
#     one-EVAL_GRP-per-state list from
#     RPA_FDM/01_base_and_donors/info/eval_grps.csv into each view's
#     %eval_grps% placeholder.
#
# NOT replicated: the live fiadbnew database (RPA's own, built the same way
# a while ago) also has two more materialized views, t1_qmd and t2_qmd.
# Confirmed 2026-09-21 (via pg_matviews' own stored definition and a full
# RPA_FDM search) that neither is created by any tracked RPA_FDM script and
# neither is referenced anywhere downstream -- their QMD logic is already
# inlined as subqueries inside t1_tree/t2_tree's own definitions (aliased
# t1qmd/t2qmd, no underscore). They look like vestigial/ad hoc leftovers,
# not part of the current pipeline, so they're intentionally skipped here.
#
# Connection: uses this repo's own pg_admin_connect() (peer auth + SET ROLE
# fiadb_admin), not RPA_FDM's plain RPostgreSQL::dbConnect() with no role
# elevation -- a freshly buildFIADB()-built database's `public` schema only
# grants CREATE to its owning role (fiadb_admin), matching Postgres 15+'s
# tightened default. (RPA_FDM's original scripts worked against fiadbnew
# only because of how permissions happened to be arranged there historically.)

library(DBI)
library(RPostgres)

# Assumes this file is sourced from the repo root, same as buildFIADB.R
# itself and for the same reason (matches R/pg_admin_connect.R's own
# relative source path).
source("R/pg_admin_connect.R")

#' Add the RPA_FDM modeling pipeline's views/tables to a buildFIADB database
#'
#' Extends a database already built by \code{\link{buildFIADB}} with the
#' materialized views and lookup tables the RPA_FDM modeling pipeline
#' expects, reading the actual SQL/CSV content live from an existing
#' RPA_FDM checkout rather than a bundled copy (see file-level comment for
#' why). Safe to re-run: existing lookup tables are left alone (not
#' re-created), and the materialized views are dropped and recreated
#' (\code{DROP MATERIALIZED VIEW IF EXISTS ... CASCADE}, same as RPA_FDM's
#' own script) each time.
#'
#' @param dbname Character. The target database, already built by
#'   \code{buildFIADB()}. Default \code{"fiadb"}.
#' @param rpa_fdm_path Character. Path to an existing RPA_FDM checkout.
#'   Default is its current location on charcoal2.
#'
#' @details
#' Requires the target database to already have real FIADB data covering
#' the EVAL_GRPs listed in \code{RPA_FDM/01_base_and_donors/info/eval_grps.csv}
#' -- i.e. normally a full \code{state_abbr = "ENTIRE"} buildFIADB() run,
#' not a single-state test database.
#'
#' @return Invisibly, \code{TRUE} on success.
#'
#' @examples
#' \dontrun{
#'   extendFiadbForRpa(dbname = "fiadb")
#' }
#'
#' @export
extendFiadbForRpa <- function(dbname = "fiadb",
                               rpa_fdm_path = "/media/rstudio/RPA/RPA_FDM/") {

  if (!dir.exists(rpa_fdm_path)) {
    stop("rpa_fdm_path '", rpa_fdm_path, "' doesn't exist -- extendFiadbForRpa() ",
         "reads its SQL/CSV content live from an existing RPA_FDM checkout, ",
         "it doesn't bundle a copy. Pass the correct path if RPA_FDM lives ",
         "somewhere else.")
  }

  dbname <- tolower(dbname)

  con <- pg_admin_connect(dbname = dbname)
  on.exit(DBI::dbDisconnect(con), add = TRUE)

  message("Connected to '", dbname, "' as ",
          DBI::dbGetQuery(con, "SELECT current_user")[[1]])

  # --- 1. rpa_subregions / rpa_subregions_islands / rpa_subregions_sunit ---
  # Column names given explicitly (rather than trusting each CSV's own
  # header) to replicate RPA_FDM's original server-side `COPY ... CSV
  # HEADER` behavior, which maps columns by position, not name -- confirmed
  # 2026-09-21 that rpa_subregions_pc_pcw.csv's real header is
  # "sfips,unitcd,subregion", not "statecd,unitcd,subregion" as the
  # original CREATE TABLE declares, which the original silently papered
  # over via position. Uses dbAppendTable() (client-side) instead of
  # RPA_FDM's server-side COPY FROM '<path>', for the same least-privilege
  # reason buildFIADB.R does: fiadb_admin deliberately doesn't have (and
  # shouldn't need) the pg_read_server_files privilege server-side COPY
  # requires.
  rpa_tables <- list(
    list(
      name   = "rpa_subregions",
      create = "CREATE TABLE rpa_subregions
                 (statecd smallint, state_name varchar(20),
                  rpa_subregion varchar(20), rpa_region varchar(20));",
      csv    = file.path(rpa_fdm_path, "data/rpa_subregions.csv"),
      cols   = c("statecd", "state_name", "rpa_subregion", "rpa_region")
    ),
    list(
      name   = "rpa_subregions_islands",
      create = "CREATE TABLE rpa_subregions_islands
                 (statecd smallint, state_name varchar(50),
                  rpa_subregion varchar(20), rpa_region varchar(20));",
      csv    = file.path(rpa_fdm_path, "data/rpa_subregions_islands.csv"),
      cols   = c("statecd", "state_name", "rpa_subregion", "rpa_region")
    ),
    list(
      name   = "rpa_subregions_sunit",
      create = "CREATE TABLE rpa_subregions_sunit
                 (statecd smallint, unitcd smallint, subregion varchar(3));",
      csv    = file.path(rpa_fdm_path, "data/rpa_subregions_pc_pcw.csv"),
      cols   = c("statecd", "unitcd", "subregion")
    )
  )

  for (t in rpa_tables) {
    if (DBI::dbExistsTable(con, t$name)) {
      message(t$name, " already exists -- leaving it alone (drop it first for a clean rebuild)")
      next
    }
    message("creating and loading ", t$name)
    DBI::dbExecute(con, t$create)

    d <- read.csv(t$csv, stringsAsFactors = FALSE)
    names(d) <- t$cols  # positional, not name-matched -- see comment above
    DBI::dbAppendTable(con, t$name, d)
  }

  # --- 2. The 8 materialized views ------------------------------------------
  views_dir <- file.path(rpa_fdm_path, "01_base_and_donors/SQL/views")
  evals <- read.csv(file.path(rpa_fdm_path, "01_base_and_donors/info/eval_grps.csv"), as.is = TRUE)
  eval_grps <- paste(evals$eval_grp, collapse = ", ")  # partial-matches the CSV's "eval_grps" column, same as RPA_FDM's own script

  readQuery <- function(x) {
    q <- readChar(x, file.info(x)$size)
    gsub("%eval_grps%", eval_grps, q)
  }

  file_list <- list.files(views_dir, full.names = TRUE, pattern = "\\.sql$")
  view_list <- lapply(file_list, readQuery)

  # Idempotent re-run, same as RPA_FDM's own script.
  view_list <- gsub("DROP MATERIALIZED VIEW", "DROP MATERIALIZED VIEW IF EXISTS", view_list)

  executeQuery <- function(query) {
    tbl_name <- strsplit(query, "[[:space:]]")[[1]][6]
    message("creating view ", tbl_name)
    DBI::dbExecute(con, query)
  }

  invisible(lapply(view_list, executeQuery))

  message("Done -- verify with: SELECT matviewname FROM pg_matviews WHERE schemaname='public';")

  invisible(TRUE)
}
