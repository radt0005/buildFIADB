CREATE TABLE fs_fiadb.soils_visit
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
created_date  TIMESTAMP(0),
modified_date TIMESTAMP(0),
qa_status     INTEGER
);
create index SVT_NAT_I on FS_FIADB.SOILS_VISIT (STATECD, INVYR, COUNTYCD, PLOT);
alter table FS_FIADB.SOILS_VISIT add constraint SVT_PK primary key (CN);
alter table FS_FIADB.SOILS_VISIT add constraint SVT_UK unique (PLT_CN);
alter table FS_FIADB.SOILS_VISIT add constraint SVT_PLT_FK foreign key (PLT_CN) references FS_FIADB.PLOT (CN);