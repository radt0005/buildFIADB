CREATE TABLE fs_fiadb.dwm_coarse_woody_debris
(
cn                  VARCHAR(34) NOT NULL,
plt_cn              VARCHAR(34) NOT NULL,
invyr               INTEGER NOT NULL,
statecd             INTEGER NOT NULL,
countycd            INTEGER NOT NULL,
plot                INTEGER NOT NULL,
subp                INTEGER NOT NULL,
transect            INTEGER NOT NULL,
cwdid               DOUBLE PRECISION NOT NULL,
measyear            INTEGER,
condid              INTEGER,
slopdist            DOUBLE PRECISION,
horiz_dist          DOUBLE PRECISION,
spcd                DOUBLE PRECISION,
decaycd             INTEGER,
transdia            INTEGER,
smalldia            INTEGER,
largedia            INTEGER,
length              INTEGER,
hollowcd            VARCHAR(1),
cwdhstcd            INTEGER,
volcf               DOUBLE PRECISION,
drybio              DOUBLE PRECISION,
carbon              DOUBLE PRECISION,
cover_pct           DOUBLE PRECISION,
lpa_unadj           DOUBLE PRECISION,
lpa_plot            DOUBLE PRECISION,
lpa_cond            DOUBLE PRECISION,
lpa_unadj_rgn       DOUBLE PRECISION,
lpa_plot_rgn        DOUBLE PRECISION,
lpa_cond_rgn        DOUBLE PRECISION,
cover_pct_rgn       DOUBLE PRECISION,
charred_cd          INTEGER,
orntcd_pnwrs        VARCHAR(1),
created_date        TIMESTAMP(0),
modified_date       TIMESTAMP(0),
cwd_sample_method   VARCHAR(6),
hollow_dia          INTEGER,
horiz_dist_cd       INTEGER,
inclination         INTEGER,
large_end_dia_class INTEGER,
length_cd           INTEGER,
volcf_ac_unadj      DOUBLE PRECISION,
volcf_ac_plot       DOUBLE PRECISION,
volcf_ac_cond       DOUBLE PRECISION,
drybio_ac_unadj     DOUBLE PRECISION,
drybio_ac_plot      DOUBLE PRECISION,
drybio_ac_cond      DOUBLE PRECISION,
carbon_ac_unadj     DOUBLE PRECISION,
carbon_ac_plot      DOUBLE PRECISION,
carbon_ac_cond      DOUBLE PRECISION
);
comment on column fs_fiadb.dwm_coarse_woody_debris.cn
  is 'Unique Index';
comment on column fs_fiadb.dwm_coarse_woody_debris.plt_cn
  is 'Foreign Key to NIMS_PLOT';
comment on column fs_fiadb.dwm_coarse_woody_debris.invyr
  is 'NA';
comment on column fs_fiadb.dwm_coarse_woody_debris.statecd
  is 'state code';
comment on column fs_fiadb.dwm_coarse_woody_debris.countycd
  is 'County Code';
comment on column fs_fiadb.dwm_coarse_woody_debris.plot
  is 'P2 Plot Number';
comment on column fs_fiadb.dwm_coarse_woody_debris.subp
  is 'Subplot Number';
comment on column fs_fiadb.dwm_coarse_woody_debris.transect
  is 'Subplot Transect (deg)';
comment on column fs_fiadb.dwm_coarse_woody_debris.cwdid
  is 'CWD ID';
comment on column fs_fiadb.dwm_coarse_woody_debris.measyear
  is 'Measurement Year';
comment on column fs_fiadb.dwm_coarse_woody_debris.condid
  is 'Condition ID';
comment on column fs_fiadb.dwm_coarse_woody_debris.slopdist
  is 'Slope Distance';
comment on column fs_fiadb.dwm_coarse_woody_debris.horiz_dist
  is 'Horizontal distance along transect from transect start to piece';
comment on column fs_fiadb.dwm_coarse_woody_debris.spcd
  is 'Species Code';
comment on column fs_fiadb.dwm_coarse_woody_debris.decaycd
  is 'Decay Class';
comment on column fs_fiadb.dwm_coarse_woody_debris.transdia
  is 'Transect diameter';
comment on column fs_fiadb.dwm_coarse_woody_debris.smalldia
  is 'Small diameter';
comment on column fs_fiadb.dwm_coarse_woody_debris.largedia
  is 'Large diameter';
comment on column fs_fiadb.dwm_coarse_woody_debris.length
  is 'Length of Log';
comment on column fs_fiadb.dwm_coarse_woody_debris.hollowcd
  is 'HOLLOW?';
