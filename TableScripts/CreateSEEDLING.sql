CREATE TABLE fs_fiadb.seedling
(
cn                             VARCHAR(34) NOT NULL,
plt_cn                         VARCHAR(34) NOT NULL,
invyr                          INTEGER NOT NULL,
statecd                        INTEGER NOT NULL,
unitcd                         INTEGER NOT NULL,
countycd                       INTEGER NOT NULL,
plot                           INTEGER NOT NULL,
subp                           INTEGER NOT NULL,
condid                         INTEGER NOT NULL,
spcd                           DOUBLE PRECISION NOT NULL,
spgrpcd                        INTEGER,
stocking                       DECIMAL(7,4),
treecount                      INTEGER,
totage                         INTEGER,
created_date                   TIMESTAMP(0),
modified_date                  TIMESTAMP(0),
treecount_calc                 DOUBLE PRECISION,
tpa_unadj                      DECIMAL(11,6),
cycle                          INTEGER,
subcycle                       INTEGER,
damage_agent_cd1_srs           INTEGER,
pct_affected_damage_agent1_srs INTEGER,
damage_agent_cd2_srs           INTEGER,
pct_affected_damage_agent2_srs INTEGER,
damage_agent_cd3_srs           INTEGER,
pct_affected_damage_agent3_srs INTEGER,
agecd_rmrs                     INTEGER,
countchkcd_rmrs                INTEGER
);
create index SDL_NAT_I on FS_FIADB.SEEDLING (STATECD, INVYR, UNITCD, COUNTYCD, PLOT, SUBP, CONDID, SPCD);
create index SDL_PLT_FK_I on FS_FIADB.SEEDLING (PLT_CN);
alter table FS_FIADB.SEEDLING add constraint SDL_PK primary key (CN);
alter table FS_FIADB.SEEDLING add constraint SDL_UK unique (PLT_CN, SUBP, CONDID, SPCD);
alter table FS_FIADB.SEEDLING add constraint SDL_PLT_FK foreign key (PLT_CN) references FS_FIADB.PLOT (CN);