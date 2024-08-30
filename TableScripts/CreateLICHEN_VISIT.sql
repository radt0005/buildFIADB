CREATE TABLE fs_fiadb.lichen_visit
(
cn            VARCHAR(34) NOT NULL,
plt_cn        VARCHAR(34) NOT NULL,
invyr         INTEGER NOT NULL,
statecd       INTEGER NOT NULL,
countycd      INTEGER NOT NULL,
plot          INTEGER NOT NULL,
measday       INTEGER,
measmon       INTEGER,
measyear      INTEGER NOT NULL,
lichen_statcd INTEGER NOT NULL,
liprojcd      INTEGER,
smplstrt      INTEGER,
smplstp       INTEGER,
smpltime      INTEGER,
sftwdpct      INTEGER,
hrdwdpct      INTEGER,
shrubpct      INTEGER,
gappct        INTEGER,
gaprcnt       INTEGER,
tallshrb      INTEGER,
ftrcd1        DOUBLE PRECISION,
ftrcd2        DOUBLE PRECISION,
ftrcd3        DOUBLE PRECISION,
ftrcd4        DOUBLE PRECISION,
issuecd1      DOUBLE PRECISION,
issuecd2      DOUBLE PRECISION,
issuecd3      DOUBLE PRECISION,
issuecd4      DOUBLE PRECISION,
szclscd1      INTEGER,
szclscd2      INTEGER,
szclscd3      INTEGER,
created_date  TIMESTAMP(0),
modified_date TIMESTAMP(0),
qa_status     INTEGER
);
create index LVT_NAT_I on FS_FIADB.LICHEN_VISIT (STATECD, INVYR, PLOT, COUNTYCD);
alter table FS_FIADB.LICHEN_VISIT add constraint LVT_PK primary key (CN);
alter table FS_FIADB.LICHEN_VISIT add constraint LVT_UK unique (PLT_CN);
alter table FS_FIADB.LICHEN_VISIT add constraint LVT_PLT_FK foreign key (PLT_CN) references FS_FIADB.PLOT (CN);