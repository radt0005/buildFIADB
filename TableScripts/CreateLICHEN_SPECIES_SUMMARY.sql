-- Create table
create table FS_FIADB.LICHEN_SPECIES_SUMMARY
(
  cn                   VARCHAR(34) not null,
  invyr                SMALLINT not null,
  lichen_region        SMALLINT not null,
  lich_sppcd           INT not null,
  measyear             SMALLINT not null,
  lichen_region_descr  VARCHAR(80) not null,
  spp_acronym          VARCHAR(6) not null,
  genus                VARCHAR(40) not null,
  sum_abundance        DECIMAL(7,4) not null,
  frequency_pct        SMALLINT not null,
  species              VARCHAR(50),
  plots_in_region      SMALLINT not null,
  created_by           VARCHAR(30),
  created_date         TIMESTAMP(0),
  created_in_instance  VARCHAR(6),
  modified_by          VARCHAR(30),
  modified_date        TIMESTAMP(0),
  modified_in_instance VARCHAR(6)
);
-- Add comments to the table 
comment on table FS_FIADB.LICHEN_SPECIES_SUMMARY
  is '6.0';
-- Add comments to the columns 
comment on column FS_FIADB.LICHEN_SPECIES_SUMMARY.measyear
  is 'measurement year';
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.LICHEN_SPECIES_SUMMARY
  add constraint LSY_PK primary key (CN);
alter table FS_FIADB.LICHEN_SPECIES_SUMMARY
  add constraint LSY_UK unique (INVYR, LICHEN_REGION, LICH_SPPCD);
