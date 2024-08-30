CREATE TABLE fs_fiadb.county
(
statecd       INTEGER NOT NULL,
unitcd        INTEGER NOT NULL,
countycd      INTEGER NOT NULL,
countynm      VARCHAR(50) NOT NULL,
cn            VARCHAR(34) NOT NULL,
created_date  TIMESTAMP(0),
modified_date TIMESTAMP(0)
);
alter table FS_FIADB.COUNTY add constraint CTY_PK primary key (CN);
alter table FS_FIADB.COUNTY add constraint CTY_UK unique (STATECD, UNITCD, COUNTYCD);