CREATE TABLE fs_fiadb.county
(
statecd              INTEGER NOT NULL,
unitcd               INTEGER NOT NULL,
countycd             INTEGER NOT NULL,
countynm             VARCHAR(50) NOT NULL,
cn                   VARCHAR(34) NOT NULL,
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6)
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
comment on column fs_fiadb.county.created_by
  is 'Created by';
comment on column fs_fiadb.county.created_date
  is 'Created date';
comment on column fs_fiadb.county.created_in_instance
  is 'Created in instance';
comment on column fs_fiadb.county.modified_by
  is 'Modified by';
comment on column fs_fiadb.county.modified_date
  is 'Modified date';
comment on column fs_fiadb.county.modified_in_instance
  is 'Modified in instance';
alter table FS_FIADB.COUNTY add constraint CTY_PK primary key (CN);
alter table FS_FIADB.COUNTY add constraint CTY_UK unique (STATECD, UNITCD, COUNTYCD);