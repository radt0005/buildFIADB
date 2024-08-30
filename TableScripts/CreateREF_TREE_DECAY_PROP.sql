CREATE TABLE fs_fiadb.ref_tree_decay_prop
(
cn               DOUBLE PRECISION NOT NULL,
decaycd          INTEGER NOT NULL,
sftwd_hrdwd      VARCHAR(1) NOT NULL,
density_prop     DECIMAL(3,2),
bark_loss_prop   DECIMAL(3,2),
branch_loss_prop DECIMAL(3,2)
);
alter table FS_FIADB.REF_TREE_DECAY_PROP add constraint REFTDP_PK primary key (CN);
alter table FS_FIADB.REF_TREE_DECAY_PROP add constraint REFTDP_UK unique (DECAYCD, SFTWD_HRDWD);