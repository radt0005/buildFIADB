CREATE TABLE fs_fiadb.ref_tree_stnd_dead_cr_prop
(
cn          DOUBLE PRECISION NOT NULL,
ecoprov     VARCHAR(10) NOT NULL,
sftwd_hrdwd VARCHAR(1) NOT NULL,
cr_mean     DECIMAL(4,3)
);
comment on column fs_fiadb.ref_tree_stnd_dead_cr_prop.cn
  is 'Surrogate primary key.';
comment on column fs_fiadb.ref_tree_stnd_dead_cr_prop.ecoprov
  is 'The ecological provence.';
comment on column fs_fiadb.ref_tree_stnd_dead_cr_prop.sftwd_hrdwd
  is 'Flag indicating softwood or hardwood.  Values are S or H respectively.';
comment on column fs_fiadb.ref_tree_stnd_dead_cr_prop.cr_mean
  is 'The mean crown ratio for the ecoprov and sftwd_hrdwood combination.';
alter table FS_FIADB.REF_TREE_STND_DEAD_CR_PROP add constraint REFTSDCP_PK primary key (CN);
alter table FS_FIADB.REF_TREE_STND_DEAD_CR_PROP add constraint REFTSDCP_UK unique (ECOPROV, SFTWD_HRDWD);