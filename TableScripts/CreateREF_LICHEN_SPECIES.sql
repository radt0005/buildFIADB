-- Create table
create table FS_FIADB.REF_LICHEN_SPECIES
(
  lich_sppcd           INT not null,
  yearstart            SMALLINT not null,
  yearend              SMALLINT,
  spp_acronym          VARCHAR(6) not null,
  genus                VARCHAR(40) not null,
  species              VARCHAR(50),
  cn                   VARCHAR(34) not null,
  created_by           VARCHAR(30),
  created_date         TIMESTAMP(0),
  created_in_instance  VARCHAR(6),
  modified_by          VARCHAR(30),
  modified_date        TIMESTAMP(0),
  modified_in_instance VARCHAR(6)
);
-- Add comments to the table 
comment on table FS_FIADB.REF_LICHEN_SPECIES
  is '6.0';
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.REF_LICHEN_SPECIES
  add constraint LNS_PK primary key (CN);
alter table FS_FIADB.REF_LICHEN_SPECIES
  add constraint LNS_UK unique (LICH_SPPCD, SPP_ACRONYM, GENUS, YEARSTART);