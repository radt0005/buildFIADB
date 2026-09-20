# README #

This repository is designed to allow a user to build a local copy of FIADB in PostgreSQL. Can be used for a single state or for the entire FIADB.

### How do I get set up? ###

Almost everything is run via R, through the `buildFIADB()` function in `R/buildFIADB.R`. (`R/buildFIADBUpdate.R` is an older, pre-`buildFIADB()` script kept only for reference -- don't start there.)

Assumes destination computer already has PostgreSQL installed, with two roles already set up by a Postgres admin (one-time, not done by this function):

* A `NOLOGIN` admin role (e.g. `fiadb_admin`) that owns the target database, and that your own Postgres role has been granted membership in (`GRANT fiadb_admin TO <you>;`).
* The target database itself, owned by that admin role. Since neither the admin role nor a regular per-user role has `CREATEDB` (by design -- see `R/pg_admin_connect.R`), creating a new database is a one-time step run as the Postgres superuser:

  ```bash
  sudo -u postgres psql -c "CREATE DATABASE <dbname> OWNER fiadb_admin;"
  ```

See `R/pg_admin_connect.R` for the full connection-resolution details (Unix-socket peer auth + `SET ROLE` on Linux/Mac, `FIADB_ADMIN_USER`/`FIADB_ADMIN_PASSWORD` env vars over TCP elsewhere, e.g. Windows).

Once that's done, from the repo root in R:

```r
source("R/buildFIADB.R")
buildFIADB(dbname = "fiadb", state_abbr = "DE", download = TRUE)
```

* `dbname` -- the target Postgres database (must already exist, see above). Lower-cased automatically (an unquoted `CREATE DATABASE` folds its name, but the connection itself doesn't, so a mixed-case name would otherwise silently fail to connect).
* `state_abbr` -- a single two-letter postal abbreviation, or `'ENTIRE'` for all states and territories. (A vector of multiple states is not supported -- call `buildFIADB()` once per state instead.)
* `download` -- `TRUE` to fetch fresh reference/data zips from the DataMart, `FALSE` to reuse zips already in `root_dir` (e.g. retrying after a failure without re-downloading -- note the file must be named exactly `FIADB_DATA.zip`/`FIADB_REFERENCE.zip` regardless of what DataMart itself called it).
* `root_dir` -- the buildFIADB repo root (contains `table_guide.csv`, `makeTableScripts/`, etc.); defaults to the current working directory.
* `prompt` -- whether to interactively confirm before refreshing the permanent `REF_PERM/REF_POP_ATTRIBUTE.csv` copy (see below). Defaults to `interactive()`; pass `prompt = FALSE` explicitly for an unattended/scripted run (e.g. a long `ENTIRE` build you don't want blocking on input) even from an interactive session.
* `log_file` -- path to append timestamped log messages to, in addition to the console. Defaults to `"buildFIADB.log"`; `NULL` disables file logging.
* `notify_email` -- an email address (or vector of addresses) to notify via the system `mail` command for loud warnings raised during the run. `NULL` (default) disables. Useful paired with `prompt = FALSE` for an unattended run. Best-effort -- depends on this machine's mail transport actually being configured to deliver; test with `echo "test" | mail -s "test" you@example.com` first if you're relying on it.

**`REF_POP_ATTRIBUTE` drift guard:** `REF_POP_ATTRIBUTE.SQL_QUERY`/`SQL_QUERY_SE` are hand-authored SQL templates that FIADB.diRect's `GB_est()`/`TREE_obs()`/`PLOT_obs()` execute directly, and DataMart's public export of this table has previously vanished entirely -- so it's permanently pinned to `REF_PERM/REF_POP_ATTRIBUTE.csv` rather than sourced fresh each run. Every run still checks the live download against the pin, and if it's a validated superset (same-or-more `ATTRIBUTE_NBR`s, none newly blank, same columns), offers to refresh the pin -- interactively with `prompt = TRUE`, or only logging/warning/emailing (never auto-applying) with `prompt = FALSE`. A dated backup is always taken first.

After downloading the reference and data files, the script:

* Extracts the tables from the SQLite into CSV files
* Creates the import scripts for each FIADB table (using the schema information found in 'makeTableScripts/Data/')
* Creates the tables in postgres
* Forces the correct types using data.table::fread (may not be neccessary and can be memory intensive with large or all states)
* Imports the CSV data into postgres

There are also generic SQL scripts for generating population estimates ('pop_scripts/'), making plot/tree datasets ('R/makeDatasetExamples.R'), and comparing estimates from the local installation of FIADB to EVALIDator estimates ('R/makeFIADBEstimates.R', 'makeEVALIDatorEstimates.R', and 'compareEstimates.R')

### Who do I talk to? ###

David Walker (walkedm@vt.edu)
