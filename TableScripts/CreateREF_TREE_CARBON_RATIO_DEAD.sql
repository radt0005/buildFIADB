CREATE TABLE fs_fiadb.ref_tree_carbon_ratio_dead
(
cn           DOUBLE PRECISION NOT NULL,
sftwd_hrdwd  VARCHAR(1) NOT NULL,
decaycd      INTEGER NOT NULL,
carbon_ratio DECIMAL(6,5) NOT NULL
);
comment on column fs_fiadb.ref_tree_carbon_ratio_dead.cn
  is 'Surrogate primary key.';
comment on column fs_fiadb.ref_tree_carbon_ratio_dead.sftwd_hrdwd
  is 'Flag indicating softwood or hardwood.  Values are S or H respectively.';
comment on column fs_fiadb.ref_tree_carbon_ratio_dead.decaycd
  is 'Decay class code.';
comment on column fs_fiadb.ref_tree_carbon_ratio_dead.carbon_ratio
  is 'The biomass to carbon ratio.';
alter table FS_FIADB.REF_TREE_CARBON_RATIO_DEAD add constraint REFTCRD_PK primary key (CN);
alter table FS_FIADB.REF_TREE_CARBON_RATIO_DEAD add constraint REFTCRD_UK unique (DECAYCD, SFTWD_HRDWD);