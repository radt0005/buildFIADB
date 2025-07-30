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
comment on column fs_fiadb.ref_sieqn.cn
  is 'Unique record identifier for the current hierarchy record';
comment on column fs_fiadb.ref_sieqn.sieqn_ref_cd
  is 'Site index equation code';
comment on column fs_fiadb.ref_sieqn.sieqn_ref_notes
  is 'Site index equation references and notes';
comment on column fs_fiadb.ref_sieqn.sieqn_loc_desc_fsveg
  is 'Site index equation coverage are in FSVeg';
comment on column fs_fiadb.ref_sieqn.sieqn_age_basis
  is 'Base age basis';
comment on column fs_fiadb.ref_sieqn.created_date
  is 'Created Date ';
comment on column fs_fiadb.ref_sieqn.modified_date
  is 'Modified Date';
alter table FS_FIADB.REF_SIEQN add constraint REF_SIEQN_PK primary key (CN);
alter table FS_FIADB.REF_SIEQN add constraint REF_SIEQN_UK unique (SIEQN_REF_CD);