-- Create table
create table FS_FIADB.REF_UNIT
(
  statecd              SMALLINT not null,
  value                SMALLINT not null,
  meaning              VARCHAR(80) not null,
  created_by           VARCHAR(30),
  created_date         TIMESTAMP(0),
  created_in_instance  VARCHAR(6),
  modified_by          VARCHAR(30),
  modified_date        TIMESTAMP(0),
  modified_in_instance VARCHAR(6)
);
-- Add comments to the table 
comment on table FS_FIADB.REF_UNIT
  is '6.0';
-- Add comments to the columns 
comment on column FS_FIADB.REF_UNIT.created_by
  is 'Created by';
comment on column FS_FIADB.REF_UNIT.created_date
  is 'Created Date';
comment on column FS_FIADB.REF_UNIT.created_in_instance
  is 'Created in Instance';
comment on column FS_FIADB.REF_UNIT.modified_by
  is 'Modified by';
comment on column FS_FIADB.REF_UNIT.modified_date
  is 'Modified Date';
comment on column FS_FIADB.REF_UNIT.modified_in_instance
  is 'Modified in Instance';
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.REF_UNIT
  add constraint UNT_PK primary key (STATECD, VALUE);