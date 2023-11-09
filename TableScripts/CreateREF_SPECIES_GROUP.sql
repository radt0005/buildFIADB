-- Create table
create table FS_FIADB.REF_SPECIES_GROUP
(
  cn                   VARCHAR(34),
  spgrpcd              SMALLINT not null,
  name                 VARCHAR(40),
  region               VARCHAR(20),
  class                VARCHAR(8),
  created_by           VARCHAR(30),
  created_date         TIMESTAMP(0),
  created_in_instance  VARCHAR(6),
  modified_by          VARCHAR(30),
  modified_date        TIMESTAMP(0),
  modified_in_instance VARCHAR(6)
);
-- Add comments to the table 
comment on table FS_FIADB.REF_SPECIES_GROUP
  is '6.0';
-- Add comments to the columns 
comment on column FS_FIADB.REF_SPECIES_GROUP.created_by
  is 'Created by';
comment on column FS_FIADB.REF_SPECIES_GROUP.created_date
  is 'Created Date';
comment on column FS_FIADB.REF_SPECIES_GROUP.created_in_instance
  is 'Created in Instance';
comment on column FS_FIADB.REF_SPECIES_GROUP.modified_by
  is 'Modified by';
comment on column FS_FIADB.REF_SPECIES_GROUP.modified_date
  is 'Modified Date';
comment on column FS_FIADB.REF_SPECIES_GROUP.modified_in_instance
  is 'Modified in Instance';
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.REF_SPECIES_GROUP
  add constraint SGP_PK primary key (SPGRPCD);
