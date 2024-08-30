CREATE TABLE fs_fiadb.ozone_validation
(
cn            VARCHAR(34) NOT NULL,
plt_cn        VARCHAR(34) NOT NULL,
invyr         INTEGER NOT NULL,
statecd       INTEGER NOT NULL,
countycd      INTEGER NOT NULL,
o3plot        DOUBLE PRECISION NOT NULL,
field_id      INTEGER NOT NULL,
split_plotid  INTEGER NOT NULL,
biospcd       DOUBLE PRECISION NOT NULL,
qastatcd      INTEGER NOT NULL,
crwtypcd      INTEGER NOT NULL,
leafvchr      DOUBLE PRECISION NOT NULL,
injvalid      DOUBLE PRECISION NOT NULL,
o3_statcd     DOUBLE PRECISION NOT NULL,
measyear      INTEGER NOT NULL,
created_date  TIMESTAMP(0),
modified_date TIMESTAMP(0)
);
create index OVN_NAT_I on FS_FIADB.OZONE_VALIDATION (STATECD, INVYR, COUNTYCD, O3PLOT, FIELD_ID, SPLIT_PLOTID, BIOSPCD);
alter table FS_FIADB.OZONE_VALIDATION add constraint OVN_PK primary key (CN);
alter table FS_FIADB.OZONE_VALIDATION add constraint OVN_UK unique (PLT_CN, BIOSPCD);