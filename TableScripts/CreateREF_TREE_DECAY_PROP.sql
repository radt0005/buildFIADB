CREATE TABLE fs_fiadb.ref_tree_decay_prop
(
cn               DOUBLE PRECISION NOT NULL,
decaycd          INTEGER NOT NULL,
sftwd_hrdwd      VARCHAR(1) NOT NULL,
density_prop     DECIMAL(3,2),
bark_loss_prop   DECIMAL(3,2),
branch_loss_prop DECIMAL(3,2)
);
comment on column fs_fiadb.ref_tree_decay_prop.cn
  is 'Surrogate primary key.';
comment on column fs_fiadb.ref_tree_decay_prop.decaycd
  is 'The decay code.';
comment on column fs_fiadb.ref_tree_decay_prop.sftwd_hrdwd
  is 'Flag indicating softwood or hardwood.  Values are S or H respectively.';
comment on column fs_fiadb.ref_tree_decay_prop.density_prop
  is 'The remaining proportion of the tree.';
comment on column fs_fiadb.ref_tree_decay_prop.bark_loss_prop
  is 'The proportion of tree volume losses in the bark component.';
comment on column fs_fiadb.ref_tree_decay_prop.branch_loss_prop
  is 'The proportion of tree volume losses in the branch component.';
alter table FS_FIADB.REF_TREE_DECAY_PROP add constraint REFTDP_PK primary key (CN);
alter table FS_FIADB.REF_TREE_DECAY_PROP add constraint REFTDP_UK unique (DECAYCD, SFTWD_HRDWD);