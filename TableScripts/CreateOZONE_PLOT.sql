CREATE TABLE fs_fiadb.ozone_plot
(
cn            VARCHAR(34) NOT NULL,
srv_cn        VARCHAR(34) NOT NULL,
cty_cn        VARCHAR(34) NOT NULL,
invyr         INTEGER NOT NULL,
statecd       INTEGER NOT NULL,
unitcd        INTEGER NOT NULL,
countycd      INTEGER NOT NULL,
o3plot        DOUBLE PRECISION NOT NULL,
field_id      INTEGER,
split_plotid  INTEGER,
measyear      INTEGER,
measmon       INTEGER,
measday       INTEGER,
lat           DECIMAL(8,6),
lon           DECIMAL(9,6),
elevation     DOUBLE PRECISION,
manual        DECIMAL(3,1) NOT NULL,
qa_status     INTEGER,
created_date  TIMESTAMP(0),
modified_date TIMESTAMP(0),
cycle         INTEGER,
subcycle      INTEGER
);
comment on column fs_fiadb.ozone_plot.cn
  is 'NA';
comment on column fs_fiadb.ozone_plot.srv_cn
  is 'NA';
comment on column fs_fiadb.ozone_plot.cty_cn
  is 'NA';
comment on column fs_fiadb.ozone_plot.invyr
  is 'NA';
comment on column fs_fiadb.ozone_plot.statecd
  is 'NA';
comment on column fs_fiadb.ozone_plot.unitcd
  is 'NA';
comment on column fs_fiadb.ozone_plot.countycd
  is 'NA';
comment on column fs_fiadb.ozone_plot.o3plot
  is 'NA';
comment on column fs_fiadb.ozone_plot.field_id
  is 'NA';
comment on column fs_fiadb.ozone_plot.split_plotid
  is 'NA';
comment on column fs_fiadb.ozone_plot.measyear
  is 'NA';
comment on column fs_fiadb.ozone_plot.measmon
  is 'NA';
comment on column fs_fiadb.ozone_plot.measday
  is 'NA';
comment on column fs_fiadb.ozone_plot.lat
  is 'NA';
comment on column fs_fiadb.ozone_plot.lon
  is 'NA';
comment on column fs_fiadb.ozone_plot.elevation
  is 'NA';
comment on column fs_fiadb.ozone_plot.manual
  is 'NA';
comment on column fs_fiadb.ozone_plot.qa_status
  is 'NA';
comment on column fs_fiadb.ozone_plot.created_date
  is 'NA';
comment on column fs_fiadb.ozone_plot.modified_date
  is 'NA';
comment on column fs_fiadb.ozone_plot.cycle
  is 'NA';
comment on column fs_fiadb.ozone_plot.subcycle
  is 'NA';
create index NOP_CTY_FK_I on FS_FIADB.OZONE_PLOT (CTY_CN);
create index NOP_SRV_FK_I on FS_FIADB.OZONE_PLOT (SRV_CN);
alter table FS_FIADB.OZONE_PLOT add constraint NOP_PK primary key (CN);
alter table FS_FIADB.OZONE_PLOT add constraint NOP_UK unique (INVYR, STATECD, FIELD_ID, COUNTYCD, SPLIT_PLOTID, O3PLOT);
alter table FS_FIADB.OZONE_PLOT add constraint NOP_CTY_FK foreign key (CTY_CN) references FS_FIADB.COUNTY (CN);
alter table FS_FIADB.OZONE_PLOT add constraint NOP_SRV_FK foreign key (SRV_CN) references FS_FIADB.SURVEY (CN);