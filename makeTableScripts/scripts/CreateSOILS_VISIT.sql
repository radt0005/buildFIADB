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
create index SVT_NAT_I on FS_FIADB.SOILS_VISIT (STATECD, INVYR, COUNTYCD, PLOT);
alter table FS_FIADB.SOILS_VISIT add constraint SVT_PK primary key (CN);
alter table FS_FIADB.SOILS_VISIT add constraint SVT_UK unique (PLT_CN);
alter table FS_FIADB.SOILS_VISIT add constraint SVT_PLT_FK foreign key (PLT_CN) references FS_FIADB.PLOT (CN);