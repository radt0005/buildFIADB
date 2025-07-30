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
comment on column fs_fiadb.seedling.cn
  is 'Unique index';
comment on column fs_fiadb.seedling.plt_cn
  is 'Unique index';
comment on column fs_fiadb.seedling.invyr
  is 'NA';
comment on column fs_fiadb.seedling.statecd
  is 'State code';
comment on column fs_fiadb.seedling.unitcd
  is 'Survey unit code';
comment on column fs_fiadb.seedling.countycd
  is 'County code';
comment on column fs_fiadb.seedling.plot
  is 'Plot number';
comment on column fs_fiadb.seedling.subp
  is 'Subplot number';
comment on column fs_fiadb.seedling.condid
  is 'Condition number';
comment on column fs_fiadb.seedling.spcd
  is 'Species code';
comment on column fs_fiadb.seedling.spgrpcd
  is 'Species group code';
comment on column fs_fiadb.seedling.stocking
  is 'Tree stocking';
comment on column fs_fiadb.seedling.treecount
  is 'Tree count';
comment on column fs_fiadb.seedling.totage
  is 'Total age of seedling';
comment on column fs_fiadb.seedling.created_date
  is 'Created date';
comment on column fs_fiadb.seedling.modified_date
  is 'Modified date';
comment on column fs_fiadb.seedling.treecount_calc
  is 'NA';
comment on column fs_fiadb.seedling.tpa_unadj
  is 'NA';
comment on column fs_fiadb.seedling.cycle
  is 'Inventory cycle number';
comment on column fs_fiadb.seedling.subcycle
  is 'Inventory subcycle number';
comment on column fs_fiadb.seedling.damage_agent_cd1_srs
  is 'NA';
comment on column fs_fiadb.seedling.pct_affected_damage_agent1_srs
  is 'NA';
comment on column fs_fiadb.seedling.damage_agent_cd2_srs
  is 'NA';
comment on column fs_fiadb.seedling.pct_affected_damage_agent2_srs
  is 'NA';
comment on column fs_fiadb.seedling.damage_agent_cd3_srs
  is 'NA';
comment on column fs_fiadb.seedling.pct_affected_damage_agent3_srs
  is 'NA';
comment on column fs_fiadb.seedling.agecd_rmrs
  is 'age code';
comment on column fs_fiadb.seedling.countchkcd_rmrs
  is 'count check code';
create index SDL_NAT_I on FS_FIADB.SEEDLING (PLOT, SUBP, INVYR, SPCD, STATECD, CONDID, COUNTYCD, UNITCD);
create index SDL_PLT_FK_I on FS_FIADB.SEEDLING (PLT_CN);
alter table FS_FIADB.SEEDLING add constraint SDL_PK primary key (CN);
alter table FS_FIADB.SEEDLING add constraint SDL_UK unique (SUBP, PLT_CN, SPCD, CONDID);
alter table FS_FIADB.SEEDLING add constraint SDL_PLT_FK foreign key (PLT_CN) references FS_FIADB.PLOT (CN);