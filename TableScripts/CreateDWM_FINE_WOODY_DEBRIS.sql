-- Create table
create table FS_FIADB.DWM_FINE_WOODY_DEBRIS
(
  cn                     VARCHAR(34) not null,
  plt_cn                 VARCHAR(34) not null,
  invyr                  SMALLINT not null,
  statecd                SMALLINT not null,
  countycd               SMALLINT not null,
  plot                   INT not null,
  transect               SMALLINT not null,
  subp                   SMALLINT not null,
  condid                 SMALLINT not null,
  measyear               SMALLINT,
  smallct                SMALLINT,
  mediumct               SMALLINT,
  largect                SMALLINT,
  rsnctcd                SMALLINT,
  pilescd                SMALLINT,
  small_tl_cond          DOUBLE PRECISION,
  small_tl_plot          DOUBLE PRECISION,
  small_tl_unadj         DOUBLE PRECISION,
  medium_tl_cond         DOUBLE PRECISION,
  medium_tl_plot         DOUBLE PRECISION,
  medium_tl_unadj        DOUBLE PRECISION,
  large_tl_cond          DOUBLE PRECISION,
  large_tl_plot          DOUBLE PRECISION,
  large_tl_unadj         DOUBLE PRECISION,
  created_by             VARCHAR(30),
  created_date           TIMESTAMP(0),
  created_in_instance    VARCHAR(6),
  modified_by            VARCHAR(30),
  modified_date          TIMESTAMP(0),
  modified_in_instance   VARCHAR(6),
  fwd_status_cd          SMALLINT,
  fwd_nonsample_reasn_cd SMALLINT,
  fwd_sample_method      VARCHAR(6),
  slope                  SMALLINT
);
-- Add comments to the table 
comment on table FS_FIADB.DWM_FINE_WOODY_DEBRIS
  is '6.0';
-- Add comments to the columns 
comment on column FS_FIADB.DWM_FINE_WOODY_DEBRIS.cn
  is 'Unique Index';
comment on column FS_FIADB.DWM_FINE_WOODY_DEBRIS.plt_cn
  is 'Foreign Key to NIMS_PLOT';
comment on column FS_FIADB.DWM_FINE_WOODY_DEBRIS.statecd
  is 'state code';
comment on column FS_FIADB.DWM_FINE_WOODY_DEBRIS.countycd
  is 'County Code';
comment on column FS_FIADB.DWM_FINE_WOODY_DEBRIS.plot
  is 'P2 Plot Number';
comment on column FS_FIADB.DWM_FINE_WOODY_DEBRIS.transect
  is 'Subplot Transect (deg)';
comment on column FS_FIADB.DWM_FINE_WOODY_DEBRIS.subp
  is 'Subplot Number';
comment on column FS_FIADB.DWM_FINE_WOODY_DEBRIS.condid
  is 'Forest condition class nbr';
comment on column FS_FIADB.DWM_FINE_WOODY_DEBRIS.measyear
  is 'Measurement Year';
comment on column FS_FIADB.DWM_FINE_WOODY_DEBRIS.smallct
  is '1-hr FWD tally';
comment on column FS_FIADB.DWM_FINE_WOODY_DEBRIS.mediumct
  is '10-hr FWD tally';
comment on column FS_FIADB.DWM_FINE_WOODY_DEBRIS.largect
  is '100-hr FWD tally';
comment on column FS_FIADB.DWM_FINE_WOODY_DEBRIS.rsnctcd
  is 'Reason high tally?';
comment on column FS_FIADB.DWM_FINE_WOODY_DEBRIS.pilescd
  is 'Pile obstruction?';
comment on column FS_FIADB.DWM_FINE_WOODY_DEBRIS.small_tl_cond
  is 'Sum of transect lengths in condition.';
comment on column FS_FIADB.DWM_FINE_WOODY_DEBRIS.small_tl_plot
  is 'Sum of transect lengths in measured and nonforest conditions on plot.';
comment on column FS_FIADB.DWM_FINE_WOODY_DEBRIS.small_tl_unadj
  is 'Sum of transect lengths in all conditions including unmeasured on target plot design.';
comment on column FS_FIADB.DWM_FINE_WOODY_DEBRIS.medium_tl_cond
  is 'Sum of transect lengths in condition.';
comment on column FS_FIADB.DWM_FINE_WOODY_DEBRIS.medium_tl_plot
  is 'Sum of transect lengths in measured and nonforest conditions on plot.';
comment on column FS_FIADB.DWM_FINE_WOODY_DEBRIS.medium_tl_unadj
  is 'Sum of transect lengths in all conditions including unmeasured on target plot design.';
comment on column FS_FIADB.DWM_FINE_WOODY_DEBRIS.large_tl_cond
  is 'Sum of transect lengths in condition.';
comment on column FS_FIADB.DWM_FINE_WOODY_DEBRIS.large_tl_plot
  is 'Sum of transect lengths in measured and nonforest conditions on plot.';
comment on column FS_FIADB.DWM_FINE_WOODY_DEBRIS.large_tl_unadj
  is 'Sum of transect lengths in all conditions including unmeasured on target plot design.';
comment on column FS_FIADB.DWM_FINE_WOODY_DEBRIS.created_by
  is 'Created by';
comment on column FS_FIADB.DWM_FINE_WOODY_DEBRIS.created_date
  is 'Created Date';
comment on column FS_FIADB.DWM_FINE_WOODY_DEBRIS.created_in_instance
  is 'Created in Instance';
comment on column FS_FIADB.DWM_FINE_WOODY_DEBRIS.modified_by
  is 'Modified by';
comment on column FS_FIADB.DWM_FINE_WOODY_DEBRIS.modified_date
  is 'Modified Date';
comment on column FS_FIADB.DWM_FINE_WOODY_DEBRIS.modified_in_instance
  is 'Modified in Instance';
comment on column FS_FIADB.DWM_FINE_WOODY_DEBRIS.fwd_status_cd
  is 'FWD sample status';
comment on column FS_FIADB.DWM_FINE_WOODY_DEBRIS.fwd_nonsample_reasn_cd
  is 'FWD nonsample reason code';
comment on column FS_FIADB.DWM_FINE_WOODY_DEBRIS.fwd_sample_method
  is 'Code indicating what design and sampling protocol were used to collect the record';
comment on column FS_FIADB.DWM_FINE_WOODY_DEBRIS.slope
  is 'FWD transect slope %';
-- Create/Recreate indexes 
create index DFW_NAT_I on FS_FIADB.DWM_FINE_WOODY_DEBRIS (STATECD, INVYR, COUNTYCD, PLOT, TRANSECT, SUBP, CONDID);
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.DWM_FINE_WOODY_DEBRIS
  add constraint DFW_PK primary key (CN);
alter table FS_FIADB.DWM_FINE_WOODY_DEBRIS
  add constraint DFW_UK unique (PLT_CN, TRANSECT, SUBP, CONDID);