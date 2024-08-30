CREATE TABLE fs_fiadb.ref_tree_carbon_ratio_dead
(
cn           DOUBLE PRECISION NOT NULL,
sftwd_hrdwd  VARCHAR(1) NOT NULL,
decaycd      INTEGER NOT NULL,
carbon_ratio DECIMAL(6,5) NOT NULL
);
alter table FS_FIADB.REF_TREE_CARBON_RATIO_DEAD add constraint REFTCRD_PK primary key (CN);
alter table FS_FIADB.REF_TREE_CARBON_RATIO_DEAD add constraint REFTCRD_UK unique (SFTWD_HRDWD, DECAYCD);