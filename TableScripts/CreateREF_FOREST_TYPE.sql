-- Create table
create table FS_FIADB.REF_FOREST_TYPE
(
  value                SMALLINT not null,
  meaning              VARCHAR(80) not null,
  typgrpcd             SMALLINT not null,
  manual_start         DECIMAL(3,1),
  manual_end           DECIMAL(3,1),
  allowed_in_field     VARCHAR(1) default 'Y',
  created_by           VARCHAR(30),
  created_date         TIMESTAMP(0),
  created_in_instance  VARCHAR(6),
  modified_by          VARCHAR(30),
  modified_date        TIMESTAMP(0),
  modified_in_instance VARCHAR(6)
);
-- Add comments to the table 
comment on table FS_FIADB.REF_FOREST_TYPE
  is '6.0';
-- Add comments to the columns 
comment on column FS_FIADB.REF_FOREST_TYPE.allowed_in_field
  is 'Determines whether code is allowed to be used in the field';
comment on column FS_FIADB.REF_FOREST_TYPE.created_by
  is 'Created by';
comment on column FS_FIADB.REF_FOREST_TYPE.created_date
  is 'Created Date';
comment on column FS_FIADB.REF_FOREST_TYPE.created_in_instance
  is 'Created in Instance';
comment on column FS_FIADB.REF_FOREST_TYPE.modified_by
  is 'Modified by';
comment on column FS_FIADB.REF_FOREST_TYPE.modified_date
  is 'Modified Date';
comment on column FS_FIADB.REF_FOREST_TYPE.modified_in_instance
  is 'Modified in Instance';
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.REF_FOREST_TYPE
  add constraint RFT_PK primary key (VALUE);