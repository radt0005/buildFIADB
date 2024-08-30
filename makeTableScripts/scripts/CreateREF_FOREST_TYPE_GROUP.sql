CREATE TABLE fs_fiadb.ref_forest_type_group
(
value                INTEGER NOT NULL,
meaning              VARCHAR(80),
abbr                 VARCHAR(40),
duff_density         DECIMAL(12,10),
duff_carbon_ratio    DECIMAL(12,11),
litter_density       DECIMAL(12,10),
litter_carbon_ratio  DECIMAL(12,11),
pile_density         DECIMAL(12,10),
pile_carbon_ratio    DECIMAL(12,11),
pile_decay_ratio     DECIMAL(12,11),
fwd_density          DECIMAL(12,10),
fwd_carbon_ratio     DECIMAL(12,11),
fwd_decay_ratio      DECIMAL(12,11),
fwd_small_qmd        DECIMAL(12,10),
fwd_medium_qmd       DECIMAL(12,10),
fwd_large_qmd        DECIMAL(12,10),
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6)
);
alter table FS_FIADB.REF_FOREST_TYPE_GROUP add constraint FTGP_PK primary key (VALUE);