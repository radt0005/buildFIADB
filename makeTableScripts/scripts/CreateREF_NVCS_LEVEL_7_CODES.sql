CREATE TABLE fs_fiadb.ref_nvcs_level_7_codes
(
cn                    VARCHAR(34) NOT NULL,
primary_class         VARCHAR(8) NOT NULL,
hierarchy_level       INTEGER NOT NULL,
hierarchy_level_label VARCHAR(30) NOT NULL,
nvcs_code             VARCHAR(20) NOT NULL,
meaning               VARCHAR(100) NOT NULL,
note                  VARCHAR(1000),
created_by            VARCHAR(30),
created_date          TIMESTAMP(0),
created_in_instance   VARCHAR(6),
modified_by           VARCHAR(30),
modified_date         TIMESTAMP(0),
modified_in_instance  VARCHAR(6)
);
comment on column fs_fiadb.ref_nvcs_level_7_codes.cn
  is 'Unique record identifier for the current hierarchy record';
comment on column fs_fiadb.ref_nvcs_level_7_codes.primary_class
  is 'The primary classification of the algorithm [NATURAL|CULTURAL]';
comment on column fs_fiadb.ref_nvcs_level_7_codes.hierarchy_level
  is 'An integer value indicating at what level in the National Vegetation Classification System hierarchy the current record exists';
comment on column fs_fiadb.ref_nvcs_level_7_codes.hierarchy_level_label
  is 'A label assigned to the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_level_7_codes.nvcs_code
  is 'A code representing the classification at the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_level_7_codes.meaning
  is 'The meaning of the code at the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_level_7_codes.note
  is 'Any remark relevant to the hierarchy structure record.';
comment on column fs_fiadb.ref_nvcs_level_7_codes.created_by
  is 'Created by';
comment on column fs_fiadb.ref_nvcs_level_7_codes.created_date
  is 'Created date';
comment on column fs_fiadb.ref_nvcs_level_7_codes.created_in_instance
  is 'Created in instance';
comment on column fs_fiadb.ref_nvcs_level_7_codes.modified_by
  is 'Modified by';
comment on column fs_fiadb.ref_nvcs_level_7_codes.modified_date
  is 'Modified date';
comment on column fs_fiadb.ref_nvcs_level_7_codes.modified_in_instance
  is 'Modified in instance';
alter table FS_FIADB.REF_NVCS_LEVEL_7_CODES add constraint RNVCSHS7_PK primary key (CN);
alter table FS_FIADB.REF_NVCS_LEVEL_7_CODES add constraint RNVCSHS7_UK unique (PRIMARY_CLASS, NVCS_CODE);