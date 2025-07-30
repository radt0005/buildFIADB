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
comment on column fs_fiadb.ref_fvs_var_name.cn
  is 'Sequence number (surrogate primary key)';
comment on column fs_fiadb.ref_fvs_var_name.fvs_variant
  is 'FVS variant';
comment on column fs_fiadb.ref_fvs_var_name.fvs_var_name
  is 'FVS variant name';
comment on column fs_fiadb.ref_fvs_var_name.manual_start
  is 'Manual start';
comment on column fs_fiadb.ref_fvs_var_name.manual_end
  is 'Manual end';
comment on column fs_fiadb.ref_fvs_var_name.allowed_in_field
  is 'Allowed in field';
comment on column fs_fiadb.ref_fvs_var_name.created_date
  is 'Created date';
comment on column fs_fiadb.ref_fvs_var_name.modified_date
  is 'Modified date';
alter table FS_FIADB.REF_FVS_VAR_NAME add constraint RFVN_PK primary key (CN);