CREATE TABLE fs_fiadb.ref_invasive_species
(
cn            VARCHAR(34) NOT NULL,
statecd       INTEGER NOT NULL,
symbol        VARCHAR(16) NOT NULL,
inv_group_cd  DOUBLE PRECISION,
unitcd_list   VARCHAR(20),
start_date    TIMESTAMP(0) NOT NULL,
end_date      TIMESTAMP(0),
manual_start  DECIMAL(3,1) NOT NULL,
manual_end    DECIMAL(3,1),
notes         VARCHAR(2000),
created_date  TIMESTAMP(0),
modified_date TIMESTAMP(0)
);
alter table FS_FIADB.REF_INVASIVE_SPECIES add constraint RIS_PK primary key (CN);
alter table FS_FIADB.REF_INVASIVE_SPECIES add constraint RIS_UK unique (STATECD, SYMBOL);