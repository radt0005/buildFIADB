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

setwd('/mnt/Main/FIADB/buildfiadb/')

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

download.file(url= ref_loc,
              destfile= 'FIADB_REFERENCE.zip')
#
# 2.1 extract ref tables-------------------------------------------------------
unzip('FIADB_REFERENCE.zip', exdir= 'FIADB_REFERENCE')
#
# 2.2 force correct data types-------------------------------------------------

# read in each file and write back out with the correct type
# using fread's colClasses
#
# 3.0 download data tables (entire or state)-----------------------------------
# use the state postal abbreviation or 'ENTIRE' for all states
# tested for VA and DE
state_abbr <- 'DE'

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
file.remove(list.files('CSV_DATA', full.names= TRUE))

file.copy(list.files("FIADB_REFERENCE/", full.names= TRUE), "CSV_DATA/", overwrite= TRUE)
file.copy(list.files("FIADB_DATA/", full.names= TRUE),
          "CSV_DATA/",
          overwrite= TRUE)

files_data <- list.files('CSV_DATA', pattern= ".csv")
files_perm <- list.files('CSV_PERM', pattern= ".csv")

files <- data.frame(file= c(files_data, files_perm))
files$table <- gsub(".csv", "", files$file)

oracle_info <- read.csv("../oracle_data_types.csv")

files[!files$table %in% oracle_info$TABLE_NAME,]

#
# 3.1.1 check variable names---------------------------------------------------
# this section checks the variable names in the current fiadb against
# what's in the new csvs
# the goal is to identify any variables that have been added/dropped
tbl_list <- read.csv("files/fs_fiadb_table_list.csv")
tbl_list$table_name <- toupper(tbl_list$table_name)

file_list <- data.frame(file= list.files("CSV_DATA",
                                         full.names= TRUE))

file_list$table <- tstrsplit(file_list$file, "\\/")[[2]]
file_list$table <- gsub(".csv", "", file_list$table)

tables_to_update <- intersect(tbl_list$table_name, file_list$table)

tbl= 'PLOTSNAP'
checkNames <- function(tbl) {
  
  cat(tbl, "\n")
  
  sql_fields <- toupper(dbListFields(con, c("fs_fiadb", tolower(tbl))))
  
  fn <- file_list[file_list$table == tbl,][1,]$file
  
  csv_fields <- toupper(names(fread(fn, nrow= 1)))
  
  diff1 <- data.frame(Field= setdiff(csv_fields, sql_fields))
  diff2 <- data.frame(Field= setdiff(sql_fields, csv_fields))

  if (nrow(diff1) < 1 & nrow(diff2) < 1) return(NULL)
  
  if (nrow(diff1) >= 1) diff1$Source <- 'CSV'
  if (nrow(diff2) >= 1) diff2$Source <- 'SQL'
  
  diff <- rbind(diff1, diff2)
  
  diff$Table <- tbl
  
  return(diff)
  
}

var_check <- lapply(tables_to_update, checkNames)
var_check <- do.call(rbind, var_check)
var_check
#
# try modifying the sql scripts------------------------------------------------
tbls_to_fix <- unique(var_check[var_check$Source == 'SQL', ]$Table)
tbl= tbls_to_fix[2]
modifyScript <- function(tbl) {
  
  # read the query in
  fn <- file.path("TableScripts", paste0("Create", tbl, ".sql"))
  query <- readChar(fn, file.info(fn)$size)
  
  # fields to drop
  fields_to_drop <- var_check[var_check$Source == 'SQL' &
                              var_check$Table == tbl,]
  
  # drop the comments
  query <- strsplit(query, "\\;")[[1]][1]
  
  qS <- strsplit(query, "\\n")[[1]]
  
  for (field in fields_to_drop$Field) {
    
    qS <- qS[!grepl(tolower(field), qS)]
    
  }
  
  query_out <- paste0(qS, "\n")
  query_out <- paste(query_out, collapse= "")
  
  return(query_out)
  
}

updated <- modifyScript('COND')

cat(updated)

# 3.2 force correct data types-------------------------------------------------
data_guide <- read.csv("files/table_column_types.csv")

data_guide <- data_guide[!(data_guide$table_name %in% c('BOUNDARY',
                                                        'DATAMART_TABLES',
                                                        'FIA_REPORTING_TOOLS',
                                                        'EVALIDATOR_LOG')),]

table_list <- sort(unique(data_guide$table_name))

tbl= 'LICHEN_SPECIES_SUMMARY'
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

lapply(table_list, updateCSV)

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

