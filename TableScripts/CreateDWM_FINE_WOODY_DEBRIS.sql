CREATE TABLE fs_fiadb.dwm_fine_woody_debris
(
cn                     VARCHAR(34) NOT NULL,
plt_cn                 VARCHAR(34) NOT NULL,
invyr                  INTEGER NOT NULL,
statecd                INTEGER NOT NULL,
countycd               INTEGER NOT NULL,
plot                   INTEGER NOT NULL,
transect               INTEGER NOT NULL,
subp                   INTEGER NOT NULL,
condid                 INTEGER NOT NULL,
measyear               INTEGER,
smallct                INTEGER,
mediumct               INTEGER,
largect                INTEGER,
rsnctcd                INTEGER,
pilescd                INTEGER,
small_tl_cond          DOUBLE PRECISION,
small_tl_plot          DOUBLE PRECISION,
small_tl_unadj         DOUBLE PRECISION,
medium_tl_cond         DOUBLE PRECISION,
medium_tl_plot         DOUBLE PRECISION,
medium_tl_unadj        DOUBLE PRECISION,
large_tl_cond          DOUBLE PRECISION,
large_tl_plot          DOUBLE PRECISION,
large_tl_unadj         DOUBLE PRECISION,
created_date           TIMESTAMP(0),
modified_date          TIMESTAMP(0),
fwd_status_cd          INTEGER,
fwd_nonsample_reasn_cd INTEGER,
fwd_sample_method      VARCHAR(6),
slope                  INTEGER
);
comment on column fs_fiadb.dwm_fine_woody_debris.cn
  is 'Unique Index';
comment on column fs_fiadb.dwm_fine_woody_debris.plt_cn
  is 'Foreign Key to NIMS_PLOT';
comment on column fs_fiadb.dwm_fine_woody_debris.invyr
  is 'NA';
comment on column fs_fiadb.dwm_fine_woody_debris.statecd
  is 'state code';
comment on column fs_fiadb.dwm_fine_woody_debris.countycd
  is 'County Code';
comment on column fs_fiadb.dwm_fine_woody_debris.plot
  is 'P2 Plot Number';
comment on column fs_fiadb.dwm_fine_woody_debris.transect
  is 'Subplot Transect (deg)';
comment on column fs_fiadb.dwm_fine_woody_debris.subp
  is 'Subplot Number';
comment on column fs_fiadb.dwm_fine_woody_debris.condid
  is 'Forest condition class nbr';
comment on column fs_fiadb.dwm_fine_woody_debris.measyear
  is 'Measurement Year';
comment on column fs_fiadb.dwm_fine_woody_debris.smallct
  is '1-hr FWD tally';
comment on column fs_fiadb.dwm_fine_woody_debris.mediumct
  is '10-hr FWD tally';
comment on column fs_fiadb.dwm_fine_woody_debris.largect
  is '100-hr FWD tally';
comment on column fs_fiadb.dwm_fine_woody_debris.rsnctcd
  is 'Reason high tally?';
comment on column fs_fiadb.dwm_fine_woody_debris.pilescd
  is 'Pile obstruction?';
comment on column fs_fiadb.dwm_fine_woody_debris.small_tl_cond
  is 'Sum of transect lengths in condition.';
comment on column fs_fiadb.dwm_fine_woody_debris.small_tl_plot
  is 'Sum of transect lengths in measured and nonforest conditions on plot.';
comment on column fs_fiadb.dwm_fine_woody_debris.small_tl_unadj
  is 'Sum of transect lengths in all conditions including unmeasured on target plot design.';
comment on column fs_fiadb.dwm_fine_woody_debris.medium_tl_cond
  is 'Sum of transect lengths in condition.';
comment on column fs_fiadb.dwm_fine_woody_debris.medium_tl_plot
  is 'Sum of transect lengths in measured and nonforest conditions on plot.';
comment on column fs_fiadb.dwm_fine_woody_debris.medium_tl_unadj
  is 'Sum of transect lengths in all conditions including unmeasured on target plot design.';
comment on column fs_fiadb.dwm_fine_woody_debris.large_tl_cond
  is 'Sum of transect lengths in condition.';
comment on column fs_fiadb.dwm_fine_woody_debris.large_tl_plot
  is 'Sum of transect lengths in measured and nonforest conditions on plot.';
comment on column fs_fiadb.dwm_fine_woody_debris.large_tl_unadj
  is 'Sum of transect lengths in all conditions including unmeasured on target plot design.';
comment on column fs_fiadb.dwm_fine_woody_debris.created_date
  is 'Created Date';
comment on column fs_fiadb.dwm_fine_woody_debris.modified_date
  is 'Modified Date';
comment on column fs_fiadb.dwm_fine_woody_debris.fwd_status_cd
  is 'FWD sample status';
comment on column fs_fiadb.dwm_fine_woody_debris.fwd_nonsample_reasn_cd
  is 'FWD nonsample reason code';
comment on column fs_fiadb.dwm_fine_woody_debris.fwd_sample_method
  is 'Code indicating what design and sampling protocol were used to collect the record';
comment on column fs_fiadb.dwm_fine_woody_debris.slope
  is 'FWD transect slope %';
create index DFW_NAT_I on FS_FIADB.DWM_FINE_WOODY_DEBRIS (CONDID, STATECD, COUNTYCD, SUBP, INVYR, PLOT, TRANSECT);
alter table FS_FIADB.DWM_FINE_WOODY_DEBRIS add constraint DFW_PK primary key (CN);
alter table FS_FIADB.DWM_FINE_WOODY_DEBRIS add constraint DFW_UK unique (TRANSECT, CONDID, PLT_CN, SUBP);