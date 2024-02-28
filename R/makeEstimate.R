# generic function for producing estimates from FIADB
# requires an attribute number (nbr) and an evaluation group (eval_grp)
# attribute numbers and descriptions can be found in REF_POP_ATTRIBUTE
# or using EVALIDator
# setting 'latest' to TRUE uses the most recent evaluation for each state

library(RPostgreSQL)
if (exists('con')) {dbDisconnect(con); rm(con)}
con <- dbConnect(drv= dbDriver('PostgreSQL'), dbname= 'testdb')

# this contains all possible attributes
# can use eval_typ and/or land_basis to filter down a little
# ex, 'EXPCURR' will return all attributes determined at the condition-level
all_attributes <- dbGetQuery(con,
                                 "SELECT attribute_nbr,
                                         attribute_descr,
                                         eval_typ,
                                         land_basis
                                  FROM fs_fiadb.ref_pop_attribute
                                  WHERE active = 'Y'
                                  ORDER BY attribute_nbr")

makeEstimate <- function(nbr, eval_grp= 012020, latest= FALSE) {
  
  query <- dbGetQuery(con,
                      paste0("SELECT sql_query
                             FROM fs_fiadb.ref_pop_attribute
                             WHERE attribute_nbr = ",
                             nbr))

  # this adds the proper group by and order by clauses
  update_clause <- c("\ngroup by PEG.STATECD,PEG.EVAL_GRP
                        order by PEG.STATECD,PEG.EVAL_GRP")
  
  # this adds the needed vars to select
  update_select <- c("SELECT\nPEG.STATECD,\nPEG.EVAL_GRP,\n")
  
  # not 100% sure every query ends the same but this should work
  query <- toupper(query$sql_query)
  
  # update the schema name
  query <- gsub("\\&FIADB_SCHEMA", "FS_FIADB", query)
  
  # update the eval_grp
  
  if (latest) {
    
    # grab most recent from datamart_recent
    eval_grp <- dbGetQuery(con, "SELECT eval_grps FROM fs_fiadb.datamart_most_recent_inv")
    eval_grp <- eval_grp$eval_grps
    
  }
  
  eval_grp <- paste0(" IN (", paste0(eval_grp, collapse= ", "), ")")
  query <- gsub("= \\&EVAL_GRP", eval_grp, query)
  
  # add in the proper group by
  query <- paste0(query, update_clause, collapse= " ")
  
  # update the select
  query <- gsub("^SELECT", update_select, query)
  
  dbGetQuery(con, query)
  
}

# example runs
# area of forest land in Virginia, 2020
makeEstimate(208, 412019)

# net volume of growing stock trees on timberland in Tennessee, 2019
makeEstimate(18, 472019)

# area of timberland in all latest inventories
makeEstimate(3, latest= TRUE)

