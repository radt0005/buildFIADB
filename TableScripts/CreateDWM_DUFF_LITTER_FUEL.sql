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
create index DDL_NAT_I on FS_FIADB.DWM_DUFF_LITTER_FUEL (STATECD, INVYR, COUNTYCD, PLOT, TRANSECT, SUBP, SMPLOCCD);
alter table FS_FIADB.DWM_DUFF_LITTER_FUEL add constraint DDL_PK primary key (CN);
alter table FS_FIADB.DWM_DUFF_LITTER_FUEL add constraint DDL_UK unique (PLT_CN, TRANSECT, SUBP, SMPLOCCD);