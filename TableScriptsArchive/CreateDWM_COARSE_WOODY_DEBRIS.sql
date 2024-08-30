-- Create table
create table FS_FIADB.DWM_COARSE_WOODY_DEBRIS
(
  cn                   VARCHAR(34) not null,
  plt_cn               VARCHAR(34) not null,
  invyr                SMALLINT not null,
  statecd              SMALLINT not null,
  countycd             SMALLINT not null,
  plot                 INT not null,
  subp                 SMALLINT not null,
  transect             SMALLINT not null,
  cwdid                DOUBLE PRECISION not null,
  measyear             SMALLINT,
  condid               SMALLINT,
  slopdist             DOUBLE PRECISION,
  horiz_dist           DOUBLE PRECISION,
  spcd                 DOUBLE PRECISION,
  decaycd              SMALLINT,
  transdia             SMALLINT,
  smalldia             SMALLINT,
  largedia             SMALLINT,
  length               SMALLINT,
  hollowcd             VARCHAR(1),
  cwdhstcd             SMALLINT,
  volcf                DOUBLE PRECISION,
  drybio               DOUBLE PRECISION,
  carbon               DOUBLE PRECISION,
  cover_pct            DOUBLE PRECISION,
  lpa_unadj            DOUBLE PRECISION,
  lpa_plot             DOUBLE PRECISION,
  lpa_cond             DOUBLE PRECISION,
  lpa_unadj_rgn        DOUBLE PRECISION,
  lpa_plot_rgn         DOUBLE PRECISION,
  lpa_cond_rgn         DOUBLE PRECISION,
  cover_pct_rgn        DOUBLE PRECISION,
  charred_cd           SMALLINT,
  orntcd_pnwrs         VARCHAR(1),
  created_by           VARCHAR(30),
  created_date         TIMESTAMP(0),
  created_in_instance  VARCHAR(6),
  modified_by          VARCHAR(30),
  modified_date        TIMESTAMP(0),
  modified_in_instance VARCHAR(6),
  cwd_sample_method    VARCHAR(6),
  hollow_dia           SMALLINT,
  horiz_dist_cd        SMALLINT,
  inclination          SMALLINT,
  large_end_dia_class  SMALLINT,
  length_cd            SMALLINT,
  volcf_ac_unadj       DOUBLE PRECISION,
  volcf_ac_plot        DOUBLE PRECISION,
  volcf_ac_cond        DOUBLE PRECISION,
  drybio_ac_unadj      DOUBLE PRECISION,
  drybio_ac_plot       DOUBLE PRECISION,
  drybio_ac_cond       DOUBLE PRECISION,
  carbon_ac_unadj      DOUBLE PRECISION,
  carbon_ac_plot       DOUBLE PRECISION,
  carbon_ac_cond       DOUBLE PRECISION
);
-- Add comments to the table 
comment on table FS_FIADB.DWM_COARSE_WOODY_DEBRIS
  is '6.0';
-- Add comments to the columns 
comment on column FS_FIADB.DWM_COARSE_WOODY_DEBRIS.cn
  is 'Unique Index';
comment on column FS_FIADB.DWM_COARSE_WOODY_DEBRIS.plt_cn
  is 'Foreign Key to NIMS_PLOT';
comment on column FS_FIADB.DWM_COARSE_WOODY_DEBRIS.statecd
  is 'state code';
comment on column FS_FIADB.DWM_COARSE_WOODY_DEBRIS.countycd
  is 'County Code';
comment on column FS_FIADB.DWM_COARSE_WOODY_DEBRIS.plot
  is 'P2 Plot Number';
comment on column FS_FIADB.DWM_COARSE_WOODY_DEBRIS.subp
  is 'Subplot Number';
comment on column FS_FIADB.DWM_COARSE_WOODY_DEBRIS.transect
  is 'Subplot Transect (deg)';
comment on column FS_FIADB.DWM_COARSE_WOODY_DEBRIS.cwdid
  is 'CWD ID';
comment on column FS_FIADB.DWM_COARSE_WOODY_DEBRIS.measyear
  is 'Measurement Year';
comment on column FS_FIADB.DWM_COARSE_WOODY_DEBRIS.condid
  is 'Condition ID';
comment on column FS_FIADB.DWM_COARSE_WOODY_DEBRIS.slopdist
  is 'Slope Distance';
comment on column FS_FIADB.DWM_COARSE_WOODY_DEBRIS.horiz_dist
  is 'Horizontal distance along transect from transect start to piece';
comment on column FS_FIADB.DWM_COARSE_WOODY_DEBRIS.spcd
  is 'Species Code';
comment on column FS_FIADB.DWM_COARSE_WOODY_DEBRIS.decaycd
  is 'Decay Class';
comment on column FS_FIADB.DWM_COARSE_WOODY_DEBRIS.transdia
  is 'Transect diameter';
