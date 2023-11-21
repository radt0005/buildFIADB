library(RPostgreSQL)
library(data.table)

# example scripts for making plot/cond/tree level datasets

setwd("/mnt/Main/FIADB/buildfiadb/")

if (exists('con')) dbDisconnect(con)
if (exists('con')) rm(con)

con <- dbConnect(drv= dbDriver('PostgreSQL'), dbname= 'fiadb2')

sql_list <- list.files("sql/")

readQuery <- function(fn) {
  
  readChar(fn, file.info(fn)$size)
  
}

eval_grps <- c("102021", "062019")
evals <- paste0(eval_grps, collapse= ", ")

# condition (area, etc.)-------------------------------------------------------
fn= 'sql/cond.sql'
query <- readQuery(fn)

query <- gsub("&EVAL_GRP", evals, query)

dat <- dbGetQuery(con, query)

dat$area <- dat$expns * dat$adj_factor * dat$condprop_unadj

# total forest area
aggregate(area ~ eval_grp, dat, sum)
#
# tree (volume, biomass, basal area, etc.)-------------------------------------
fn= 'sql/tree.sql'
query <- readQuery(fn)

query <- gsub("&EVAL_GRP", evals, query)

dat <- dbGetQuery(con, query)

dat$ntrees <- dat$expns * dat$adj_factor * dat$tpa_unadj

# number of live trees
aggregate(ntrees ~ eval_grp, dat, sum)
#
# condition change (areas at two time periods)---------------------------------
fn= 'sql/ccm.sql'
query <- readQuery(fn)

query <- gsub("&EVAL_GRP", evals, query)

dat <- dbGetQuery(con, query)

dat$area <- dat$expns * dat$adj_factor * dat$prop_chng

# area of forest land at both measurements
aggregate(area ~ eval_grp, dat, sum)
#
# tree aggregated to condition (condition-level volume per acre, etc.)---------
fn= 'sql/tree_cond.sql'
query <- readQuery(fn)

query <- gsub("&EVAL_GRP", evals, query)

dat <- dbGetQuery(con, query)

# adjustment factors are determined by the plot size (micro/sub/macro)
# and trees are measured on plots determined by their diameter
dat$live_micr_n <- dat$expns * dat$adj_factor_micr * dat$live_micr_n
dat$live_subp_n <- dat$expns * dat$adj_factor_subp * dat$live_subp_n
dat$live_macr_n <- dat$expns * dat$adj_factor_macr * dat$live_macr_n
dat$live_n <- dat$live_micr_n + dat$live_subp_n + dat$live_macr_n

dat$area <- dat$expns *
            ifelse(dat$prop_basis == 'MACR',
                   dat$adj_factor_macr,
                   dat$adj_factor_subp) *
            dat$condprop_unadj

# number of live trees
aggregate(live_n ~ eval_grp, dat, sum)

# area of forest land
aggregate(area ~ eval_grp, dat, sum)
#
# tree aggregated size by condition--------------------------------------------
fn= 'sql/tree_cond_long.sql'
query <- readQuery(fn)

query <- gsub("&EVAL_GRP", evals, query)

# similar to above format but I find it cleaner to work with (long vs wide)
# also easier to add more aggregated tree variables

dat <- dbGetQuery(con, query)
dat <- as.data.table(dat)

dat$live_n <- dat$expns * dat$adj_factor_tree * dat$tree_n

# number of live trees
aggregate(live_n ~ eval_grp, dat, sum)

# can still calculate area just need to account for multiple records per condition
dat <- as.data.table(dat)

dat[,`:=`(N= .N), by= c('plt_cn', 'condid')]

dat$area <- dat$expns *
  ifelse(dat$prop_basis == 'MACR',
         dat$adj_factor_macr,
         dat$adj_factor_subp) *
  dat$condprop_unadj / dat$N

# area of forest land
aggregate(area ~ eval_grp, dat, sum)
