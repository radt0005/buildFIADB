library(data.table)
library(DBI)

setwd("~/RData/buildFIADB/")

readQuery <- function(fn, evals) {
  
  readChar(fn, file.info(fn)$size)

}

if (exists('con')) dbDisconnect(con)
if (exists('con')) rm(con)

con <- dbConnect(odbc::odbc(), "fiadb01p", timeout = 10)

data_types <- dbGetQuery(con, readQuery("SQL/data_types.sql"))
foreign_keys <- dbGetQuery(con, readQuery("SQL/foreign_keys.sql"))
indexes <- dbGetQuery(con, readQuery("SQL/indexes_and_keys.sql"))

write.csv(data_types, "Data/data_types.csv", row.names= FALSE)
write.csv(indexes, "Data/index_info.csv", row.names= FALSE)
write.csv(foreign_keys, "Data/foreign_keys.csv", row.names= FALSE)
