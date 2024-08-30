-- Create table
create table FS_FIADB.REF_CITATION
(
  citation_nbr         INT not null,
  citation             VARCHAR(2000),
  created_by           VARCHAR(30),
  created_date         TIMESTAMP(0),
  created_in_instance  VARCHAR(6),
  modified_by          VARCHAR(30),
  modified_date        TIMESTAMP(0),
  modified_in_instance VARCHAR(6)
);
-- Add comments to the table 
comment on table FS_FIADB.REF_CITATION
  is '6.0';
-- Add comments to the columns 
comment on column FS_FIADB.REF_CITATION.citation_nbr
  is 'Citation number';
comment on column FS_FIADB.REF_CITATION.citation
  is 'Citation';
comment on column FS_FIADB.REF_CITATION.created_by
  is 'Created by';
comment on column FS_FIADB.REF_CITATION.created_date
  is 'Created Date';
comment on column FS_FIADB.REF_CITATION.created_in_instance
  is 'Created in Instance';
comment on column FS_FIADB.REF_CITATION.modified_by
  is 'Modified by';
comment on column FS_FIADB.REF_CITATION.modified_date
  is 'Modified Date';
comment on column FS_FIADB.REF_CITATION.modified_in_instance
  is 'Modified in Instance';
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.REF_CITATION
  add constraint CIT_PK primary key (CITATION_NBR);
