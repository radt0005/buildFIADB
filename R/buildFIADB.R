# making fiadb on a postgres database

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
# 2.2 force correct data types
# 3.0 download data tables (entire or state)
# 3.1 extract data tables to csv
# 3.2 force correct data types
# 4.0 copy all ref and data tables to target directory
# 4.1 upload csv to database

setwd('/mnt/Main/FIADB/testdb/')

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
# ref_loc <- "https://apps.fs.usda.gov/fia/datamart/CSV/FIADB_REFERENCE.zip"

# dir.create('FIADB_REFERENCE')

# file.remove(list.files('FIADB_REFERENCE', full.names= TRUE))

# download.file(url= ref_loc,
#               destfile= 'FIADB_REFERENCE.zip')
#
# 2.1 extract ref tables-------------------------------------------------------
# unzip('FIADB_REFERENCE.zip', exdir= 'FIADB_REFERENCE')
#
# 2.2 force correct data types-------------------------------------------------

# read in each file and write back out with the correct type
# using fread's colClasses
#
# 3.0 download data tables (entire or state)-----------------------------------
# use the state postal abbreviation or 'ENTIRE' for all states
# tested for VA and DE
state_abbr <- 'VA'

dir.create('FIADB_DATA')

file.remove(list.files('FIADB_DATA/', full.names= TRUE))

data_loc <- "https://apps.fs.usda.gov/fia/datamart/Databases/SQLite_FIADB_abbr.zip"

data_loc <- gsub('abbr', state_abbr, data_loc)

download.file(url= data_loc, destfile= 'FIADB_DATA.zip')
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

getTable <- function(x) {
  
  cat(x, "\n")
  
  fwrite(dbReadTable(x, conn= sqlite_con),
         file= file.path('FIADB_DATA/', paste0(x, ".csv")),
         quote= TRUE,
         na= "")
  
}

x <- lapply(tbl_list, getTable)

dbDisconnect(sqlite_con); rm(sqlite_con)

dir.create('CSV_DATA')

# file.copy(list.files("FIADB_REFERENCE/", full.names= TRUE), "CSV_DATA/")
file.copy(list.files("FIADB_DATA/", full.names= TRUE),
          "CSV_DATA/",
          overwrite= TRUE)
#
# loading to postgres----------------------------------------------------------
con <- dbConnect(drv= dbDriver("PostgreSQL"),
                 dbname= dbname)

# read create table batch file
table_scripts <- read.table("Scripts/table_scripts.dat")
table_script_names <- table_scripts$V1

# load and call the create table scripts sql funs
for (i in 1:nrow(table_scripts)) {
  
  fileName <- file.path("TableScripts", table_script_names[i])
  
  script <- readChar(fileName, file.info(fileName)$size)
  
  dbExecute(con, script)
  
}

load_ref_tables <- read.table("Scripts/load_reference_table.dat")

load_ref_tables$V1 <- gsub("your_path_here",
                           path.expand(getwd()),
                           load_ref_tables$V1)

for (i in 1:nrow(load_ref_tables)) {
  
  command <- load_ref_tables$V1[i]
  
  file_name <- strsplit(command, "\\'")[[1]][2]
  
  if (!file.exists(file_name) & i != 7) stop("file not found")
  
  table_name <- strsplit(command, "[[:space:]]")[[1]][2]
  table_name <- toupper(gsub("fs_fiadb.", "", table_name))
  
  print(paste0("loading table ", table_name))
  
  dbExecute(con, command)
  
}

load_data_tables <- read.table("Scripts/load_data_tables.dat")

load_data_tables$V1 <- gsub("your_path_here",
                            path.expand(getwd()),
                            load_data_tables$V1)

for (i in 1:nrow(load_data_tables)) {
  
  command <- load_data_tables$V1[i]
  
  file_name <- strsplit(command, "\\'")[[1]][2]
  
  # no plotsnap in the de file I'm testing with
  if (grepl('PLOTSNAP', file_name)) next
  
  if (!file.exists(file_name)) stop("file not found")
  
  table_name <- strsplit(command, "[[:space:]]")[[1]][2]
  table_name <- toupper(gsub("fs_fiadb.", "", table_name))
  
  print(paste0("loading table ", table_name))
  
  dbExecute(con, command)
  
}

