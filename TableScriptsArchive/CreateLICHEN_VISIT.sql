-- Create table
create table FS_FIADB.LICHEN_VISIT
(
  cn                   VARCHAR(34) not null,
  plt_cn               VARCHAR(34) not null,
  invyr                SMALLINT not null,
  statecd              SMALLINT not null,
  countycd             SMALLINT not null,
  plot                 INT not null,
  measday              SMALLINT,
  measmon              SMALLINT,
  measyear             SMALLINT not null,
  lichen_statcd        SMALLINT not null,
  liprojcd             SMALLINT,
  smplstrt             SMALLINT,
  smplstp              SMALLINT,
  smpltime             SMALLINT,
  sftwdpct             SMALLINT,
  hrdwdpct             SMALLINT,
  shrubpct             SMALLINT,
  gappct               SMALLINT,
  gaprcnt              SMALLINT,
  tallshrb             SMALLINT,
  ftrcd1               DOUBLE PRECISION,
  ftrcd2               DOUBLE PRECISION,
  ftrcd3               DOUBLE PRECISION,
  ftrcd4               DOUBLE PRECISION,
  issuecd1             DOUBLE PRECISION,
  issuecd2             DOUBLE PRECISION,
  issuecd3             DOUBLE PRECISION,
  issuecd4             DOUBLE PRECISION,
  szclscd1             SMALLINT,
  szclscd2             SMALLINT,
  szclscd3             SMALLINT,
  created_by           VARCHAR(30),
  created_date         TIMESTAMP(0),
  created_in_instance  VARCHAR(6),
  modified_by          VARCHAR(30),
  modified_date        TIMESTAMP(0),
  modified_in_instance VARCHAR(6),
  qa_status            SMALLINT
);
-- Add comments to the table 
comment on table FS_FIADB.LICHEN_VISIT
  is '6.0';
-- Add comments to the columns 
comment on column FS_FIADB.LICHEN_VISIT.cn
  is 'Unique Index';
comment on column FS_FIADB.LICHEN_VISIT.plt_cn
  is 'Foreign Key to NIMS_PLOT';
comment on column FS_FIADB.LICHEN_VISIT.statecd
  is 'state code';
comment on column FS_FIADB.LICHEN_VISIT.countycd
  is 'County Code';
comment on column FS_FIADB.LICHEN_VISIT.plot
  is 'P2 Plot Number';
comment on column FS_FIADB.LICHEN_VISIT.measday
  is 'Measurement Day';
comment on column FS_FIADB.LICHEN_VISIT.measmon
  is 'Measurement Month';
comment on column FS_FIADB.LICHEN_VISIT.measyear
  is 'Measurement Year';
comment on column FS_FIADB.LICHEN_VISIT.lichen_statcd
  is 'Lichens Collected';
comment on column FS_FIADB.LICHEN_VISIT.liprojcd
  is 'Lichen Project Code';
comment on column FS_FIADB.LICHEN_VISIT.smplstrt
  is 'Sample Start Time';
comment on column FS_FIADB.LICHEN_VISIT.smplstp
  is 'Sample Stop Time';
comment on column FS_FIADB.LICHEN_VISIT.smpltime
  is 'Total Sample Time';
comment on column FS_FIADB.LICHEN_VISIT.sftwdpct
  is 'Percent Conifer';
comment on column FS_FIADB.LICHEN_VISIT.hrdwdpct
  is 'Percent Hardwood';
comment on column FS_FIADB.LICHEN_VISIT.shrubpct
  is 'Percent Shrub';
comment on column FS_FIADB.LICHEN_VISIT.gappct
  is 'Gap Percent';
comment on column FS_FIADB.LICHEN_VISIT.gaprcnt
  is 'Gap Recent';
comment on column FS_FIADB.LICHEN_VISIT.tallshrb
  is 'Tall Shrubs';
comment on column FS_FIADB.LICHEN_VISIT.ftrcd1
  is 'Features (1-4)';
comment on column FS_FIADB.LICHEN_VISIT.ftrcd2
  is 'Features (1-4)';
comment on column FS_FIADB.LICHEN_VISIT.ftrcd3
  is 'Features (1-4)';
comment on column FS_FIADB.LICHEN_VISIT.ftrcd4
  is 'Features (1-4)';
comment on column FS_FIADB.LICHEN_VISIT.issuecd1
  is 'Issues (1-4)';
comment on column FS_FIADB.LICHEN_VISIT.issuecd2
  is 'Issues (1-4)';
comment on column FS_FIADB.LICHEN_VISIT.issuecd3
  is 'Issues (1-4)';
comment on column FS_FIADB.LICHEN_VISIT.issuecd4
  is 'Issues (1-4)';
comment on column FS_FIADB.LICHEN_VISIT.szclscd1
  is 'Size Class Code';
comment on column FS_FIADB.LICHEN_VISIT.szclscd2
  is 'Size Class Code';
comment on column FS_FIADB.LICHEN_VISIT.szclscd3
  is 'Size Class Code';
comment on column FS_FIADB.LICHEN_VISIT.created_by
  is 'Created by';
comment on column FS_FIADB.LICHEN_VISIT.created_date
  is 'Created Date';
comment on column FS_FIADB.LICHEN_VISIT.created_in_instance
  is 'Created in Instance';
comment on column FS_FIADB.LICHEN_VISIT.modified_by
  is 'Modified by';
comment on column FS_FIADB.LICHEN_VISIT.modified_date
  is 'Modified Date';
comment on column FS_FIADB.LICHEN_VISIT.modified_in_instance
  is 'Modified in Instance';
comment on column FS_FIADB.LICHEN_VISIT.qa_status
  is 'qa status code';
-- Create/Recreate indexes 
create index LVT_NAT_I on FS_FIADB.LICHEN_VISIT (STATECD, INVYR, PLOT, COUNTYCD);
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.LICHEN_VISIT
  add constraint LVT_PK primary key (CN);
alter table FS_FIADB.LICHEN_VISIT
  add constraint LVT_UK unique (PLT_CN);
alter table FS_FIADB.LICHEN_VISIT
  add constraint LVT_PLT_FK foreign key (PLT_CN)
  references FS_FIADB.PLOT (CN);