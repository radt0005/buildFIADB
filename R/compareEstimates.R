library(ggplot2)
library(data.table)

setwd("/mnt/Main/FIADB/buildfiadb/")

evalidator <- read.csv('evalidator/evalidator_estimates.csv')
fiadb <- read.csv('evalidator/testdb_estimates.csv')

attr <- unique(fiadb[,c('ATTRIBUTE_NBR', 'short_name')])
attr <- attr[order(attr$ATTRIBUTE_NBR),]

evalidator$source <- 'EVALIDator'
fiadb$source <- 'FIADB'
fiadb$ESTIMATE <- fiadb$ESTIMATED_VALUE
fiadb$ESTIMATED_VALUE <- NULL

comb <- as.data.table(rbind(evalidator, fiadb))

comb$short_name <- factor(comb$short_name,
                          levels= attr$short_name)

combW <- dcast(data= comb,
               ATTRIBUTE_NBR+FIAorRPA+STATECD+EVAL_GRP+short_name~source,
               value.var= 'ESTIMATE')

evals <- sort(unique(combW$EVAL_GRP))

ggplot(combW, aes(x= EVALIDator, y= FIADB, colour= factor(STATECD))) +
  geom_point() +
  geom_abline() +
  facet_wrap(~short_name, scales= 'free') +
  ggtitle('EVALIDator vs FIADB local estimates by estimate type',
          paste('for EVAL_GRPS:',
                paste(evals, collapse= ", ")))

combW$diff <- abs(round(combW$FIADB) - round(combW$EVALIDator))

mySummary <- function(x) {
  
  list(mean= mean(x),
       min= min(x),
       max= max(x))
  
}

diff_sum <- combW[,as.list(unlist(lapply(.SD, mySummary))),
                  by= c('ATTRIBUTE_NBR', 'short_name'),
                  .SDcols= c('diff')]

print(diff_sum)

