CREATE TABLE fs_fiadb.survey
(
cn            VARCHAR(34) NOT NULL,
invyr         INTEGER NOT NULL,
p3_ozone_ind  VARCHAR(1) NOT NULL,
statecd       INTEGER NOT NULL,
stateab       VARCHAR(2) NOT NULL,
statenm       VARCHAR(40) NOT NULL,
rscd          INTEGER,
ann_inventory VARCHAR(1),
notes         VARCHAR(2000),
created_date  TIMESTAMP(0),
modified_date TIMESTAMP(0),
cycle         INTEGER,
subcycle      INTEGER,
prj_cn        VARCHAR(34) NOT NULL
);
alter table FS_FIADB.SURVEY add constraint SRV_PK primary key (CN);
alter table FS_FIADB.SURVEY add constraint SRV_UK unique (PRJ_CN, STATECD, INVYR, P3_OZONE_IND, CYCLE, SUBCYCLE);
alter table FS_FIADB.SURVEY add constraint SRV_PRJ_FK foreign key (PRJ_CN) references FS_FIADB.PROJECT (CN);