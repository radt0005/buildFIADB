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

* `dbname` -- the target Postgres database (must already exist, see above).
* `state_abbr` -- a single two-letter postal abbreviation, or `'ENTIRE'` for all states and territories. (A vector of multiple states is not supported -- call `buildFIADB()` once per state instead.)
* `download` -- `TRUE` to fetch fresh reference/data zips from the DataMart, `FALSE` to reuse zips already in `root_dir` (e.g. retrying after a failure without re-downloading).
* `root_dir` -- the buildFIADB repo root (contains `table_guide.csv`, `makeTableScripts/`, etc.); defaults to the current working directory.

After downloading the reference and data files, the script:

* Extracts the tables from the SQLite into CSV files
* Creates the import scripts for each FIADB table (using the schema information found in 'makeTableScripts/Data/')
* Creates the tables in postgres
* Forces the correct types using data.table::fread (may not be neccessary and can be memory intensive with large or all states)
* Imports the CSV data into postgres

There are also generic SQL scripts for generating population estimates ('pop_scripts/'), making plot/tree datasets ('R/makeDatasetExamples.R'), and comparing estimates from the local installation of FIADB to EVALIDator estimates ('R/makeFIADBEstimates.R', 'makeEVALIDatorEstimates.R', and 'compareEstimates.R')

### Who do I talk to? ###

David Walker (walkedm@vt.edu)
