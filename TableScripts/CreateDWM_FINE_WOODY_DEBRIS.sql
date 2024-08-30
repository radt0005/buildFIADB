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
create index DFW_NAT_I on FS_FIADB.DWM_FINE_WOODY_DEBRIS (STATECD, INVYR, COUNTYCD, PLOT, TRANSECT, SUBP, CONDID);
alter table FS_FIADB.DWM_FINE_WOODY_DEBRIS add constraint DFW_PK primary key (CN);
alter table FS_FIADB.DWM_FINE_WOODY_DEBRIS add constraint DFW_UK unique (PLT_CN, TRANSECT, SUBP, CONDID);