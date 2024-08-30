CREATE TABLE fs_fiadb.ref_grnd_lyr
(
cn                  DOUBLE PRECISION NOT NULL,
grnd_lyr_config     VARCHAR(20) NOT NULL,
functional_group_cd VARCHAR(10) NOT NULL,
carbon_pct          DECIMAL(5,2),
nitrogen_pct        DECIMAL(5,2),
bulkdensity_coeff_m DECIMAL(5,4),
bulkdensity_coeff_a DECIMAL(5,4),
bulkdensity_coeff_b DECIMAL(6,4),
created_date        TIMESTAMP(0) NOT NULL,
modified_date       TIMESTAMP(0)
);
alter table FS_FIADB.REF_GRND_LYR add constraint REFGLYR_PK primary key (CN);
alter table FS_FIADB.REF_GRND_LYR add constraint REFGLYR_UK unique (GRND_LYR_CONFIG, FUNCTIONAL_GROUP_CD);