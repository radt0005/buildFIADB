-- Create table
create table FS_FIADB.SOILS_EROSION
(
  cn                   VARCHAR(34) not null,
  plt_cn               VARCHAR(34) not null,
  invyr                SMALLINT not null,
  statecd              SMALLINT not null,
  countycd             SMALLINT not null,
  plot                 INT not null,
  subp                 DOUBLE PRECISION not null,
  measyear             SMALLINT not null,
  soilspct             DOUBLE PRECISION,
  compcpct             DOUBLE PRECISION,
  typrtdcd             DOUBLE PRECISION,
  typcmpcd             DOUBLE PRECISION,
  typareacd            DOUBLE PRECISION,
  typothrcd            DOUBLE PRECISION,
  created_by           VARCHAR(30),
  created_date         TIMESTAMP(0),
  created_in_instance  VARCHAR(6),
  modified_by          VARCHAR(30),
  modified_date        TIMESTAMP(0),
  modified_in_instance VARCHAR(6)
);
-- Add comments to the table 
comment on table FS_FIADB.SOILS_EROSION
  is '6.0';
-- Add comments to the columns 
comment on column FS_FIADB.SOILS_EROSION.cn
  is 'Unique Index';
comment on column FS_FIADB.SOILS_EROSION.plt_cn
  is 'Foreign Key to NIMS_PLOT';
comment on column FS_FIADB.SOILS_EROSION.statecd
  is 'state code';
comment on column FS_FIADB.SOILS_EROSION.countycd
  is 'County Code';
comment on column FS_FIADB.SOILS_EROSION.plot
  is 'P2 Plot Number';
comment on column FS_FIADB.SOILS_EROSION.subp
  is 'Subplot Number';
comment on column FS_FIADB.SOILS_EROSION.measyear
  is 'Measurement Year';
comment on column FS_FIADB.SOILS_EROSION.soilspct
  is '% Bare Soil';
comment on column FS_FIADB.SOILS_EROSION.compcpct
  is '% Compacted Area';
comment on column FS_FIADB.SOILS_EROSION.typrtdcd
  is 'Rutted trail';
comment on column FS_FIADB.SOILS_EROSION.typcmpcd
  is 'Compacted Trail';
comment on column FS_FIADB.SOILS_EROSION.typareacd
  is 'Compacted Area';
comment on column FS_FIADB.SOILS_EROSION.typothrcd
  is 'Other Type of Compaction';
comment on column FS_FIADB.SOILS_EROSION.created_by
  is 'Created by';
comment on column FS_FIADB.SOILS_EROSION.created_date
  is 'Created Date';
comment on column FS_FIADB.SOILS_EROSION.created_in_instance
  is 'Created in Instance';
comment on column FS_FIADB.SOILS_EROSION.modified_by
  is 'Modified by';
comment on column FS_FIADB.SOILS_EROSION.modified_date
  is 'Modified Date';
comment on column FS_FIADB.SOILS_EROSION.modified_in_instance
  is 'Modified in Instance';
-- Create/Recreate indexes 
create index SEN_NAT_I on FS_FIADB.SOILS_EROSION (STATECD, INVYR, COUNTYCD, PLOT, SUBP);
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.SOILS_EROSION
  add constraint SEN_PK primary key (CN);
alter table FS_FIADB.SOILS_EROSION
  add constraint SEN_UK unique (PLT_CN, SUBP);