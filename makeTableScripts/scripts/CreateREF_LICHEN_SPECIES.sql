CREATE TABLE fs_fiadb.ref_lichen_species
(
lich_sppcd           INTEGER NOT NULL,
yearstart            INTEGER NOT NULL,
yearend              INTEGER,
spp_acronym          VARCHAR(6) NOT NULL,
genus                VARCHAR(40) NOT NULL,
species              VARCHAR(50),
cn                   VARCHAR(34) NOT NULL,
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6)
);
alter table FS_FIADB.REF_LICHEN_SPECIES add constraint LNS_PK primary key (CN);
alter table FS_FIADB.REF_LICHEN_SPECIES add constraint LNS_UK unique (LICH_SPPCD, SPP_ACRONYM, GENUS, YEARSTART);