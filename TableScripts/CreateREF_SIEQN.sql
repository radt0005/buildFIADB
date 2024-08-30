CREATE TABLE fs_fiadb.ref_sieqn
(
cn                   VARCHAR(34) NOT NULL,
sieqn_ref_cd         VARCHAR(10),
sieqn_ref_notes      VARCHAR(540),
sieqn_loc_desc_fsveg VARCHAR(100),
sieqn_age_basis      VARCHAR(10),
created_date         TIMESTAMP(0),
modified_date        TIMESTAMP(0)
);
alter table FS_FIADB.REF_SIEQN add constraint REF_SIEQN_PK primary key (CN);
alter table FS_FIADB.REF_SIEQN add constraint REF_SIEQN_UK unique (SIEQN_REF_CD);