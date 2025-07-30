CREATE TABLE fs_fiadb.ref_species_group
(
spgrpcd       INTEGER NOT NULL,
name          VARCHAR(40) NOT NULL,
region        VARCHAR(4000),
class         VARCHAR(4000),
created_date  TIMESTAMP(0),
modified_date TIMESTAMP(0)
);
comment on column fs_fiadb.ref_species_group.spgrpcd
  is 'Species group code.';
comment on column fs_fiadb.ref_species_group.name
  is 'Species group label.';
comment on column fs_fiadb.ref_species_group.region
  is 'Geographic region indicator generally associated with a species group. Examples are All, Eastern, Western, Tropical/Subtropical.';
comment on column fs_fiadb.ref_species_group.class
  is 'Class of the group.  Examples are  Hardwood , Softwood.';
comment on column fs_fiadb.ref_species_group.created_date
  is 'Created Date; the earliest date a species group code (TAXA_GROUP_CODE) was created.';
comment on column fs_fiadb.ref_species_group.modified_date
  is 'Modified Date; the most recent date a species group code (TAXA_GROUP_CODE) was modified.';
create index RSG_SPGRPCD_I on FS_FIADB.REF_SPECIES_GROUP (SPGRPCD);