comment on column FS_FIADB.DWM_COARSE_WOODY_DEBRIS.smalldia
  is 'Small diameter';
comment on column FS_FIADB.DWM_COARSE_WOODY_DEBRIS.largedia
  is 'Large diameter';
comment on column FS_FIADB.DWM_COARSE_WOODY_DEBRIS.length
  is 'Length of Log';
comment on column FS_FIADB.DWM_COARSE_WOODY_DEBRIS.hollowcd
  is 'HOLLOW?';
comment on column FS_FIADB.DWM_COARSE_WOODY_DEBRIS.cwdhstcd
  is 'History of CWD piece';
comment on column FS_FIADB.DWM_COARSE_WOODY_DEBRIS.volcf
  is 'Cubic foot volume of log.';
comment on column FS_FIADB.DWM_COARSE_WOODY_DEBRIS.drybio
  is 'Dry weight of log in pounds.';
comment on column FS_FIADB.DWM_COARSE_WOODY_DEBRIS.carbon
  is 'Carbon weight of log in pounds.';
comment on column FS_FIADB.DWM_COARSE_WOODY_DEBRIS.cover_pct
  is 'Percent cover represented by each log.';
comment on column FS_FIADB.DWM_COARSE_WOODY_DEBRIS.lpa_unadj
  is 'Logs per acre based on target plot transect length for P3 core measurements.';
comment on column FS_FIADB.DWM_COARSE_WOODY_DEBRIS.lpa_plot
  is 'Logs per acre based on plot transect length actually measured.';
comment on column FS_FIADB.DWM_COARSE_WOODY_DEBRIS.lpa_cond
  is 'Logs per acre based on condition transect length actually measured.';
comment on column FS_FIADB.DWM_COARSE_WOODY_DEBRIS.lpa_unadj_rgn
  is 'Logs per acre based on the taret plot transect length for regional measurement.';
comment on column FS_FIADB.DWM_COARSE_WOODY_DEBRIS.lpa_plot_rgn
  is 'Logs per acre based on the regional plot transect length actually measured';
comment on column FS_FIADB.DWM_COARSE_WOODY_DEBRIS.lpa_cond_rgn
  is 'Logs per acre based on the regional condition transect length actually measured';
comment on column FS_FIADB.DWM_COARSE_WOODY_DEBRIS.cover_pct_rgn
  is 'Percent cover represented by each log';
comment on column FS_FIADB.DWM_COARSE_WOODY_DEBRIS.charred_cd
  is 'Percent of log charred by fire';
comment on column FS_FIADB.DWM_COARSE_WOODY_DEBRIS.orntcd_pnwrs
  is 'Orientation on slope';
comment on column FS_FIADB.DWM_COARSE_WOODY_DEBRIS.created_by
  is 'Created by';
comment on column FS_FIADB.DWM_COARSE_WOODY_DEBRIS.created_date
  is 'Created Date';
comment on column FS_FIADB.DWM_COARSE_WOODY_DEBRIS.created_in_instance
  is 'Created in Instance';
comment on column FS_FIADB.DWM_COARSE_WOODY_DEBRIS.modified_by
  is 'Modified by';
comment on column FS_FIADB.DWM_COARSE_WOODY_DEBRIS.modified_date
  is 'Modified Date';
comment on column FS_FIADB.DWM_COARSE_WOODY_DEBRIS.modified_in_instance
  is 'Modified in Instance';
comment on column FS_FIADB.DWM_COARSE_WOODY_DEBRIS.cwd_sample_method
  is 'Code indicating what design and sampling protocol were used to collect the record';
comment on column FS_FIADB.DWM_COARSE_WOODY_DEBRIS.hollow_dia
  is 'Hollow diameter at point of intersection';
comment on column FS_FIADB.DWM_COARSE_WOODY_DEBRIS.horiz_dist_cd
  is 'Code indicating whether piece is less than or greater than 24 feet from plot center (dist<=24=1 and dist>24=2)';
comment on column FS_FIADB.DWM_COARSE_WOODY_DEBRIS.inclination
  is 'Piece inclination';
comment on column FS_FIADB.DWM_COARSE_WOODY_DEBRIS.large_end_dia_class
  is 'Large end diameter class code';
comment on column FS_FIADB.DWM_COARSE_WOODY_DEBRIS.length_cd
  is 'Code indicating if the length of a CWD piece is shorter than the 3-foot threshold used by protocols prior to 6.0';
-- Create/Recreate indexes 
create index DCW_NAT_I on FS_FIADB.DWM_COARSE_WOODY_DEBRIS (STATECD, INVYR, COUNTYCD, PLOT, TRANSECT, SUBP, CWDID);
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.DWM_COARSE_WOODY_DEBRIS
  add constraint DCW_PK primary key (CN);
alter table FS_FIADB.DWM_COARSE_WOODY_DEBRIS
  add constraint DCW_UK unique (PLT_CN, TRANSECT, SUBP, CWDID);