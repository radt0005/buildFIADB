-- Create table
create table FS_FIADB.REF_FIADB_VERSION
(
  version              VARCHAR(40) not null,
  install_type         VARCHAR(10) default 'INITIAL',
  descr                VARCHAR(2000),
  created_by           VARCHAR(30),
  created_date         TIMESTAMP(0),
  created_in_instance  VARCHAR(6),
  modified_by          VARCHAR(30),
  modified_date        TIMESTAMP(0),
  modified_in_instance VARCHAR(6)
);
-- Add comments to the table 
comment on table FS_FIADB.REF_FIADB_VERSION
  is '6.0';
-- Add comments to the columns 
comment on column FS_FIADB.REF_FIADB_VERSION.version
  is 'Version Number';
comment on column FS_FIADB.REF_FIADB_VERSION.descr
  is 'Version Description';
comment on column FS_FIADB.REF_FIADB_VERSION.created_by
  is 'Created By';
comment on column FS_FIADB.REF_FIADB_VERSION.created_date
  is 'Created Date';
comment on column FS_FIADB.REF_FIADB_VERSION.created_in_instance
  is 'Created In Instance';
comment on column FS_FIADB.REF_FIADB_VERSION.modified_by
  is 'Modified By';
comment on column FS_FIADB.REF_FIADB_VERSION.modified_date
  is 'Modified Date';
comment on column FS_FIADB.REF_FIADB_VERSION.modified_in_instance
  is 'Modified In Instance';
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.REF_FIADB_VERSION
  add constraint RFN_PK primary key (VERSION);
