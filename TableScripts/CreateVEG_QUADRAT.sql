CREATE TABLE fs_fiadb.veg_quadrat
(
cn                     VARCHAR(34) NOT NULL,
plt_cn                 VARCHAR(34) NOT NULL,
vvt_cn                 VARCHAR(34) NOT NULL,
vsb_cn                 VARCHAR(34) NOT NULL,
invyr                  INTEGER NOT NULL,
statecd                INTEGER NOT NULL,
countycd               INTEGER NOT NULL,
plot                   INTEGER NOT NULL,
subp                   INTEGER,
quadrat                INTEGER NOT NULL,
condid                 INTEGER,
quadrat_status         INTEGER,
quadrat_status_pre2004 INTEGER,
trampling              INTEGER,
created_date           TIMESTAMP(0),
modified_date          TIMESTAMP(0)
);
create index VQT_NAT_I on FS_FIADB.VEG_QUADRAT (STATECD, INVYR, COUNTYCD, PLOT, SUBP, QUADRAT);
create index VQT_VSB_FK_I on FS_FIADB.VEG_QUADRAT (PLT_CN, VVT_CN, VSB_CN);
alter table FS_FIADB.VEG_QUADRAT add constraint VQT_PK primary key (CN);
alter table FS_FIADB.VEG_QUADRAT add constraint VQT_UK unique (PLT_CN, VVT_CN, VSB_CN, QUADRAT);
alter table FS_FIADB.VEG_QUADRAT add constraint VQT_UK2 unique (PLT_CN, VVT_CN, VSB_CN, CN);
alter table FS_FIADB.VEG_QUADRAT add constraint VQT_VSB_FK foreign key (VVT_CN, PLT_CN, VSB_CN) references FS_FIADB.VEG_SUBPLOT (VVT_CN, PLT_CN, CN);