CREATE TABLE fs_fiadb.ref_tree_stnd_dead_cr_prop
(
cn          DOUBLE PRECISION NOT NULL,
ecoprov     VARCHAR(10) NOT NULL,
sftwd_hrdwd VARCHAR(1) NOT NULL,
cr_mean     DECIMAL(4,3)
);
alter table FS_FIADB.REF_TREE_STND_DEAD_CR_PROP add constraint REFTSDCP_PK primary key (CN);
alter table FS_FIADB.REF_TREE_STND_DEAD_CR_PROP add constraint REFTSDCP_UK unique (ECOPROV, SFTWD_HRDWD);