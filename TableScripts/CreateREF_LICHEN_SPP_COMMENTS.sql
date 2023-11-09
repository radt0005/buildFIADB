-- Create table
create table FS_FIADB.REF_LICHEN_SPP_COMMENTS
(
  lich_sppcd           INT not null,
  spp_name             VARCHAR(80) not null,
  yearend              SMALLINT,
  yearstart            SMALLINT not null,
  spp_comments         VARCHAR(2000) not null,
  cn                   VARCHAR(34) not null,
  created_by           VARCHAR(30),
  created_date         TIMESTAMP(0),
  created_in_instance  VARCHAR(6),
  modified_by          VARCHAR(30),
  modified_date        TIMESTAMP(0),
  modified_in_instance VARCHAR(6)
);
-- Add comments to the table 
comment on table FS_FIADB.REF_LICHEN_SPP_COMMENTS
  is '6.0';
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.REF_LICHEN_SPP_COMMENTS
  add constraint LCM_PK primary key (CN);
alter table FS_FIADB.REF_LICHEN_SPP_COMMENTS
  add constraint LCM_UK unique (LICH_SPPCD, SPP_NAME, YEARSTART);