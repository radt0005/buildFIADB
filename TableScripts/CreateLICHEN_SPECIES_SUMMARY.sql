CREATE TABLE fs_fiadb.lichen_species_summary
(
cn                  VARCHAR(34) NOT NULL,
invyr               INTEGER NOT NULL,
lichen_region       INTEGER NOT NULL,
lich_sppcd          INTEGER NOT NULL,
measyear            INTEGER NOT NULL,
lichen_region_descr VARCHAR(80) NOT NULL,
spp_acronym         VARCHAR(6) NOT NULL,
genus               VARCHAR(40) NOT NULL,
sum_abundance       DECIMAL(7,4) NOT NULL,
frequency_pct       INTEGER NOT NULL,
species             VARCHAR(50),
plots_in_region     INTEGER NOT NULL,
created_date        TIMESTAMP(0),
modified_date       TIMESTAMP(0)
);
comment on column fs_fiadb.lichen_species_summary.cn
  is 'NA';
comment on column fs_fiadb.lichen_species_summary.invyr
  is 'NA';
comment on column fs_fiadb.lichen_species_summary.lichen_region
  is 'NA';
comment on column fs_fiadb.lichen_species_summary.lich_sppcd
  is 'NA';
comment on column fs_fiadb.lichen_species_summary.measyear
  is 'measurement year';
comment on column fs_fiadb.lichen_species_summary.lichen_region_descr
  is 'NA';
comment on column fs_fiadb.lichen_species_summary.spp_acronym
  is 'NA';
comment on column fs_fiadb.lichen_species_summary.genus
  is 'NA';
comment on column fs_fiadb.lichen_species_summary.sum_abundance
  is 'NA';
comment on column fs_fiadb.lichen_species_summary.frequency_pct
  is 'NA';
comment on column fs_fiadb.lichen_species_summary.species
  is 'NA';
comment on column fs_fiadb.lichen_species_summary.plots_in_region
  is 'NA';
comment on column fs_fiadb.lichen_species_summary.created_date
  is 'NA';
comment on column fs_fiadb.lichen_species_summary.modified_date
  is 'NA';
alter table FS_FIADB.LICHEN_SPECIES_SUMMARY add constraint LSY_PK primary key (CN);
alter table FS_FIADB.LICHEN_SPECIES_SUMMARY add constraint LSY_UK unique (INVYR, LICHEN_REGION, LICH_SPPCD);