-- Create table
create table FS_FIADB.DWM_MICROPLOT_FUEL
(
  cn                   VARCHAR(34) not null,
  plt_cn               VARCHAR(34) not null,
  invyr                SMALLINT not null,
  statecd              SMALLINT not null,
  countycd             SMALLINT not null,
  plot                 INT not null,
  subp                 SMALLINT not null,
  measyear             SMALLINT,
  lvshrbcd             SMALLINT,
  dshrbcd              SMALLINT,
  lvhrbcd              SMALLINT,
  dhrbcd               SMALLINT,
  littercd             DOUBLE PRECISION,
  lvshrbht             DOUBLE PRECISION,
  dshrbht              DOUBLE PRECISION,
  lvhrbht              DOUBLE PRECISION,
  dhrbht               DOUBLE PRECISION,
  created_by           VARCHAR(30),
  created_date         TIMESTAMP(0),
  created_in_instance  VARCHAR(6),
  modified_by          VARCHAR(30),
  modified_date        TIMESTAMP(0),
  modified_in_instance VARCHAR(6),
  micr_sample_method   VARCHAR(6)
);
-- Add comments to the table 
comment on table FS_FIADB.DWM_MICROPLOT_FUEL
  is '6.0';
-- Add comments to the columns 
comment on column FS_FIADB.DWM_MICROPLOT_FUEL.cn
  is 'Unique Index';
comment on column FS_FIADB.DWM_MICROPLOT_FUEL.plt_cn
  is 'Foreign Key to NIMS_PLOT';
comment on column FS_FIADB.DWM_MICROPLOT_FUEL.statecd
  is 'state code';
comment on column FS_FIADB.DWM_MICROPLOT_FUEL.countycd
  is 'County Code';
comment on column FS_FIADB.DWM_MICROPLOT_FUEL.plot
  is 'P2 Plot Number';
comment on column FS_FIADB.DWM_MICROPLOT_FUEL.subp
  is 'Subplot Number';
comment on column FS_FIADB.DWM_MICROPLOT_FUEL.measyear
  is 'Measurement Year';
comment on column FS_FIADB.DWM_MICROPLOT_FUEL.lvshrbcd
  is 'Live shrub cover (%)';
comment on column FS_FIADB.DWM_MICROPLOT_FUEL.dshrbcd
  is 'Dead shrub cover (%)';
comment on column FS_FIADB.DWM_MICROPLOT_FUEL.lvhrbcd
  is 'Live herb cover (%)';
comment on column FS_FIADB.DWM_MICROPLOT_FUEL.dhrbcd
  is 'Dead herb cover (%)';
comment on column FS_FIADB.DWM_MICROPLOT_FUEL.littercd
  is 'Litter cover (%)';
comment on column FS_FIADB.DWM_MICROPLOT_FUEL.lvshrbht
  is 'Live shrub height (ft)';
comment on column FS_FIADB.DWM_MICROPLOT_FUEL.dshrbht
  is 'Dead shrub height (ft)';
comment on column FS_FIADB.DWM_MICROPLOT_FUEL.lvhrbht
  is 'Live herb height (ft)';
comment on column FS_FIADB.DWM_MICROPLOT_FUEL.dhrbht
  is 'Dead herb height (ft)';
comment on column FS_FIADB.DWM_MICROPLOT_FUEL.created_by
  is 'Created by';
comment on column FS_FIADB.DWM_MICROPLOT_FUEL.created_date
  is 'Created Date';
comment on column FS_FIADB.DWM_MICROPLOT_FUEL.created_in_instance
  is 'Created in Instance';
comment on column FS_FIADB.DWM_MICROPLOT_FUEL.modified_by
  is 'Modified by';
comment on column FS_FIADB.DWM_MICROPLOT_FUEL.modified_date
  is 'Modified Date';
comment on column FS_FIADB.DWM_MICROPLOT_FUEL.modified_in_instance
  is 'Modified in Instance';
comment on column FS_FIADB.DWM_MICROPLOT_FUEL.micr_sample_method
  is 'Code indicating what design and sampling protocol were used to collect the record';
-- Create/Recreate indexes 
create index DMF_NAT_I on FS_FIADB.DWM_MICROPLOT_FUEL (STATECD, INVYR, COUNTYCD, PLOT, SUBP);
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.DWM_MICROPLOT_FUEL
  add constraint DMF_PK primary key (CN);
alter table FS_FIADB.DWM_MICROPLOT_FUEL
  add constraint DMF_UK unique (PLT_CN, SUBP);