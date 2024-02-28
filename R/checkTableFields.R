tbl_list <- dbGetQuery(con,
                       "SELECT table_name FROM information_schema.tables
                        WHERE table_schema= 'fs_fiadb'
                        ORDER BY table_name")
tbl_list$table_name <- toupper(tbl_list$table_name)

write.csv(tbl_list, "files/fs_fiadb_table_list.csv", row.names= FALSE)

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


table_descriptions <- dbGetQuery(con,
                                 "select
                                 table_name,
                                 column_name,
                                 data_type from information_schema.columns")

table_descriptions$table_name <- toupper(table_descriptions$table_name)

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

table_descriptions <- table_descriptions[table_descriptions$table_name %in% toupper(tbl_list$table_name),]

write.csv(table_descriptions, "files/table_column_types.csv", row.names= FALSE)
