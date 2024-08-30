CREATE TABLE fs_fiadb.veg_visit
(
cn                  VARCHAR(34) NOT NULL,
plt_cn              VARCHAR(34) NOT NULL,
invyr               INTEGER NOT NULL,
statecd             INTEGER NOT NULL,
countycd            INTEGER NOT NULL,
plot                INTEGER NOT NULL,
veg_qa_status       INTEGER,
veg_kindcd          INTEGER,
veg_manual          VARCHAR(8),
trace_cover_allowed INTEGER,
veg_measyear        INTEGER,
veg_measmon         INTEGER,
veg_measday         INTEGER,
veg_sample_basis    INTEGER,
created_date        TIMESTAMP(0),
modified_date       TIMESTAMP(0),
qa_status           INTEGER
);
create index VVT_NAT_I on FS_FIADB.VEG_VISIT (STATECD, INVYR, COUNTYCD, PLOT);
alter table FS_FIADB.VEG_VISIT add constraint VVT_PK primary key (CN);
alter table FS_FIADB.VEG_VISIT add constraint VVT_UK unique (PLT_CN);
alter table FS_FIADB.VEG_VISIT add constraint VVT_PLT_FK foreign key (PLT_CN) references FS_FIADB.PLOT (CN);