-- Create table
create table FS_FIADB.REF_OWNGRPCD
(
  owngrpcd             SMALLINT not null,
  meaning              VARCHAR(100) not null,
  created_by           VARCHAR(30),
  created_date         TIMESTAMP(0),
  created_in_instance  VARCHAR(6),
  modified_by          VARCHAR(30),
  modified_date        TIMESTAMP(0),
  modified_in_instance VARCHAR(6)
);
-- Add comments to the table 
comment on table FS_FIADB.REF_OWNGRPCD
  is 'V3.0 - OWNER GROUP CODE REFERENCE TABLE';
-- Add comments to the columns 
comment on column FS_FIADB.REF_OWNGRPCD.owngrpcd
  is 'Owner group code.';
comment on column FS_FIADB.REF_OWNGRPCD.created_by
  is 'Created by';
comment on column FS_FIADB.REF_OWNGRPCD.created_date
  is 'Created Date';
comment on column FS_FIADB.REF_OWNGRPCD.created_in_instance
  is 'Created in Instance';
comment on column FS_FIADB.REF_OWNGRPCD.modified_by
  is 'Modified by';
comment on column FS_FIADB.REF_OWNGRPCD.modified_date
  is 'Modified Date';
comment on column FS_FIADB.REF_OWNGRPCD.modified_in_instance
  is 'Modified in Instance';
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.REF_OWNGRPCD
  add constraint REF_OWNGRPCD_PK primary key (OWNGRPCD);
