CREATE TABLE fs_fiadb.dwm_duff_litter_fuel
(
cn                         VARCHAR(34) NOT NULL,
plt_cn                     VARCHAR(34) NOT NULL,
invyr                      INTEGER NOT NULL,
statecd                    INTEGER NOT NULL,
countycd                   INTEGER NOT NULL,
plot                       INTEGER NOT NULL,
transect                   INTEGER NOT NULL,
subp                       INTEGER NOT NULL,
smploccd                   INTEGER NOT NULL,
measyear                   INTEGER,
condid                     INTEGER,
duffdep                    DOUBLE PRECISION,
littdep                    DOUBLE PRECISION,
fueldep                    DOUBLE PRECISION,
created_date               TIMESTAMP(0),
modified_date              TIMESTAMP(0),
dlf_sample_method          VARCHAR(6),
duff_method                INTEGER,
duff_nonsample_reasn_cd    INTEGER,
litter_method              INTEGER,
litter_nonsample_reasn_cd  INTEGER,
fuelbed_method             INTEGER,
fuelbed_nonsample_reasn_cd INTEGER,
dl_status_cd               INTEGER
);
comment on column fs_fiadb.dwm_duff_litter_fuel.cn
  is 'Unique Index';
comment on column fs_fiadb.dwm_duff_litter_fuel.plt_cn
  is 'Foreign Key to NIMS_PLOT';
comment on column fs_fiadb.dwm_duff_litter_fuel.invyr
  is 'NA';
comment on column fs_fiadb.dwm_duff_litter_fuel.statecd
  is 'state code';
comment on column fs_fiadb.dwm_duff_litter_fuel.countycd
  is 'County Code';
comment on column fs_fiadb.dwm_duff_litter_fuel.plot
  is 'P2 Plot Number';
comment on column fs_fiadb.dwm_duff_litter_fuel.transect
  is 'Subplot Transect (deg)';
comment on column fs_fiadb.dwm_duff_litter_fuel.subp
  is 'Subplot Number';
comment on column fs_fiadb.dwm_duff_litter_fuel.smploccd
  is 'Duff;Litter sample location';
comment on column fs_fiadb.dwm_duff_litter_fuel.measyear
  is 'Measurement Year';
comment on column fs_fiadb.dwm_duff_litter_fuel.condid
  is 'Condition ID';
comment on column fs_fiadb.dwm_duff_litter_fuel.duffdep
  is 'Depth of duff layer';
comment on column fs_fiadb.dwm_duff_litter_fuel.littdep
  is 'Depth of litter layer (in)';
comment on column fs_fiadb.dwm_duff_litter_fuel.fueldep
  is 'Depth of fuelbed (ft)';
comment on column fs_fiadb.dwm_duff_litter_fuel.created_date
  is 'Created Date';
comment on column fs_fiadb.dwm_duff_litter_fuel.modified_date
  is 'Modified Date';
comment on column fs_fiadb.dwm_duff_litter_fuel.dlf_sample_method
  is 'Code indicating what design and sampling protocol were used to collect the record';
comment on column fs_fiadb.dwm_duff_litter_fuel.duff_method
  is 'The measurement method used for DUFF';
comment on column fs_fiadb.dwm_duff_litter_fuel.duff_nonsample_reasn_cd
  is 'The DUFF nonsample reason code';
comment on column fs_fiadb.dwm_duff_litter_fuel.litter_method
  is 'The measuremnt method used for LITTER';
comment on column fs_fiadb.dwm_duff_litter_fuel.litter_nonsample_reasn_cd
  is 'The LITTER nonsample reason code';
comment on column fs_fiadb.dwm_duff_litter_fuel.fuelbed_method
  is 'The measuremnt method used for FUELBED';
comment on column fs_fiadb.dwm_duff_litter_fuel.fuelbed_nonsample_reasn_cd
  is 'The FUELBED nonsample reason code';
comment on column fs_fiadb.dwm_duff_litter_fuel.dl_status_cd
  is 'the sample status for duff, litter, and fuelbed';
create index DDL_NAT_I on FS_FIADB.DWM_DUFF_LITTER_FUEL (COUNTYCD, STATECD, SMPLOCCD, INVYR, SUBP, TRANSECT, PLOT);
alter table FS_FIADB.DWM_DUFF_LITTER_FUEL add constraint DDL_PK primary key (CN);
alter table FS_FIADB.DWM_DUFF_LITTER_FUEL add constraint DDL_UK unique (SMPLOCCD, SUBP, PLT_CN, TRANSECT);