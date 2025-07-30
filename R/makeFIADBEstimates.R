library(RPostgreSQL)
library(data.table)

setwd("/mnt/Main/FIADB/buildfiadb/")

dbname= 'testdb'

if (!exists("con")) con <- dbConnect(dbDriver('PostgreSQL'), dbname= dbname)

# select most recent eval grp for one state from each region
eval_grps <- dbGetQuery(con,
                            "SELECT * FROM
                            (SELECT rrs.rscd, dm.*,
                            row_number() OVER (PARTITION BY rrs.rscd ORDER BY rrs.statecd) rank
                            FROM fs_fiadb.datamart_most_recent_inv dm
                            JOIN fs_fiadb.ref_research_station rrs ON (dm.statecd = rrs.statecd)) ranked
                            WHERE ranked.rank = 1
                            ORDER BY ranked.statecd;")

evals <- paste(eval_grps$eval_grps, collapse= ",")

attributes <- read.csv('files/attribute_info.csv')
attributes$short_name <- factor(attributes$short_name,
                                levels= attributes$short_name)
attributes$FIAorRPA <- ifelse(attributes$rpa_filter == 'Y',
                              'RPADEF',
                              'FIADEF')

rpa_filter <- readChar(con=              "sql/rpa_filter.sql",
                       nchars= file.info("sql/rpa_filter.sql")$size)

getQuery <- function(nbr, rpa) {
  
  query <- dbGetQuery(con,
                      paste0("SELECT sql_query FROM fs_fiadb.ref_pop_attribute
                             WHERE attribute_nbr = ", nbr))$sql_query
  
  query <- gsub("&FIADB_SCHEMA", "fs_fiadb", query)
  
  # use the rpa definition of forest land
  if (rpa == 'Y') query <- paste(c(query, rpa_filter), collapse= "\n")
  
  return(query)
  
}

list_of_queries <- Map(getQuery,
                       attributes$attribute_nbr,
                       attributes$rpa_filter)

formatQuery <- function(query, grps) {
  
  query <- gsub("PEG.EVAL_GRP = &EVAL_GRP",
                paste0("PEG.EVAL_GRP IN (", grps, ")"),
                query)
  
  # add in grouping
  query <- paste(c(query, "GROUP BY peg.statecd, peg.eval_grp"), collapse= "\n")
  
  query <- gsub("^SELECT", 
                "SELECT\npeg.statecd,\npeg.eval_grp,\n",
                query)
  
  return(query)
  
}

list_of_queries <- lapply(list_of_queries,
                          formatQuery,
                          grps= paste(eval_grps$eval_grps, collapse= ","))

query= list_of_queries[[1]]
makeEstimate <- function(query) {
  
  evalids <- trimws(strsplit(query, "PEG.EVAL_GRP IN")[[1]][2])
  evalids <- strsplit(evalids, "[[:space:]]")[[1]][1]
  evalids <- gsub("\\(|\\)", "", evalids)
  
  FIAorRPA <- ifelse(grepl('atree.actualht', query), 'RPADEF', 'FIADEF')
  
  nbr <- trimws(strsplit(query, "\\\n")[[1]][4])
  nbr <- trimws(strsplit(nbr, "[[:space:]]")[[1]][1])
  
  cat('querying database \'',
      dbname, 
      '\' for attribute number ',
      nbr,
      ' using evaluation groups:\n',
      evalids,
      '\n',
      'and the ', substr(FIAorRPA, 1, 3),
      ' definition of forest land\n',
      sep= "")
  
  ests <- dbGetQuery(con, query)
  names(ests) <- toupper(names(ests))
  
  ests$FIAorRPA <- FIAorRPA
  
  return(ests[,c('STATECD', 'EVAL_GRP', 'ATTRIBUTE_NBR', 'ESTIMATED_VALUE', 'FIAorRPA')])
  
}

ests <- lapply(list_of_queries, makeEstimate)

ests_df <- do.call(rbind, ests)

out <- merge(x= ests_df[,c('ESTIMATED_VALUE', 'STATECD', 'EVAL_GRP', 'ATTRIBUTE_NBR',
                           'FIAorRPA')],
             y= attributes[,c('attribute_nbr', 'short_name', 'FIAorRPA')],
             by.x= c('ATTRIBUTE_NBR', 'FIAorRPA'),
             by.y= c('attribute_nbr', 'FIAorRPA'))

ests_wide <- dcast(data= as.data.table(out),
                   STATECD+EVAL_GRP~short_name,
                   value.var= 'ESTIMATED_VALUE')

fn <- paste0(dbname, "_estimates.csv")

write.csv(out,
          file.path("evalidator", fn),
          row.names= FALSE)

