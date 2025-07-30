CREATE TABLE fs_fiadb.ref_forest_type
(
value                INTEGER NOT NULL,
meaning              VARCHAR(80) NOT NULL,
typgrpcd             INTEGER NOT NULL,
manual_start         DECIMAL(3,1),
manual_end           DECIMAL(3,1),
allowed_in_field     VARCHAR(1),
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6)
);
comment on column fs_fiadb.ref_forest_type.value
  is 'NA';
comment on column fs_fiadb.ref_forest_type.meaning
  is 'NA';
comment on column fs_fiadb.ref_forest_type.typgrpcd
  is 'NA';
comment on column fs_fiadb.ref_forest_type.manual_start
  is 'NA';
comment on column fs_fiadb.ref_forest_type.manual_end
  is 'NA';
comment on column fs_fiadb.ref_forest_type.allowed_in_field
  is 'Determines whether code is allowed to be used in the field';
comment on column fs_fiadb.ref_forest_type.created_by
  is 'Created by';
comment on column fs_fiadb.ref_forest_type.created_date
  is 'Created Date';
comment on column fs_fiadb.ref_forest_type.created_in_instance
  is 'Created in Instance';
comment on column fs_fiadb.ref_forest_type.modified_by
  is 'Modified by';
comment on column fs_fiadb.ref_forest_type.modified_date
  is 'Modified Date';
comment on column fs_fiadb.ref_forest_type.modified_in_instance
  is 'Modified in Instance';
alter table FS_FIADB.REF_FOREST_TYPE add constraint RFT_PK primary key (VALUE);