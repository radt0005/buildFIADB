CREATE TABLE fs_fiadb.ref_research_station
(
statecd       INTEGER NOT NULL,
rscd          INTEGER,
rs            VARCHAR(5),
state_name    VARCHAR(40) NOT NULL,
state_abbr    VARCHAR(4) NOT NULL,
created_date  TIMESTAMP(0),
modified_date TIMESTAMP(0)
);
alter table FS_FIADB.REF_RESEARCH_STATION add constraint RES_PK primary key (STATECD);