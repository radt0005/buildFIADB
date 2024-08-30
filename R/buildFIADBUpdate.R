# making fiadb on a postgres database

# T/F flag for if you want to download the reference/data files
data_downloaded <- TRUE

# download timeout limit set for 5 hours
# should be sufficient for entire
options(timeout = max(60*60*5, getOption("timeout")))

library(RSQLite)
library(data.table)
library(RPostgreSQL)

# 1.0 install postgres
# 1.1 make a database
# 2.0 download ref tables
# 2.1 extract ref tables to csv
# 3.0 download data tables (entire or state)
# 3.1 extract data tables to csv
# 4.0 create the import scripts
# 4.1 create postgres tables
# 5.0 force correct data types
# 6.0 import the data into postgres

setwd('/mnt/Main/FIADB/buildfiadb/')

table_guide <- read.csv("table_guide.csv")

# 1.1 - make a database--------------------------------------------------------
dbname <- 'testdb'

# the -k flag requires a password with every sudo call
# the -S flag to accept the pw from standard input
# if you add input arg to the system call
# you can run sudo commands with a password

cmd <- paste0('sudo -kS su - postgres -c "createdb ', dbname, '"')
if (FALSE) {
  
  # only run this once
  # system(cmd,input=readline("Enter your password: "))
  
}

#
# 2.0 download ref tables------------------------------------------------------
ref_loc <- "https://apps.fs.usda.gov/fia/datamart/CSV/FIADB_REFERENCE.zip"

dir.create('FIADB_REFERENCE')

file.remove(list.files('FIADB_REFERENCE', full.names= TRUE))

if (!data_downloaded) download.file(url= ref_loc, destfile= 'FIADB_REFERENCE.zip')
#
# 2.1 extract ref tables-------------------------------------------------------
unzip('FIADB_REFERENCE.zip', exdir= 'FIADB_REFERENCE')
#
# 3.0 download data tables (entire or state)-----------------------------------
# use the state postal abbreviation or 'ENTIRE' for all states
# tested for VA and DE
state_abbr <- 'ENTIRE'

dir.create('FIADB_DATA')

file.remove(list.files('FIADB_DATA/', full.names= TRUE))

data_loc <- "https://apps.fs.usda.gov/fia/datamart/Databases/SQLite_FIADB_abbr.zip"

data_loc <- gsub('abbr', state_abbr, data_loc)

if (!data_downloaded) download.file(url= data_loc, destfile= 'FIADB_DATA.zip')
#
# 3.1 extract data tables------------------------------------------------------
unzip('FIADB_DATA.zip', exdir= 'FIADB_DATA')

# extract everything from the sqlite as csv
file <- list.files("FIADB_DATA/",
                   pattern= '.db$',
                   full.names= TRUE)

sqlite_con <- dbConnect(RSQLite::SQLite(),
                        file)

tbl_list <- dbListTables(sqlite_con)

# only extract those that will be uploaded to the db
tbl_list <- tbl_list[tbl_list %in% table_guide$table]

getTable <- function(x, noread= FALSE) {
  
  # this section is if you just want the tables and field names
  if (noread) {
    
    dat <- dbGetQuery(sqlite_con, paste0("SELECT * FROM ", x,
                                         " LIMIT 0"))
    
    tbl_info <- data.frame(TABLE_NAME= x,
                           COLUMN_NAME= names(dat))
  
    return(tbl_info)
      
  }
  
  cat(x, "\n")
  
  nt <- dbGetQuery(sqlite_con, paste0("SELECT count(*) cnt from ", x))$cnt
  nu <- dbGetQuery(sqlite_con,
                   paste0("SELECT count(*) cnt FROM (SELECT distinct * from ", x, ") cnt"))$cnt
  
  dat <- dbReadTable(x, conn= sqlite_con)
  
  if (nu < nt) {
    
    cat('detected non-unique rows in table',
        x,
        "\n")
    
    dat <- unique(dat)
    
  }
  
  tbl_info <- data.frame(TABLE_NAME= x,
                         COLUMN_NAME= names(dat))
  
  fwrite(dat,
         file= file.path('FIADB_DATA/', paste0(x, ".csv")),
         quote= TRUE,
         na= "")
  
  return(tbl_info)
  
}

# sql_tables <- lapply(tbl_list, getTable, TRUE)
# sql_tables <- do.call(rbind, sql_tables)
# sql_tables$in_sqlite <- 'Y'

sql_tables <- lapply(tbl_list, getTable)
sql_tables <- do.call(rbind, sql_tables)
sql_tables$in_sqlite <- 'Y'

dbDisconnect(sqlite_con); rm(sqlite_con)

