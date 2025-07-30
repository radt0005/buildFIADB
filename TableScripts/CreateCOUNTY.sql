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
comment on column fs_fiadb.county.statecd
  is 'State code';
comment on column fs_fiadb.county.unitcd
  is 'Survey unit code';
comment on column fs_fiadb.county.countycd
  is 'County code';
comment on column fs_fiadb.county.countynm
  is 'County name';
comment on column fs_fiadb.county.cn
  is 'Unique index';
comment on column fs_fiadb.county.created_date
  is 'Created date';
comment on column fs_fiadb.county.modified_date
  is 'Modified date';
alter table FS_FIADB.COUNTY add constraint CTY_PK primary key (CN);
alter table FS_FIADB.COUNTY add constraint CTY_UK unique (COUNTYCD, UNITCD, STATECD);