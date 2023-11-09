-- Create table
create table FS_FIADB.SEEDLING_REGEN
(
  cn                   VARCHAR(34) not null,
  plt_cn               VARCHAR(34) not null,
  cnd_cn               VARCHAR(34) not null,
  scd_cn               VARCHAR(34) not null,
  invyr                SMALLINT not null,
  statecd              SMALLINT not null,
  unitcd               SMALLINT not null,
  countycd             SMALLINT not null,
  plot                 INT not null,
  subp                 SMALLINT not null,
  condid               SMALLINT not null,
  spcd                 DOUBLE PRECISION not null,
  spgrpcd              SMALLINT,
  seedling_source_cd   VARCHAR(2) not null,
  length_class_cd      SMALLINT not null,
  seedlingcount        SMALLINT not null,
  created_by           VARCHAR(30),
  created_date         TIMESTAMP(0),
  created_in_instance  VARCHAR(6),
  modified_by          VARCHAR(30),
  modified_date        TIMESTAMP(0),
  modified_in_instance VARCHAR(6),
  cycle                SMALLINT,
  subcycle             SMALLINT,
  tpa_unadj            DECIMAL(11,6)
);
-- Add comments to the table 
comment on table FS_FIADB.SEEDLING_REGEN
  is 'NIMS 6.0';
-- Add comments to the columns 
comment on column FS_FIADB.SEEDLING_REGEN.cn
  is 'Sequence number (surrogate primary key';
comment on column FS_FIADB.SEEDLING_REGEN.plt_cn
  is 'Foreign key to Plot table CN';
comment on column FS_FIADB.SEEDLING_REGEN.cnd_cn
  is 'Foreign key to Cond table CN';
comment on column FS_FIADB.SEEDLING_REGEN.scd_cn
  is 'Foreign key to Subp Cond table CN';
comment on column FS_FIADB.SEEDLING_REGEN.statecd
  is 'State code';
comment on column FS_FIADB.SEEDLING_REGEN.unitcd
  is 'Survey unit code';
comment on column FS_FIADB.SEEDLING_REGEN.countycd
  is 'County code';
comment on column FS_FIADB.SEEDLING_REGEN.plot
  is 'Plot number';
comment on column FS_FIADB.SEEDLING_REGEN.subp
  is 'Subplot number';
comment on column FS_FIADB.SEEDLING_REGEN.spcd
  is 'Species code';
comment on column FS_FIADB.SEEDLING_REGEN.spgrpcd
  is 'Species group code';
comment on column FS_FIADB.SEEDLING_REGEN.seedling_source_cd
  is 'Seedling source code';
comment on column FS_FIADB.SEEDLING_REGEN.length_class_cd
  is 'Length class code';
comment on column FS_FIADB.SEEDLING_REGEN.seedlingcount
  is 'Count of qualifying seedlings';
comment on column FS_FIADB.SEEDLING_REGEN.created_by
  is 'Created by';
comment on column FS_FIADB.SEEDLING_REGEN.created_date
  is 'Created Date';
comment on column FS_FIADB.SEEDLING_REGEN.created_in_instance
  is 'Created in Instance';
comment on column FS_FIADB.SEEDLING_REGEN.modified_by
  is 'Modified by';
comment on column FS_FIADB.SEEDLING_REGEN.modified_date
  is 'Modified Date';
comment on column FS_FIADB.SEEDLING_REGEN.modified_in_instance
  is 'Modified in Instance';
comment on column FS_FIADB.SEEDLING_REGEN.cycle
  is 'Inventory cycle number';
comment on column FS_FIADB.SEEDLING_REGEN.subcycle
  is 'Inventory subcycle number';
comment on column FS_FIADB.SEEDLING_REGEN.tpa_unadj
  is 'Unadjusted Trees per acre';
-- Create/Recreate indexes 
create index SDLREGEN_CND_FK_I on FS_FIADB.SEEDLING_REGEN (CND_CN);
create index SDLREGEN_PLT_CND_I on FS_FIADB.SEEDLING_REGEN (PLT_CN, CND_CN);
create index SDLREGEN_PLT_FK_I on FS_FIADB.SEEDLING_REGEN (PLT_CN);
create index SDLREGEN_SCD_FK_I on FS_FIADB.SEEDLING_REGEN (SCD_CN);
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.SEEDLING_REGEN
  add constraint SDLREGEN_PK primary key (CN);
alter table FS_FIADB.SEEDLING_REGEN
  add constraint SDLREGEN_UK unique (STATECD, COUNTYCD, PLOT, SUBP, INVYR, SPCD, CONDID, SEEDLING_SOURCE_CD, LENGTH_CLASS_CD);
alter table FS_FIADB.SEEDLING_REGEN
  add constraint SDLREGEN_CND_FK foreign key (CND_CN)
  references FS_FIADB.COND (CN);
alter table FS_FIADB.SEEDLING_REGEN
  add constraint SDLREGEN_PLT_FK foreign key (PLT_CN)
  references FS_FIADB.PLOT (CN);
alter table FS_FIADB.SEEDLING_REGEN
  add constraint SDLREGEN_SCD_FK foreign key (SCD_CN)
  references FS_FIADB.SUBP_COND (CN);