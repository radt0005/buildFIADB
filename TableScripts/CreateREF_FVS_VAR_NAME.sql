CREATE TABLE fs_fiadb.ref_fvs_var_name
(
cn               VARCHAR(34) NOT NULL,
fvs_variant      VARCHAR(2),
fvs_var_name     VARCHAR(65),
manual_start     DECIMAL(3,1),
manual_end       DECIMAL(3,1),
allowed_in_field VARCHAR(1),
created_date     TIMESTAMP(0),
modified_date    TIMESTAMP(0)
);
alter table FS_FIADB.REF_FVS_VAR_NAME add constraint RFVN_PK primary key (CN);