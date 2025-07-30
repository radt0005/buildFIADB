CREATE TABLE fs_fiadb.ref_fvs_loc_name
(
cn               VARCHAR(34) NOT NULL,
fvs_loc_cd       INTEGER NOT NULL,
fvs_loc_cd_name  VARCHAR(70),
manual_start     DECIMAL(3,1),
manual_end       DECIMAL(3,1),
allowed_in_field VARCHAR(1),
created_date     TIMESTAMP(0),
modified_date    TIMESTAMP(0)
);
comment on column fs_fiadb.ref_fvs_loc_name.cn
  is 'Sequence number (surrogate primary key)';
comment on column fs_fiadb.ref_fvs_loc_name.fvs_loc_cd
  is 'FVS location code';
comment on column fs_fiadb.ref_fvs_loc_name.fvs_loc_cd_name
  is 'FVS location name';
comment on column fs_fiadb.ref_fvs_loc_name.manual_start
  is 'Manual start';
comment on column fs_fiadb.ref_fvs_loc_name.manual_end
  is 'Manual end';
comment on column fs_fiadb.ref_fvs_loc_name.allowed_in_field
  is 'Allowed in field';
comment on column fs_fiadb.ref_fvs_loc_name.created_date
  is 'Created date';
comment on column fs_fiadb.ref_fvs_loc_name.modified_date
  is 'Modified date';
alter table FS_FIADB.REF_FVS_LOC_NAME add constraint RFLN_PK primary key (FVS_LOC_CD);