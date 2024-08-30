CREATE TABLE fs_fiadb.p2veg_subplot_spp
(
cn              VARCHAR(34) NOT NULL,
plt_cn          VARCHAR(34) NOT NULL,
invyr           INTEGER NOT NULL,
statecd         INTEGER NOT NULL,
unitcd          INTEGER,
countycd        INTEGER NOT NULL,
plot            INTEGER NOT NULL,
subp            INTEGER NOT NULL,
condid          INTEGER NOT NULL,
veg_fldspcd     VARCHAR(10) NOT NULL,
unique_sp_nbr   INTEGER NOT NULL,
veg_spcd        VARCHAR(10) NOT NULL,
growth_habit_cd VARCHAR(2) NOT NULL,
layer           INTEGER NOT NULL,
cover_pct       INTEGER NOT NULL,
created_date    TIMESTAMP(0),
modified_date   TIMESTAMP(0),
cycle           INTEGER NOT NULL,
subcycle        INTEGER NOT NULL
);
create index P2VSSP_PLT_FK_I on FS_FIADB.P2VEG_SUBPLOT_SPP (PLT_CN);
alter table FS_FIADB.P2VEG_SUBPLOT_SPP add constraint P2VSSP_PK primary key (CN);
alter table FS_FIADB.P2VEG_SUBPLOT_SPP add constraint P2VSSP_UK unique (PLT_CN, VEG_FLDSPCD, UNIQUE_SP_NBR, SUBP, CONDID);
alter table FS_FIADB.P2VEG_SUBPLOT_SPP add constraint P2VSSP_SCD_FK foreign key (CONDID, SUBP, PLT_CN) references FS_FIADB.SUBP_COND (CONDID, SUBP, PLT_CN);
alter table FS_FIADB.P2VEG_SUBPLOT_SPP add constraint P2VSSP_PLT_FK foreign key (PLT_CN) references FS_FIADB.PLOT (CN);