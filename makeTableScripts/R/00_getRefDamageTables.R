# get ref damage agent and ref damage agent group
library(DBI)

setwd("~/RData/buildFIADB/")

readQuery <- function(fn, evals) {
  
  readChar(fn, file.info(fn)$size)
  
}

if (exists('con')) dbDisconnect(con)
if (exists('con')) rm(con)

con <- dbConnect(odbc::odbc(), "fiadb01p", timeout = 10)

rda <- dbGetQuery(con, "SELECT * FROM fs_fiadb.ref_damage_agent")
rdag <- dbGetQuery(con, "SELECT * FROM fs_fiadb.ref_damage_agent_group")

write.csv(rda, "REF_PERM/REF_DAMAGE_AGENT.csv",
          row.names= FALSE,
          quote= TRUE,
          na= "")

write.csv(rdag, "REF_PERM/REF_DAMAGE_AGENT_GROUP.csv",
          row.names= FALSE,
          quote= TRUE,
          na= "")
