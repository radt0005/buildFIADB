
getUniqueKey <- function(index, indexes) {
  
  dat <- indexes[indexes$INDEX_NAME == index,]
  
  paste0('alter table FS_FIADB.',
         dat$TABLE_NAME[1],
         ' add constraint ',
         dat$INDEX_NAME[1],
         ' unique (',
         paste(dat$COLUMN_NAME, collapse= ", "),
         ");")
  
}

makeTableScript <- function(table, data_type, trans) {
  
  # overall structure
  outline <- paste0("CREATE TABLE fs_fiadb.", tolower(table),
                    "\n(\n",
                    "%fields%",
                    "\n",
                    ");")
  
  # make the create table section
  dt <- data_type[data_type$TABLE_NAME == table,]
  
  # convert to postgres types
  dt$POSTGRES_TYPE <- trans[dt$DATA_TYPE]
  
  # update some numeric types
  dt[dt$DATA_TYPE == 'NUMBER' & !is.na(dt$DATA_PRECISION) & dt$DATA_SCALE < 1, 'POSTGRES_TYPE'] <- 'INTEGER'
  dt[dt$DATA_TYPE == 'NUMBER' & !is.na(dt$DATA_PRECISION) & dt$DATA_SCALE > 0, 'POSTGRES_TYPE'] <- 'DECIMAL'
  
  dt[dt$DATA_TYPE == 'NUMBER' & !is.na(dt$DATA_PRECISION) & dt$DATA_SCALE < 1 &
       dt$DATA_PRECISION > 10, 'POSTGRES_TYPE'] <- 'BIGINT'
  
  dt$p1 <- "("
  dt$n  <- ""
  dt$p2 <- ")"
  
  # format the data type
  dt[dt$POSTGRES_TYPE == 'DOUBLE PRECISION', c('p1', 'p2')] <- ""
  
  dt[dt$POSTGRES_TYPE == 'VARCHAR', c('n')] <-
    dt[dt$POSTGRES_TYPE == 'VARCHAR', 'DATA_LENGTH']
  
  dt[dt$POSTGRES_TYPE == 'TIMESTAMP', c('n')] <- "0"
  
  dt[dt$POSTGRES_TYPE == 'CHAR', c('n')] <-
    dt[dt$POSTGRES_TYPE == 'CHAR', c('DATA_LENGTH')]
  
  dt[dt$POSTGRES_TYPE == 'TEXT', c('p1', 'p2')] <- ""
  
  dt[dt$POSTGRES_TYPE == 'INTEGER', c('p1', 'p2')] <- ""
  dt[dt$POSTGRES_TYPE == 'BIGINT', c('p1', 'p2')] <- ""
  
  dt[dt$POSTGRES_TYPE == 'DECIMAL', c('n')] <-
    paste0(dt[dt$POSTGRES_TYPE == 'DECIMAL', c('DATA_PRECISION')],
           ",",
           dt[dt$POSTGRES_TYPE == 'DECIMAL', c('DATA_SCALE')])
  
  dt$type <- paste0(dt$POSTGRES_TYPE,
                    dt$p1,
                    dt$n,
                    dt$p2)
  
  # make big
  
  # add if nullable
  dt$type <- ifelse(dt$NULLABLE == 'N',
                    paste0(dt$type, " NOT NULL"),
                    dt$type)
  
  # add a comma to all but last entry
  dt$row <- 1:nrow(dt)
  dt$type <- ifelse(dt$row < nrow(dt),
                    paste0(dt$type, ","),
                    dt$type)
  
  # make the spacing look nice
  dt$col_cnt <- nchar(dt$COLUMN_NAME)
  dt$nspace <- max(dt$col_cnt) - dt$col_cnt + 1
  
  types <- paste0(tolower(dt$COLUMN_NAME),
                  vapply(dt$nspace,
                         function(x) paste0(rep(" ", x), collapse= ""),
                         character(1)),
                  dt$type)
  
  types <- paste(types, collapse= "\n")
  
  formatted <- gsub("%fields%", types, outline)
  
  return(formatted)
  
}

getIndexes <- function(index, indexes) {
  
  dat <- indexes[indexes$INDEX_NAME == index,]
  
  paste0("create index ",
         dat$INDEX_NAME[1],
         " on FS_FIADB.",
         dat$TABLE_NAME[1],
         " (",
         paste(dat$COLUMN_NAME, collapse= ", "),
         ");")
  
}

getPrimaryKey <- function(index, indexes) {
  
  dat <- indexes[indexes$INDEX_NAME == index,]
  
  paste0('alter table FS_FIADB.',
         dat$TABLE_NAME[1],
         ' add constraint ',
         dat$INDEX_NAME[1],
         ' primary key (',
         paste(dat$COLUMN_NAME, collapse= ", "),
         ");")
  
}

getForeignKey <- function(index, fk_index) {
  
  dat <- fk_index[fk_index$CONSTRAINT_NAME == index,]
  
  paste0('alter table FS_FIADB.',
         dat$TABLE_NAME[1],
         ' add constraint ',
         dat$CONSTRAINT_NAME[1],
         ' foreign key (',
         paste(dat$COLUMN_NAME, collapse= ", "),
         ') references FS_FIADB.',
         dat$R_TABLE_NAME[1],
         " (",
         paste(dat$FOREIGN_COL, collapse= ", "),
         ");")
  
}

makeFullScript <- function(table_name,
                           data_types,
                           index_info,
                           foreign_key_info,
                           trans_guide,
                           just_keys= FALSE) {
  
  # subset to the current table
  index_info <- index_info[index_info$TABLE_NAME == table_name, ]
  foreign_key_info <- foreign_key_info[foreign_key_info$TABLE_NAME == table_name,]
  
  # make the CREATE TABLE section
  create_table <- makeTableScript(table= table_name,
                                  data_type= data_types,
                                  trans= trans_guide)
  
  # make the indexes
  # these don't have a constraint type
  indexes <- index_info[is.na(index_info$CONSTRAINT_TYPE),]
  
  index_list <- unique(indexes$INDEX_NAME)
  create_indexes <- lapply(index_list, getIndexes, indexes= indexes)
  create_indexes <- unlist(create_indexes)
  
  # make the primary keys
  # CONSTRAINT_TYPE is 'P'
  primary <- index_info[index_info$CONSTRAINT_TYPE %in% 'P',]
  
  primary_list <- unique(primary$INDEX_NAME)
  create_pks <- lapply(primary_list, getPrimaryKey, indexes= primary)
  create_pks <- unlist(create_pks)
  
  # make the unique keys
  # CONSTRAINT_TYPE = 'U'
  unique_keys <- index_info[index_info$CONSTRAINT_TYPE %in% 'U',]
  
  unique_list <- unique(unique_keys$INDEX_NAME)
  create_unique <- lapply(unique_list, getUniqueKey, indexes= unique_keys)
  create_unique <- unlist(create_unique)
  
  # make the foreign keys
  fk_list <- unique(foreign_key_info$CONSTRAINT_NAME)
  
  create_fks <- lapply(fk_list, getForeignKey, fk_index= foreign_key_info)
  create_fks <- unlist(create_fks)
  
  # stitch it all together
  full_query <- paste(c(create_table,
                        create_indexes,
                        create_pks,
                        create_unique,
                        create_fks),
                      collapse= "\n")
  
  if (just_keys) {
    
    full_query <- paste(c(create_indexes,
                          create_pks,
                          create_unique,
                          create_fks),
                        collapse= "\n")
    
  }
  
  return(full_query)
  
}
