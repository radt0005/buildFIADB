CREATE TABLE fs_fiadb.ref_species_group
(
spgrpcd       INTEGER NOT NULL,
name          VARCHAR(40) NOT NULL,
region        VARCHAR(4000),
class         VARCHAR(4000),
created_date  TIMESTAMP(0),
modified_date TIMESTAMP(0)
);
create index RSG_SPGRPCD_I on FS_FIADB.REF_SPECIES_GROUP (SPGRPCD);