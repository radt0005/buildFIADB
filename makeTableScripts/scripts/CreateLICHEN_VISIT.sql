CREATE TABLE fs_fiadb.lichen_visit
(
cn                   VARCHAR(34) NOT NULL,
plt_cn               VARCHAR(34) NOT NULL,
invyr                INTEGER NOT NULL,
statecd              INTEGER NOT NULL,
countycd             INTEGER NOT NULL,
plot                 INTEGER NOT NULL,
measday              INTEGER,
measmon              INTEGER,
measyear             INTEGER NOT NULL,
lichen_statcd        INTEGER NOT NULL,
liprojcd             INTEGER,
smplstrt             INTEGER,
smplstp              INTEGER,
smpltime             INTEGER,
sftwdpct             INTEGER,
hrdwdpct             INTEGER,
shrubpct             INTEGER,
gappct               INTEGER,
gaprcnt              INTEGER,
tallshrb             INTEGER,
ftrcd1               DOUBLE PRECISION,
ftrcd2               DOUBLE PRECISION,
ftrcd3               DOUBLE PRECISION,
ftrcd4               DOUBLE PRECISION,
issuecd1             DOUBLE PRECISION,
issuecd2             DOUBLE PRECISION,
issuecd3             DOUBLE PRECISION,
issuecd4             DOUBLE PRECISION,
szclscd1             INTEGER,
szclscd2             INTEGER,
szclscd3             INTEGER,
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6),
qa_status            INTEGER
);
comment on column fs_fiadb.lichen_visit.cn
  is 'Unique Index';
comment on column fs_fiadb.lichen_visit.plt_cn
  is 'Foreign Key to NIMS_PLOT';
comment on column fs_fiadb.lichen_visit.invyr
  is 'NA';
comment on column fs_fiadb.lichen_visit.statecd
  is 'state code';
comment on column fs_fiadb.lichen_visit.countycd
  is 'County Code';
comment on column fs_fiadb.lichen_visit.plot
  is 'P2 Plot Number';
comment on column fs_fiadb.lichen_visit.measday
  is 'Measurement Day';
comment on column fs_fiadb.lichen_visit.measmon
  is 'Measurement Month';
comment on column fs_fiadb.lichen_visit.measyear
  is 'Measurement Year';
comment on column fs_fiadb.lichen_visit.lichen_statcd
  is 'Lichens Collected';
comment on column fs_fiadb.lichen_visit.liprojcd
  is 'Lichen Project Code';
comment on column fs_fiadb.lichen_visit.smplstrt
  is 'Sample Start Time';
comment on column fs_fiadb.lichen_visit.smplstp
  is 'Sample Stop Time';
comment on column fs_fiadb.lichen_visit.smpltime
  is 'Total Sample Time';
comment on column fs_fiadb.lichen_visit.sftwdpct
  is 'Percent Conifer';
comment on column fs_fiadb.lichen_visit.hrdwdpct
  is 'Percent Hardwood';
comment on column fs_fiadb.lichen_visit.shrubpct
  is 'Percent Shrub';
comment on column fs_fiadb.lichen_visit.gappct
  is 'Gap Percent';
comment on column fs_fiadb.lichen_visit.gaprcnt
  is 'Gap Recent';
comment on column fs_fiadb.lichen_visit.tallshrb
  is 'Tall Shrubs';
comment on column fs_fiadb.lichen_visit.ftrcd1
  is 'Features (1-4)';
comment on column fs_fiadb.lichen_visit.ftrcd2
  is 'Features (1-4)';
comment on column fs_fiadb.lichen_visit.ftrcd3
  is 'Features (1-4)';
comment on column fs_fiadb.lichen_visit.ftrcd4
  is 'Features (1-4)';
comment on column fs_fiadb.lichen_visit.issuecd1
  is 'Issues (1-4)';
comment on column fs_fiadb.lichen_visit.issuecd2
  is 'Issues (1-4)';
comment on column fs_fiadb.lichen_visit.issuecd3
  is 'Issues (1-4)';
comment on column fs_fiadb.lichen_visit.issuecd4
  is 'Issues (1-4)';
comment on column fs_fiadb.lichen_visit.szclscd1
  is 'Size Class Code';
comment on column fs_fiadb.lichen_visit.szclscd2
  is 'Size Class Code';
comment on column fs_fiadb.lichen_visit.szclscd3
  is 'Size Class Code';
comment on column fs_fiadb.lichen_visit.created_by
  is 'Created by';
comment on column fs_fiadb.lichen_visit.created_date
  is 'Created Date';
comment on column fs_fiadb.lichen_visit.created_in_instance
  is 'Created in Instance';
comment on column fs_fiadb.lichen_visit.modified_by
  is 'Modified by';
comment on column fs_fiadb.lichen_visit.modified_date
  is 'Modified Date';
comment on column fs_fiadb.lichen_visit.modified_in_instance
  is 'Modified in Instance';
comment on column fs_fiadb.lichen_visit.qa_status
  is 'qa status code';
create index LVT_NAT_I on FS_FIADB.LICHEN_VISIT (STATECD, INVYR, PLOT, COUNTYCD);
alter table FS_FIADB.LICHEN_VISIT add constraint LVT_PK primary key (CN);
alter table FS_FIADB.LICHEN_VISIT add constraint LVT_UK unique (PLT_CN);
alter table FS_FIADB.LICHEN_VISIT add constraint LVT_PLT_FK foreign key (PLT_CN) references FS_FIADB.PLOT (CN);