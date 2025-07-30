library(httr)
library(data.table)

setwd("/mnt/Main/FIADB/buildfiadb/")

# evalidator functions---------------------------------------------------------
# this function will help format retrieved estimates into a more readable data frame
format_estimate = function(respList) {
  
  return(as.data.frame(do.call(rbind, respList)))
  
}

# this function will accept a FIADB-API fullreport URL and return dataframes for the estimates as well as subtotals, and totals where available.
fiadb_api_GET = function(url){
  
  # make request
  resp <- httr::GET(url=url)
  # parse response from JSON to R list
  respObj <- httr::content(resp, "parsed", encoding = "ISO-8859-1")
  
  # create empty output list
  outputList = list()
  
  # add estimates data frame to output list
  if (! is.null(respObj$estimates)) {
    outputList$estimates <- format_estimate(respObj$estimates)
  } else  {
    print("Problem with URL or API. No estimate returned.")
    return(list())
  }
  
  
  #Use lapply to break apart subtotal list, then call sapply to format with names
  if (! is.null(respObj$subtotals))
    outputList$subtotals <- sapply(lapply(respObj$subtotals, "["),
                                   format_estimate, simplify = F, USE.NAMES = T)
  
  # totals data frame
  if (! is.null(respObj$totals))
    outputList$totals <- format_estimate(respObj$totals)
  
  
  # add estimate metadata, doesn't need to be reformatted
  if (! is.null(respObj$metadata)) outputList$metadata <- respObj$metadata
  
  return(outputList)
}

getEst <- function(nbr, evalids, FIAorRPA= 'FIADEF') {
  
  base_url <- "https://apps.fs.usda.gov/fiadb-api/fullreport?rselected=EVALID&snum=nbr&wc=evalid&outputFormat=NJSON&FIAorRPA=rpadef"
  
  evalids <- paste(evalids, collapse= ",")
  
  url <- gsub("nbr", nbr, base_url)
  url <- gsub("evalid", evalids, url)
  url <- gsub("rpadef", FIAorRPA, url)
  
  cat('querying EVALIDator for attribute number',
      nbr,
      'using evaluation groups:\n',
      evalids,
      '\n',
      'and the', substr(FIAorRPA, 1, 3),
      'definition of forest land\n')
  
  out <- fiadb_api_GET(url)
  
  estimates <- out$estimates[,2:1]
  
  # parse the group
  splitIt <- function(x, n) {
    
    strsplit(x, "\\ ")[[1]][n]
    
  }
  
  estimates$STATECD <- lapply(estimates$GRP1, splitIt, 1)
  estimates$EVAL_GRP <- lapply(estimates$GRP1, splitIt, 2)
  
  estimates[] <- lapply(estimates, unlist)
  
  # fix statecd
  estimates$STATECD <- as.numeric(gsub("\\`", "", estimates$STATECD))
  
  # add the attribute nbr and description
  estimates$ATTRIBUTE_NBR <- nbr
  estimates$ATTRIBUTE_DESC <- out$metadata$numEstDesc
  
  estimates$FIAorRPA <- out$metadata$FIAorRPA
  
  estimates$ATTRIBUTE_DESC <- lapply(estimates$ATTRIBUTE_DESC,
                                     function(x) {
                                       
                                       s <- strsplit(x, "[[:space:]]")[[1]]
                                       trimws(paste(s[2:length(s)], collapse= " "))
                                       
                                     })
  
  return(estimates)
  
}

#
# get some attributes to query
attributes <- read.csv('files/attribute_info.csv')
attributes$short_name <- factor(attributes$short_name,
                                levels= attributes$short_name)
attributes$FIAorRPA <- ifelse(attributes$rpa_filter == 'Y',
                              'RPADEF',
                              'FIADEF')

# use the same eval grps as the test database
eval_grps <- read.csv('evalidator/testdb_estimates.csv')

evalids <- sort(unique(eval_grps$EVAL_GRP))

ests <- Map(getEst,
    nbr= attributes$attribute_nbr,
    FIAorRPA= attributes$FIAorRPA,
    MoreArgs= list(evalids= evalids))

ests_df <- do.call(rbind, ests)

out <- merge(x= ests_df[,c('ESTIMATE', 'STATECD', 'EVAL_GRP', 'ATTRIBUTE_NBR',
                           'FIAorRPA')],
             y= attributes[,c('attribute_nbr', 'short_name', 'FIAorRPA')],
             by.x= c('ATTRIBUTE_NBR', 'FIAorRPA'),
             by.y= c('attribute_nbr', 'FIAorRPA'))

ests_wide <- dcast(data= as.data.table(out),
                  STATECD+EVAL_GRP~short_name,
                  value.var= 'ESTIMATE')

write.csv(out, "evalidator/evalidator_estimates.csv", row.names= FALSE)
