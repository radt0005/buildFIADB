# README #

This repository is designed to allow a user to build a local copy of FIADB in PostgreSQL. Can be used for a single state or for the entire FIADB.

### How do I get set up? ###

Almost everything is run via R. Assumes destination computer already has PostgreSQL installed. The creation of the database is set up to work on Linux. Other platforms will need an alternate method.

To start, open the script 'R/buildFIADBUpdate.R'. Section 1.1 will have a variable ('dbname') that the user needs to set. This should be the name of the postgres database where you want to put FIADB. If you're on Linux you can create a database in the R script. Otherwise, an external tool (pgAdmin, psql) should be used.

You can specify which state to download and build by setting the 'state_abbr' variable (in section 3.0) to the two-digit postal abbrevation (or 'ENTIRE' for all states and territories).

After downloading the reference and data files, the script:

* Extracts the tables from the SQLite into CSV files
* Creates the import scripts for each FIADB table (using the schema information found in 'makeTableScripts/Data/')
* Creates the tables in postgres
* Forces the correct types using data.table::fread (may not be neccessary and can be memory intensive with large or all states)
* Imports the CSV data into postgres

There are also generic SQL scripts for generating population estimates ('pop_scripts/'), making plot/tree datasets ('R/makeDatasetExamples.R'), and comparing estimates from the local installation of FIADB to EVALIDator estimates ('R/makeFIADBEstimates.R', 'makeEVALIDatorEstimates.R', and 'compareEstimates.R')

### Who do I talk to? ###

David Walker (walkedm@vt.edu)
