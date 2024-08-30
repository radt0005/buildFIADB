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
create index NOP_CTY_FK_I on FS_FIADB.OZONE_PLOT (CTY_CN);
create index NOP_SRV_FK_I on FS_FIADB.OZONE_PLOT (SRV_CN);
alter table FS_FIADB.OZONE_PLOT add constraint NOP_PK primary key (CN);
alter table FS_FIADB.OZONE_PLOT add constraint NOP_UK unique (STATECD, INVYR, COUNTYCD, O3PLOT, FIELD_ID, SPLIT_PLOTID);
alter table FS_FIADB.OZONE_PLOT add constraint NOP_CTY_FK foreign key (CTY_CN) references FS_FIADB.COUNTY (CN);
alter table FS_FIADB.OZONE_PLOT add constraint NOP_SRV_FK foreign key (SRV_CN) references FS_FIADB.SURVEY (CN);