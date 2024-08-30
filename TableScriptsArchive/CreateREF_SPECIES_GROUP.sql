-- Create table
create table FS_FIADB.REF_SPECIES_GROUP
(
  spgrpcd              SMALLINT not null,
  name                 VARCHAR(40),
  region               VARCHAR(20),
  class                VARCHAR(8),
  created_date         TIMESTAMP(0),
  modified_date        TIMESTAMP(0)
);
-- Add comments to the table 
comment on table FS_FIADB.REF_SPECIES_GROUP
  is '6.0';
-- Add comments to the columns 
comment on column FS_FIADB.REF_SPECIES_GROUP.created_date
  is 'Created Date';
comment on column FS_FIADB.REF_SPECIES_GROUP.modified_date
  is 'Modified Date';
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.REF_SPECIES_GROUP
  add constraint SGP_PK primary key (SPGRPCD);
