CREATE TABLE fs_fiadb.ozone_visit
(
cn            VARCHAR(34) NOT NULL,
plt_cn        VARCHAR(34) NOT NULL,
invyr         INTEGER NOT NULL,
statecd       INTEGER NOT NULL,
countycd      INTEGER NOT NULL,
o3plot        DOUBLE PRECISION NOT NULL,
field_id      INTEGER NOT NULL,
split_plotid  INTEGER NOT NULL,
smpkndcd      INTEGER,
measday       INTEGER,
measmon       INTEGER,
measyear      INTEGER NOT NULL,
pltsize       DOUBLE PRECISION NOT NULL,
aspect        INTEGER NOT NULL,
terrpos       DOUBLE PRECISION NOT NULL,
soildpth      DOUBLE PRECISION NOT NULL,
soildrn       DOUBLE PRECISION,
pltdstrb      DOUBLE PRECISION NOT NULL,
crwtypcd      INTEGER,
plotwet       DOUBLE PRECISION,
injcheck      INTEGER NOT NULL,
gridden       INTEGER,
created_date  TIMESTAMP(0),
modified_date TIMESTAMP(0)
);
create index OVT_NAT_I on FS_FIADB.OZONE_VISIT (STATECD, INVYR, COUNTYCD, O3PLOT, FIELD_ID, SPLIT_PLOTID);
alter table FS_FIADB.OZONE_VISIT add constraint OVT_PK primary key (CN);
alter table FS_FIADB.OZONE_VISIT add constraint OVT_UK unique (PLT_CN);
alter table FS_FIADB.OZONE_VISIT add constraint OVT_NOP_FK foreign key (PLT_CN) references FS_FIADB.OZONE_PLOT (CN);