comment on column fs_fiadb.dwm_coarse_woody_debris.cwdhstcd
  is 'History of CWD piece';
comment on column fs_fiadb.dwm_coarse_woody_debris.volcf
  is 'Cubic foot volume of log.';
comment on column fs_fiadb.dwm_coarse_woody_debris.drybio
  is 'Dry weight of log in pounds.';
comment on column fs_fiadb.dwm_coarse_woody_debris.carbon
  is 'Carbon weight of log in pounds.';
comment on column fs_fiadb.dwm_coarse_woody_debris.cover_pct
  is 'Percent cover represented by each log.';
comment on column fs_fiadb.dwm_coarse_woody_debris.lpa_unadj
  is 'Logs per acre based on target plot transect length for P3 core measurements.';
comment on column fs_fiadb.dwm_coarse_woody_debris.lpa_plot
  is 'Logs per acre based on plot transect length actually measured.';
comment on column fs_fiadb.dwm_coarse_woody_debris.lpa_cond
  is 'Logs per acre based on condition transect length actually measured.';
comment on column fs_fiadb.dwm_coarse_woody_debris.lpa_unadj_rgn
  is 'Logs per acre based on the taret plot transect length for regional measurement.';
comment on column fs_fiadb.dwm_coarse_woody_debris.lpa_plot_rgn
  is 'Logs per acre based on the regional plot transect length actually measured';
comment on column fs_fiadb.dwm_coarse_woody_debris.lpa_cond_rgn
  is 'Logs per acre based on the regional condition transect length actually measured';
comment on column fs_fiadb.dwm_coarse_woody_debris.cover_pct_rgn
  is 'Percent cover represented by each log';
comment on column fs_fiadb.dwm_coarse_woody_debris.charred_cd
  is 'Percent of log charred by fire';
comment on column fs_fiadb.dwm_coarse_woody_debris.orntcd_pnwrs
  is 'Orientation on slope';
comment on column fs_fiadb.dwm_coarse_woody_debris.created_date
  is 'Created Date';
comment on column fs_fiadb.dwm_coarse_woody_debris.modified_date
  is 'Modified Date';
comment on column fs_fiadb.dwm_coarse_woody_debris.cwd_sample_method
  is 'Code indicating what design and sampling protocol were used to collect the record';
comment on column fs_fiadb.dwm_coarse_woody_debris.hollow_dia
  is 'Hollow diameter at point of intersection';
comment on column fs_fiadb.dwm_coarse_woody_debris.horiz_dist_cd
  is 'Code indicating whether piece is less than or greater than 24 feet from plot center (dist<=24=1 and dist>24=2)';
comment on column fs_fiadb.dwm_coarse_woody_debris.inclination
  is 'Piece inclination';
comment on column fs_fiadb.dwm_coarse_woody_debris.large_end_dia_class
  is 'Large end diameter class code';
comment on column fs_fiadb.dwm_coarse_woody_debris.length_cd
  is 'Code indicating if the length of a CWD piece is shorter than the 3-foot threshold used by protocols prior to 6.0';
comment on column fs_fiadb.dwm_coarse_woody_debris.volcf_ac_unadj
  is 'NA';
comment on column fs_fiadb.dwm_coarse_woody_debris.volcf_ac_plot
  is 'NA';
comment on column fs_fiadb.dwm_coarse_woody_debris.volcf_ac_cond
  is 'NA';
comment on column fs_fiadb.dwm_coarse_woody_debris.drybio_ac_unadj
  is 'NA';
comment on column fs_fiadb.dwm_coarse_woody_debris.drybio_ac_plot
  is 'NA';
comment on column fs_fiadb.dwm_coarse_woody_debris.drybio_ac_cond
  is 'NA';
comment on column fs_fiadb.dwm_coarse_woody_debris.carbon_ac_unadj
  is 'NA';
comment on column fs_fiadb.dwm_coarse_woody_debris.carbon_ac_plot
  is 'NA';
comment on column fs_fiadb.dwm_coarse_woody_debris.carbon_ac_cond
  is 'NA';
create index DCW_NAT_I on FS_FIADB.DWM_COARSE_WOODY_DEBRIS (STATECD, CWDID, TRANSECT, COUNTYCD, PLOT, INVYR, SUBP);
alter table FS_FIADB.DWM_COARSE_WOODY_DEBRIS add constraint DCW_PK primary key (CN);
alter table FS_FIADB.DWM_COARSE_WOODY_DEBRIS add constraint DCW_UK unique (CWDID, SUBP, PLT_CN, TRANSECT);