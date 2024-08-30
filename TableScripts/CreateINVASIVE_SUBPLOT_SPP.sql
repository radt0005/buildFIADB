CREATE TABLE fs_fiadb.invasive_subplot_spp
(
cn            VARCHAR(34) NOT NULL,
plt_cn        VARCHAR(34) NOT NULL,
invyr         INTEGER NOT NULL,
statecd       INTEGER NOT NULL,
unitcd        INTEGER,
countycd      INTEGER NOT NULL,
plot          INTEGER NOT NULL,
subp          INTEGER NOT NULL,
condid        INTEGER NOT NULL,
veg_fldspcd   VARCHAR(10) NOT NULL,
unique_sp_nbr INTEGER NOT NULL,
veg_spcd      VARCHAR(10) NOT NULL,
cover_pct     INTEGER NOT NULL,
created_date  TIMESTAMP(0),
modified_date TIMESTAMP(0),
cycle         INTEGER NOT NULL,
subcycle      INTEGER NOT NULL
);
create index ISS_SCD_FK_I on FS_FIADB.INVASIVE_SUBPLOT_SPP (PLT_CN, SUBP, CONDID);
create index ISS_PLT_FK_I on FS_FIADB.INVASIVE_SUBPLOT_SPP (PLT_CN);
alter table FS_FIADB.INVASIVE_SUBPLOT_SPP add constraint ISS_PK primary key (CN);
alter table FS_FIADB.INVASIVE_SUBPLOT_SPP add constraint ISS_UK unique (PLT_CN, VEG_FLDSPCD, UNIQUE_SP_NBR, SUBP, CONDID);
alter table FS_FIADB.INVASIVE_SUBPLOT_SPP add constraint ISS_SCD_FK foreign key (PLT_CN, SUBP, CONDID) references FS_FIADB.SUBP_COND (PLT_CN, SUBP, CONDID);
alter table FS_FIADB.INVASIVE_SUBPLOT_SPP add constraint ISS_PLT_FK foreign key (PLT_CN) references FS_FIADB.PLOT (CN);