-- Create table
create table FS_FIADB.DWM_DUFF_LITTER_FUEL
(
  cn                         VARCHAR(34) not null,
  plt_cn                     VARCHAR(34) not null,
  invyr                      SMALLINT not null,
  statecd                    SMALLINT not null,
  countycd                   SMALLINT not null,
  plot                       INT not null,
  transect                   SMALLINT not null,
  subp                       SMALLINT not null,
  smploccd                   SMALLINT not null,
  measyear                   SMALLINT,
  condid                     SMALLINT,
  duffdep                    DOUBLE PRECISION,
  littdep                    DOUBLE PRECISION,
  fueldep                    DOUBLE PRECISION,
  created_by                 VARCHAR(30),
  created_date               TIMESTAMP(0),
  created_in_instance        VARCHAR(6),
  modified_by                VARCHAR(30),
  modified_date              TIMESTAMP(0),
  modified_in_instance       VARCHAR(6),
  dlf_sample_method          VARCHAR(6),
  duff_method                SMALLINT,
  duff_nonsample_reasn_cd    SMALLINT,
  litter_method              SMALLINT,
  litter_nonsample_reasn_cd  SMALLINT,
  fuelbed_method             SMALLINT,
  fuelbed_nonsample_reasn_cd SMALLINT,
  dl_status_cd               SMALLINT
);
-- Add comments to the table 
comment on table FS_FIADB.DWM_DUFF_LITTER_FUEL
  is '6.0';
-- Add comments to the columns 
comment on column FS_FIADB.DWM_DUFF_LITTER_FUEL.cn
  is 'Unique Index';
comment on column FS_FIADB.DWM_DUFF_LITTER_FUEL.plt_cn
  is 'Foreign Key to NIMS_PLOT';
comment on column FS_FIADB.DWM_DUFF_LITTER_FUEL.statecd
  is 'state code';
comment on column FS_FIADB.DWM_DUFF_LITTER_FUEL.countycd
  is 'County Code';
comment on column FS_FIADB.DWM_DUFF_LITTER_FUEL.plot
  is 'P2 Plot Number';
comment on column FS_FIADB.DWM_DUFF_LITTER_FUEL.transect
  is 'Subplot Transect (deg)';
comment on column FS_FIADB.DWM_DUFF_LITTER_FUEL.subp
  is 'Subplot Number';
comment on column FS_FIADB.DWM_DUFF_LITTER_FUEL.smploccd
  is 'Duff;Litter sample location';
comment on column FS_FIADB.DWM_DUFF_LITTER_FUEL.measyear
  is 'Measurement Year';
comment on column FS_FIADB.DWM_DUFF_LITTER_FUEL.condid
  is 'Condition ID';
comment on column FS_FIADB.DWM_DUFF_LITTER_FUEL.duffdep
  is 'Depth of duff layer';
comment on column FS_FIADB.DWM_DUFF_LITTER_FUEL.littdep
  is 'Depth of litter layer (in)';
comment on column FS_FIADB.DWM_DUFF_LITTER_FUEL.fueldep
  is 'Depth of fuelbed (ft)';
comment on column FS_FIADB.DWM_DUFF_LITTER_FUEL.created_by
  is 'Created by';
comment on column FS_FIADB.DWM_DUFF_LITTER_FUEL.created_date
  is 'Created Date';
comment on column FS_FIADB.DWM_DUFF_LITTER_FUEL.created_in_instance
  is 'Created in Instance';
comment on column FS_FIADB.DWM_DUFF_LITTER_FUEL.modified_by
  is 'Modified by';
comment on column FS_FIADB.DWM_DUFF_LITTER_FUEL.modified_date
  is 'Modified Date';
comment on column FS_FIADB.DWM_DUFF_LITTER_FUEL.modified_in_instance
  is 'Modified in Instance';
comment on column FS_FIADB.DWM_DUFF_LITTER_FUEL.dlf_sample_method
  is 'Code indicating what design and sampling protocol were used to collect the record';
comment on column FS_FIADB.DWM_DUFF_LITTER_FUEL.duff_method
  is 'The measurement method used for DUFF';
comment on column FS_FIADB.DWM_DUFF_LITTER_FUEL.duff_nonsample_reasn_cd
  is 'The DUFF nonsample reason code';
comment on column FS_FIADB.DWM_DUFF_LITTER_FUEL.litter_method
  is 'The measuremnt method used for LITTER';
comment on column FS_FIADB.DWM_DUFF_LITTER_FUEL.litter_nonsample_reasn_cd
  is 'The LITTER nonsample reason code';
comment on column FS_FIADB.DWM_DUFF_LITTER_FUEL.fuelbed_method
  is 'The measuremnt method used for FUELBED';
comment on column FS_FIADB.DWM_DUFF_LITTER_FUEL.fuelbed_nonsample_reasn_cd
  is 'The FUELBED nonsample reason code';
comment on column FS_FIADB.DWM_DUFF_LITTER_FUEL.dl_status_cd
  is 'the sample status for duff, litter, and fuelbed';
-- Create/Recreate indexes 
create index DDL_NAT_I on FS_FIADB.DWM_DUFF_LITTER_FUEL (STATECD, INVYR, COUNTYCD, PLOT, TRANSECT, SUBP, SMPLOCCD);
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.DWM_DUFF_LITTER_FUEL
  add constraint DDL_PK primary key (CN);
alter table FS_FIADB.DWM_DUFF_LITTER_FUEL
  add constraint DDL_UK unique (PLT_CN, TRANSECT, SUBP, SMPLOCCD);