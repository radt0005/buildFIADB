CREATE TABLE fs_fiadb.soils_visit
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
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6),
qa_status            INTEGER
);
comment on column fs_fiadb.soils_visit.cn
  is 'Unique Index';
comment on column fs_fiadb.soils_visit.plt_cn
  is 'Foreign Key to NIMS_PLOT';
comment on column fs_fiadb.soils_visit.invyr
  is 'NA';
comment on column fs_fiadb.soils_visit.statecd
  is 'state code';
comment on column fs_fiadb.soils_visit.countycd
  is 'County Code';
comment on column fs_fiadb.soils_visit.plot
  is 'P2 Plot Number';
comment on column fs_fiadb.soils_visit.measday
  is 'Measurement Day';
comment on column fs_fiadb.soils_visit.measmon
  is 'Measurement Month';
comment on column fs_fiadb.soils_visit.measyear
  is 'Measurement Year';
comment on column fs_fiadb.soils_visit.created_by
  is 'Created By';
comment on column fs_fiadb.soils_visit.created_date
  is 'Created Date';
comment on column fs_fiadb.soils_visit.created_in_instance
  is 'Created in Instance';
comment on column fs_fiadb.soils_visit.modified_by
  is 'Modified by';
comment on column fs_fiadb.soils_visit.modified_date
  is 'Modified Date';
comment on column fs_fiadb.soils_visit.modified_in_instance
  is 'Modified in Instance';
comment on column fs_fiadb.soils_visit.qa_status
  is 'qa status code';
create index SVT_NAT_I on FS_FIADB.SOILS_VISIT (STATECD, INVYR, COUNTYCD, PLOT);
alter table FS_FIADB.SOILS_VISIT add constraint SVT_PK primary key (CN);
alter table FS_FIADB.SOILS_VISIT add constraint SVT_UK unique (PLT_CN);
alter table FS_FIADB.SOILS_VISIT add constraint SVT_PLT_FK foreign key (PLT_CN) references FS_FIADB.PLOT (CN);