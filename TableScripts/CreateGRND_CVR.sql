CREATE TABLE fs_fiadb.grnd_cvr
(
cn            VARCHAR(34) NOT NULL,
plt_cn        VARCHAR(34) NOT NULL,
invyr         INTEGER NOT NULL,
statecd       INTEGER NOT NULL,
unitcd        INTEGER NOT NULL,
countycd      INTEGER NOT NULL,
plot          INTEGER NOT NULL,
subp          INTEGER NOT NULL,
transect      INTEGER NOT NULL,
cvr_pct       INTEGER,
grnd_cvr_seg  INTEGER NOT NULL,
grnd_cvr_typ  VARCHAR(4) NOT NULL,
cycle         INTEGER,
subcycle      INTEGER,
created_date  TIMESTAMP(0),
modified_date TIMESTAMP(0)
);
create index GRND_CVR_PLT_FK_I on FS_FIADB.GRND_CVR (PLT_CN);
create index GRND_CVR_UK_I on FS_FIADB.GRND_CVR (PLT_CN, SUBP, TRANSECT, GRND_CVR_SEG, GRND_CVR_TYP);
alter table FS_FIADB.GRND_CVR add constraint GRND_CVR_PK primary key (CN);
alter table FS_FIADB.GRND_CVR add constraint GRND_CVR_PLT_FK foreign key (PLT_CN) references FS_FIADB.PLOT (CN);