dir.create('CSV_DATA')
file.remove(list.files('CSV_DATA', full.names= TRUE))

file.copy(list.files("FIADB_DATA/", full.names= TRUE, pattern= '.csv'),
          "CSV_DATA/",
          overwrite= TRUE)
file.copy(list.files("FIADB_REFERENCE/", full.names= TRUE, pattern= '.csv'), "CSV_DATA/", overwrite= TRUE)
#
# 4.0 create the import scripts------------------------------------------------
source("makeTableScripts/R/formattingFunctions.R")

# data type, index/key/constraint guides
type_guide <- read.csv("makeTableScripts/Data/data_types.csv")
type_guide$in_oracle <- 'Y'
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
type_guide[type_guide$COLUMN_NAME == 'SUBP', c('DATA_PRECISION', 'DATA_SCALE')] <- data.frame(1,0)
# plot is always an integer
type_guide[type_guide$COLUMN_NAME == 'PLOT', c('DATA_PRECISION', 'DATA_SCALE')] <- data.frame(1,0)

# compare what's in the sqlite to what is exported from Oracle
comp <- merge(x= type_guide,
              y= sql_tables,
              by= c('TABLE_NAME', 'COLUMN_NAME'),
              all= TRUE)

comp <- merge(x= comp,
              y= table_guide,
              by.x= "TABLE_NAME",
              by.y= "table",
              all.x= TRUE)

# see if the sqlite files have any columns not in oracle
tables_in_sqlite <- unique(comp[is.na(comp$OWNER),]$TABLE_NAME)
tables_in_oracle <- unique(type_guide$TABLE_NAME)

if (any(tables_in_sqlite %in% tables_in_oracle)) {
  
  stop('field(s) in SQlite not in Oracle guide')
  
  print(comp[is.na(comp$OWNER) & (comp$TABLE_NAME %in% tables_in_oracle),])
  
}

# these are entries that are in oracle but not in sqlite
not_in_sqlite <- comp[is.na(comp$in_sqlite),]

# subset to what is used and create the import scripts
type_to_run <- comp[(!is.na(comp$in_sqlite) &
                      !is.na(comp$in_oracle)) |
                      comp$csv_location %in% c('REF_PERM',
                                               'CSV_PERM'),]

# re-order
type_to_run <- type_to_run[order(type_to_run$TABLE_NAME,
                                 type_to_run$COLUMN_ID),]

# make sure the index, primary, unique and foreign keys are still in the sqlite
upi_keys <- index_guide[,c('TABLE_NAME', 'COLUMN_NAME')]
upi_keys$source <- 'Index_Primary_Unique'

f_keys <- fk_guide[,c('TABLE_NAME', 'COLUMN_NAME')]
f_keys$source <- 'Foreign_Current'

r_keys <- fk_guide[,c('R_TABLE_NAME', 'FOREIGN_COL')]
names(r_keys) <- c('TABLE_NAME', 'COLUMN_NAME')
r_keys$source <- 'Foreign_Reference'  

keys <- rbind(upi_keys, f_keys, r_keys)

no_keys <- merge(x= keys,
      y= not_in_sqlite)

if (any(no_keys$csv_location %in% c('CSV_DATA'))) {
  
  stop("missing columns to create keys")
  print(no_keys[no_keys$csv_location %in% c('CSV_DATA'),
                c('TABLE_NAME', 'COLUMN_NAME', 'source')])
  
}

# make all the create table scripts
existing_table_scripts <- list.files("TableScripts/")

# scripts that will not be recreated
no_refresh <- existing_table_scripts[!existing_table_scripts %in% table_guide$oracle]

file.remove(list.files("TableScripts", full.names= TRUE))

# example
q <- makeFullScript(table_name= 'POP_STRATUM',
                    data_types= type_to_run,
                    index_info= index_guide,
                    foreign_key_info= fk_guide,
                    trans_guide= trans); # cat(q)

table_list <- unique(type_to_run$TABLE_NAME)

table_scripts <- lapply(table_list,
                        makeFullScript,
                        data_types= type_to_run,
                        index_info= index_guide,
                        foreign_key_info= fk_guide,
                        trans_guide= trans)

names(table_scripts) <- table_list

# write out each table import script
for (i in 1:length(table_scripts)) {
  
  info <- table_scripts[i]
  
  fn <- paste0('Create', names(info), ".sql")
  
  sink(file= file.path("TableScripts/", fn))
  cat(info[[1]])
  sink()
  
}
#
# 4.1 create postgres tables---------------------------------------------------
# connect to the postgres database
postgres_con <- dbConnect(drv= dbDriver("PostgreSQL"),
                          dbname= dbname)

