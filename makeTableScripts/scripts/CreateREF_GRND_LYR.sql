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
comment on column fs_fiadb.ref_grnd_lyr.cn
  is 'Surrogate primary key';
comment on column fs_fiadb.ref_grnd_lyr.grnd_lyr_config
  is 'Ground layer configuration name';
comment on column fs_fiadb.ref_grnd_lyr.functional_group_cd
  is 'Ground layer functional group code';
comment on column fs_fiadb.ref_grnd_lyr.carbon_pct
  is 'Percent carbon content';
comment on column fs_fiadb.ref_grnd_lyr.nitrogen_pct
  is 'Percent nitrogen content';
comment on column fs_fiadb.ref_grnd_lyr.bulkdensity_coeff_m
  is 'Coefficient m for calculating bulk density';
comment on column fs_fiadb.ref_grnd_lyr.bulkdensity_coeff_a
  is 'Coefficient a for calculating bulk density';
comment on column fs_fiadb.ref_grnd_lyr.bulkdensity_coeff_b
  is 'Coefficient b for calculating bulk density';
comment on column fs_fiadb.ref_grnd_lyr.created_date
  is 'The date on which the record was originally created.';
comment on column fs_fiadb.ref_grnd_lyr.modified_date
  is 'The date on which the record was last modified.';
alter table FS_FIADB.REF_GRND_LYR add constraint REFGLYR_PK primary key (CN);
alter table FS_FIADB.REF_GRND_LYR add constraint REFGLYR_UK unique (GRND_LYR_CONFIG, FUNCTIONAL_GROUP_CD);