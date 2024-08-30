CREATE TABLE fs_fiadb.soils_erosion
(
cn            VARCHAR(34) NOT NULL,
plt_cn        VARCHAR(34) NOT NULL,
invyr         INTEGER NOT NULL,
statecd       INTEGER NOT NULL,
countycd      INTEGER NOT NULL,
plot          INTEGER NOT NULL,
subp          INTEGER NOT NULL,
measyear      INTEGER NOT NULL,
soilspct      DOUBLE PRECISION,
compcpct      DOUBLE PRECISION,
typrtdcd      DOUBLE PRECISION,
typcmpcd      DOUBLE PRECISION,
typareacd     DOUBLE PRECISION,
typothrcd     DOUBLE PRECISION,
created_date  TIMESTAMP(0),
modified_date TIMESTAMP(0)
);
create index SEN_NAT_I on FS_FIADB.SOILS_EROSION (STATECD, INVYR, COUNTYCD, PLOT, SUBP);
alter table FS_FIADB.SOILS_EROSION add constraint SEN_PK primary key (CN);
alter table FS_FIADB.SOILS_EROSION add constraint SEN_UK unique (PLT_CN, SUBP);