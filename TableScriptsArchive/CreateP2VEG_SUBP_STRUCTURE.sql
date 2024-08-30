-- Create table
create table FS_FIADB.P2VEG_SUBP_STRUCTURE
(
  cn                   VARCHAR(34) not null,
  plt_cn               VARCHAR(34) not null,
  statecd              SMALLINT not null,
  unitcd               SMALLINT not null,
  countycd             SMALLINT not null,
  plot                 DOUBLE PRECISION not null,
  invyr                SMALLINT not null,
  subp                 DOUBLE PRECISION not null,
  condid               SMALLINT not null,
  growth_habit_cd      VARCHAR(2) not null,
  layer                SMALLINT not null,
  cover_pct            SMALLINT not null,
  created_by           VARCHAR(30),
  created_date         TIMESTAMP(0),
  created_in_instance  VARCHAR(6),
  modified_by          VARCHAR(30),
  modified_date        TIMESTAMP(0),
  modified_in_instance VARCHAR(6),
  cycle                SMALLINT not null,
  subcycle             SMALLINT not null
);
-- Add comments to the table 
comment on table FS_FIADB.P2VEG_SUBP_STRUCTURE
  is '6.0';
-- Add comments to the columns 
comment on column FS_FIADB.P2VEG_SUBP_STRUCTURE.cn
  is 'Sequence number (surrogate primary key';
comment on column FS_FIADB.P2VEG_SUBP_STRUCTURE.plt_cn
  is 'Foreign key to Plot table CN';
comment on column FS_FIADB.P2VEG_SUBP_STRUCTURE.statecd
  is 'State code';
comment on column FS_FIADB.P2VEG_SUBP_STRUCTURE.unitcd
  is 'Survey unit code';
comment on column FS_FIADB.P2VEG_SUBP_STRUCTURE.countycd
  is 'County code';
comment on column FS_FIADB.P2VEG_SUBP_STRUCTURE.plot
  is 'Plot number';
comment on column FS_FIADB.P2VEG_SUBP_STRUCTURE.invyr
  is 'Inventory year';
comment on column FS_FIADB.P2VEG_SUBP_STRUCTURE.subp
  is 'Subplot number';
comment on column FS_FIADB.P2VEG_SUBP_STRUCTURE.condid
  is 'Condition number';
comment on column FS_FIADB.P2VEG_SUBP_STRUCTURE.growth_habit_cd
  is 'Species growth habit code';
comment on column FS_FIADB.P2VEG_SUBP_STRUCTURE.layer
  is 'Species layer';
comment on column FS_FIADB.P2VEG_SUBP_STRUCTURE.cover_pct
  is 'Species percent canopy cover';
comment on column FS_FIADB.P2VEG_SUBP_STRUCTURE.created_by
  is 'Created by';
comment on column FS_FIADB.P2VEG_SUBP_STRUCTURE.created_date
  is 'Created Date';
comment on column FS_FIADB.P2VEG_SUBP_STRUCTURE.created_in_instance
  is 'Created in Instance';
comment on column FS_FIADB.P2VEG_SUBP_STRUCTURE.modified_by
  is 'Modified by';
comment on column FS_FIADB.P2VEG_SUBP_STRUCTURE.modified_date
  is 'Modified Date';
comment on column FS_FIADB.P2VEG_SUBP_STRUCTURE.modified_in_instance
  is 'Modified in Instance';
comment on column FS_FIADB.P2VEG_SUBP_STRUCTURE.cycle
  is 'Inventory cycle number';
comment on column FS_FIADB.P2VEG_SUBP_STRUCTURE.subcycle
  is 'Inventory subcycle number';
-- Create/Recreate indexes 
create index P2VSS_PLT_CN_CONDID on FS_FIADB.P2VEG_SUBP_STRUCTURE (PLT_CN, CONDID);
create index P2VSS_PLT_FK_I on FS_FIADB.P2VEG_SUBP_STRUCTURE (PLT_CN);
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.P2VEG_SUBP_STRUCTURE
  add constraint P2VSS_PK primary key (CN);
alter table FS_FIADB.P2VEG_SUBP_STRUCTURE
  add constraint P2VSS_UK unique (PLT_CN, SUBP, CONDID, GROWTH_HABIT_CD, LAYER);
alter table FS_FIADB.P2VEG_SUBP_STRUCTURE
  add constraint P2VSS_UK2 unique (STATECD, COUNTYCD, PLOT, INVYR, SUBP, CONDID, GROWTH_HABIT_CD, LAYER);
alter table FS_FIADB.P2VEG_SUBP_STRUCTURE
  add constraint P2VSS_UK3 unique (STATECD, CYCLE, SUBCYCLE, COUNTYCD, PLOT, SUBP, CONDID, GROWTH_HABIT_CD, LAYER);
alter table FS_FIADB.P2VEG_SUBP_STRUCTURE
  add constraint P2VSS_PLT_FK foreign key (PLT_CN)
  references FS_FIADB.PLOT (CN);
