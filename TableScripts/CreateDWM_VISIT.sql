CREATE TABLE fs_fiadb.dwm_visit
(
cn                     VARCHAR(34) NOT NULL,
plt_cn                 VARCHAR(34) NOT NULL,
invyr                  INTEGER NOT NULL,
statecd                INTEGER NOT NULL,
countycd               INTEGER NOT NULL,
plot                   INTEGER NOT NULL,
measday                INTEGER,
measmon                INTEGER,
measyear               INTEGER,
qastatcd               INTEGER,
crwtypcd               INTEGER,
smpkndcd               INTEGER,
created_date           TIMESTAMP(0),
modified_date          TIMESTAMP(0),
cwd_sample_method      VARCHAR(6),
fwd_sample_method      VARCHAR(6),
micr_sample_method     VARCHAR(6),
dlf_sample_method      VARCHAR(6),
pile_sample_method     VARCHAR(6),
dwm_sampling_status_cd INTEGER,
dwm_nbr_subp           INTEGER,
dwm_nbr_subp_transect  INTEGER,
dwm_subplist           INTEGER,
dwm_transect_length    DECIMAL(4,1),
qa_status              INTEGER
);
create index DVT_NAT_I on FS_FIADB.DWM_VISIT (STATECD, INVYR, COUNTYCD, PLOT);
alter table FS_FIADB.DWM_VISIT add constraint DVT_PK primary key (CN);
alter table FS_FIADB.DWM_VISIT add constraint DVT_UK unique (PLT_CN);
alter table FS_FIADB.DWM_VISIT add constraint DVT_PLT_FK foreign key (PLT_CN) references FS_FIADB.PLOT (CN);