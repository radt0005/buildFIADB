-- Create table
create table FS_FIADB.COUNTY
(
  statecd              SMALLINT not null,
  unitcd               SMALLINT not null,
  countycd             SMALLINT not null,
  countynm             VARCHAR(50) not null,
  cn                   VARCHAR(34) not null,
  created_by           VARCHAR(30),
  created_date         TIMESTAMP(0),
  created_in_instance  VARCHAR(6),
  modified_by          VARCHAR(30),
  modified_date        TIMESTAMP(0),
  modified_in_instance VARCHAR(6));
-- Add comments to the table 
comment on table FS_FIADB.COUNTY
  is '6.0';
-- Add comments to the columns 
comment on column FS_FIADB.COUNTY.statecd
  is 'State code';
comment on column FS_FIADB.COUNTY.unitcd
  is 'Survey unit code';
comment on column FS_FIADB.COUNTY.countycd
  is 'County code';
comment on column FS_FIADB.COUNTY.countynm
  is 'County name';
comment on column FS_FIADB.COUNTY.cn
  is 'Unique index';
comment on column FS_FIADB.COUNTY.created_by
  is 'Created by';
comment on column FS_FIADB.COUNTY.created_date
  is 'Created date';
comment on column FS_FIADB.COUNTY.created_in_instance
  is 'Created in instance';
comment on column FS_FIADB.COUNTY.modified_by
  is 'Modified by';
comment on column FS_FIADB.COUNTY.modified_date
  is 'Modified date';
comment on column FS_FIADB.COUNTY.modified_in_instance
  is 'Modified in instance';
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.COUNTY
  add constraint CTY_PK primary key (CN);
alter table FS_FIADB.COUNTY
  add constraint CTY_UK unique (STATECD, UNITCD, COUNTYCD);