# run each import script
for (row in 1:nrow(table_guide)) {
  
  file_name <- file.path(table_guide$script_location[row],
                         table_guide$oracle[row])
  
  if (!file.exists(file_name)) {
    
    stop(paste0("script ", table_guide$oracle[row], " not found"))
    
  }
  query <- readChar(file_name, file.info(file_name)$size)
  
  cat("running script", table_guide$oracle[row], "\n")
  dbExecute(postgres_con, query)
  
}
#
# 5.0 force correct data types-------------------------------------------------
# the data types from sqlite don't always match what postgres needs
# so, grab all the data types from postgres, then use
# data.table::fread to force the correct types

table_descriptions <- dbGetQuery(postgres_con,
                                 "select
                                 table_name,
                                 column_name,
                                 data_type from information_schema.columns")

table_descriptions$table_name <- toupper(table_descriptions$table_name)

# approximation of R to postgres data types
trans <- c("integer64",
           "character",
           "character",
           "double",
           "double",
           "double",
           "double",
           "IDate",
           "character",
           "character")

names(trans) <- c("bigint",
                  "character",
                  "character varying",
                  "double precision",
                  "integer",
                  "numeric",
                  "smallint",
                  "timestamp without time zone",
                  "text",
                  "bytea")

table_descriptions$r_type <- as.vector(trans[table_descriptions$data_type])

data_guide <- table_descriptions[table_descriptions$table_name %in% table_guide$table,]

table_list <- sort(unique(data_guide$table_name))

has_csv <- table_guide[!is.na(table_guide$csv_location), ]$table

table_list <- table_list[table_list %in% has_csv]

# this function reads in each data files, forces the correct data type
# then writes back to csv
# somewhat memory intensive
updateCSV <- function(tbl) {
  
  cat(tbl, "\n")
  
  # table variables and their types
  sql_recs <- data_guide[data_guide$table_name == tbl,]
  
  trans <- c("integer64",
             "character",
             "character",
             "double",
             "double",
             "double",
             "double",
             "IDate")
  
  names(trans) <- c("bigint",
                    "character",
                    "character varying",
                    "double precision",
                    "integer",
                    "numeric",
                    "smallint",
                    "timestamp without time zone")
  
  var_types <- as.vector(trans[sql_recs$data_type])
  names(var_types) <- toupper(sql_recs$column_name)
  
  # read, update and write the files
  file <- file.path("CSV_DATA", paste0(tbl, ".csv"))
  
  if (!file.exists(file)) return(NULL)
  
  d <- fread(file= file,
             data.table= FALSE,
             colClasses= var_types)
  
  # file currently has duplicate rows
  if (tbl == 'LICHEN_SPECIES_SUMMARY') {
    
    d <- d[!duplicated(d$CN),]
    
  }
  
  if (tbl == 'REF_HABTYP_DESCRIPTION') {
    
    d[is.na(d$HABTYPCD), 'HABTYPCD'] <- 'NA'
    
  }
  
  if (tbl == 'REF_LICHEN_SPP_COMMENTS') {
    
    d$YEAREND <- as.integer(d$YEAREND)
    d$YEARSTART <- as.integer(d$YEARSTART)
    
  }
  
  if (any(names(d) == 'modified_date')) {
    
    d$modified_date <- as.IDate("2004-03-10 12:05:53 UTC")
    
  }
  
  fwrite(d,
         file,
         quote = TRUE,
         na= "")
  
  return(NULL)
  
}

x <- lapply(table_list, updateCSV)
#
# 6.0 import the data into postgres--------------------------------------------
# path to this repo/where the data files live
# 'table_guide.csv' has the csv directory listed for each file
# csv_data, csv_perm, ref_perm
path <- getwd()

for (row in 1:nrow(table_guide)) {
  
  if (is.na(table_guide$file[row])) next
  
  file_name <- file.path(table_guide$csv_location[row],
                         table_guide$file[row])
  
  if (!file.exists(file_name)) {
    
    stop(paste0("file ", table_guide$file[row], " not found"))
    
  }
  
  base_command <- paste0("COPY fs_fiadb.",
                         "&table",
                         " FROM '",
                         "&path/",
                         "&csv_location/",
                         "&file",
                         "' DELIMITER ',' CSV HEADER;")
  
  # substitute in the table name, path, file
  command <- base_command
  command <- gsub("&table", tolower(table_guide$table[row]), command)
  command <- gsub("&path", path, command)
  command <- gsub("&csv_location", table_guide$csv_location[row], command)
  command <- gsub("&file", table_guide$file[row], command)
  
  cat("running import for", table_guide$table[row], "\n")
  dbExecute(postgres_con, command)
  
}
