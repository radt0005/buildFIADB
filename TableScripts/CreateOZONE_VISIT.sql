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
comment on column fs_fiadb.ozone_visit.cn
  is 'Unique Index';
comment on column fs_fiadb.ozone_visit.plt_cn
  is 'Foreign Key to NIMS_OZONE_PLOT';
comment on column fs_fiadb.ozone_visit.invyr
  is 'NA';
comment on column fs_fiadb.ozone_visit.statecd
  is 'State code';
comment on column fs_fiadb.ozone_visit.countycd
  is 'County code';
comment on column fs_fiadb.ozone_visit.o3plot
  is 'Concatination of P3HEX and P3PLOT';
comment on column fs_fiadb.ozone_visit.field_id
  is 'P3 Hexagon Number';
comment on column fs_fiadb.ozone_visit.split_plotid
  is 'P3 Plot Number';
comment on column fs_fiadb.ozone_visit.smpkndcd
  is 'NA';
comment on column fs_fiadb.ozone_visit.measday
  is 'Measurement Day';
comment on column fs_fiadb.ozone_visit.measmon
  is 'Measurement Month';
comment on column fs_fiadb.ozone_visit.measyear
  is 'Measurement Year';
comment on column fs_fiadb.ozone_visit.pltsize
  is 'NA';
comment on column fs_fiadb.ozone_visit.aspect
  is 'NA';
comment on column fs_fiadb.ozone_visit.terrpos
  is 'NA';
comment on column fs_fiadb.ozone_visit.soildpth
  is 'NA';
comment on column fs_fiadb.ozone_visit.soildrn
  is 'NA';
comment on column fs_fiadb.ozone_visit.pltdstrb
  is 'NA';
comment on column fs_fiadb.ozone_visit.crwtypcd
  is 'NA';
comment on column fs_fiadb.ozone_visit.plotwet
  is 'NA';
comment on column fs_fiadb.ozone_visit.injcheck
  is 'NA';
comment on column fs_fiadb.ozone_visit.gridden
  is 'NA';
comment on column fs_fiadb.ozone_visit.created_date
  is 'Created Date';
comment on column fs_fiadb.ozone_visit.modified_date
  is 'Modified Date';
create index OVT_NAT_I on FS_FIADB.OZONE_VISIT (COUNTYCD, SPLIT_PLOTID, STATECD, FIELD_ID, O3PLOT, INVYR);
alter table FS_FIADB.OZONE_VISIT add constraint OVT_PK primary key (CN);
alter table FS_FIADB.OZONE_VISIT add constraint OVT_UK unique (PLT_CN);
alter table FS_FIADB.OZONE_VISIT add constraint OVT_NOP_FK foreign key (PLT_CN) references FS_FIADB.OZONE_PLOT (CN);