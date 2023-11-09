-- Create table
create table FS_FIADB.SEEDLING
(
  cn                             VARCHAR(34) not null,
  plt_cn                         VARCHAR(34) not null,
  invyr                          SMALLINT not null,
  statecd                        SMALLINT not null,
  unitcd                         SMALLINT not null,
  countycd                       SMALLINT not null,
  plot                           INT not null,
  subp                           SMALLINT not null,
  condid                         SMALLINT not null,
  spcd                           DOUBLE PRECISION not null,
  spgrpcd                        SMALLINT,
  stocking                       DECIMAL(7,4),
  treecount                      SMALLINT,
  totage                         SMALLINT,
  created_by                     VARCHAR(30),
  created_date                   TIMESTAMP(0),
  created_in_instance            VARCHAR(6),
  modified_by                    VARCHAR(30),
  modified_date                  TIMESTAMP(0),
  modified_in_instance           VARCHAR(6),
  treecount_calc                 DOUBLE PRECISION,
  tpa_unadj                      DECIMAL(11,6),
  cycle                          SMALLINT,
  subcycle                       SMALLINT,
  damage_agent_cd1_srs           INT,
  pct_affected_damage_agent1_srs SMALLINT,
  damage_agent_cd2_srs           INT,
  pct_affected_damage_agent2_srs SMALLINT,
  damage_agent_cd3_srs           INT,
  pct_affected_damage_agent3_srs SMALLINT,
  agecd_rmrs                     SMALLINT,
  countchkcd_rmrs                SMALLINT
);
-- Add comments to the table 
comment on table FS_FIADB.SEEDLING
  is '6.0';
-- Add comments to the columns 
comment on column FS_FIADB.SEEDLING.cn
  is 'Unique index';
comment on column FS_FIADB.SEEDLING.plt_cn
  is 'Unique index';
comment on column FS_FIADB.SEEDLING.statecd
  is 'State code';
comment on column FS_FIADB.SEEDLING.unitcd
  is 'Survey unit code';
comment on column FS_FIADB.SEEDLING.countycd
  is 'County code';
comment on column FS_FIADB.SEEDLING.plot
  is 'Plot number';
comment on column FS_FIADB.SEEDLING.subp
  is 'Subplot number';
comment on column FS_FIADB.SEEDLING.condid
  is 'Condition number';
comment on column FS_FIADB.SEEDLING.spcd
  is 'Species code';
comment on column FS_FIADB.SEEDLING.spgrpcd
  is 'Species group code';
comment on column FS_FIADB.SEEDLING.stocking
  is 'Tree stocking';
comment on column FS_FIADB.SEEDLING.treecount
  is 'Tree count';
comment on column FS_FIADB.SEEDLING.totage
  is 'Total age of seedling';
comment on column FS_FIADB.SEEDLING.created_by
  is 'Created by';
comment on column FS_FIADB.SEEDLING.created_date
  is 'Created date';
comment on column FS_FIADB.SEEDLING.created_in_instance
  is 'Created in instance';
comment on column FS_FIADB.SEEDLING.modified_by
  is 'Modified by';
comment on column FS_FIADB.SEEDLING.modified_date
  is 'Modified date';
comment on column FS_FIADB.SEEDLING.modified_in_instance
  is 'Modified in instance';
comment on column FS_FIADB.SEEDLING.cycle
  is 'Inventory cycle number';
comment on column FS_FIADB.SEEDLING.subcycle
  is 'Inventory subcycle number';
comment on column FS_FIADB.SEEDLING.agecd_rmrs
  is 'age code';
comment on column FS_FIADB.SEEDLING.countchkcd_rmrs
  is 'count check code';
-- Create/Recreate indexes 
create index SDL_NAT_I on FS_FIADB.SEEDLING (STATECD, INVYR, UNITCD, COUNTYCD, PLOT, SUBP, CONDID, SPCD);
create index SDL_PLT_FK_I on FS_FIADB.SEEDLING (PLT_CN);
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.SEEDLING
  add constraint SDL_PK primary key (CN);
alter table FS_FIADB.SEEDLING
  add constraint SDL_UK unique (PLT_CN, SUBP, CONDID, SPCD);
alter table FS_FIADB.SEEDLING
  add constraint SDL_PLT_FK foreign key (PLT_CN)
  references FS_FIADB.PLOT (CN);