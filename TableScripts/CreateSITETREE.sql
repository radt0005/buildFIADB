CREATE TABLE fs_fiadb.sitetree
(
cn                             VARCHAR(34) NOT NULL,
plt_cn                         VARCHAR(34) NOT NULL,
prev_sit_cn                    VARCHAR(34),
invyr                          INTEGER NOT NULL,
statecd                        INTEGER NOT NULL,
unitcd                         INTEGER NOT NULL,
countycd                       INTEGER NOT NULL,
plot                           INTEGER NOT NULL,
condid                         INTEGER NOT NULL,
tree                           INTEGER NOT NULL,
spcd                           DOUBLE PRECISION,
dia                            DECIMAL(5,2),
ht                             INTEGER,
agedia                         INTEGER,
spgrpcd                        INTEGER,
sitree                         INTEGER,
sibase                         INTEGER,
subp                           INTEGER,
method                         INTEGER NOT NULL,
sitree_est                     INTEGER,
validcd                        INTEGER,
created_date                   TIMESTAMP(0),
modified_date                  TIMESTAMP(0),
cycle                          INTEGER,
subcycle                       INTEGER,
agechkcd_rmrs                  INTEGER,
age_determination_method_pnwrs INTEGER,
cclcd_rmrs                     INTEGER,
damage_agent_cd1_rmrs          INTEGER,
damage_agent_cd2_rmrs          INTEGER,
damage_agent_cd3_rmrs          INTEGER,
sibase_age_pnwrs               INTEGER,
sitetrcd_rmrs                  INTEGER,
site_age_tree_status_pnwrs     VARCHAR(1),
site_age_tree_type_pnwrs       INTEGER,
site_tree_method_pnwrs         VARCHAR(1),
sitree_equ_no_pnwrs            INTEGER,
treeclcd_rmrs                  INTEGER,
tree_act_rmrs                  INTEGER,
year_age_taken                 INTEGER,
sieqn_ref_cd                   VARCHAR(10),
sitree_fvs                     INTEGER,
sibase_fvs                     INTEGER,
sieqn_ref_cd_fvs               VARCHAR(10)
);
create index SIT_NAT_I on FS_FIADB.SITETREE (STATECD, INVYR, UNITCD, COUNTYCD, PLOT, CONDID, TREE);
create index SIT_PLT_FK_I on FS_FIADB.SITETREE (PLT_CN);
create index SIT_CND_FK_I on FS_FIADB.SITETREE (PLT_CN, CONDID);
alter table FS_FIADB.SITETREE add constraint SIT_PK primary key (CN);
alter table FS_FIADB.SITETREE add constraint SIT_UK unique (PLT_CN, CONDID, TREE);
alter table FS_FIADB.SITETREE add constraint SIT_CND_FK foreign key (CONDID, PLT_CN) references FS_FIADB.COND (CONDID, PLT_CN);
alter table FS_FIADB.SITETREE add constraint SIT_PLT_FK foreign key (PLT_CN) references FS_FIADB.PLOT (CN);