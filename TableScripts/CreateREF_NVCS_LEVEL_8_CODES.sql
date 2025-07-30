CREATE TABLE fs_fiadb.ref_nvcs_level_8_codes
(
cn                    VARCHAR(34) NOT NULL,
primary_class         VARCHAR(8) NOT NULL,
hierarchy_level       INTEGER NOT NULL,
hierarchy_level_label VARCHAR(30) NOT NULL,
nvcs_code             VARCHAR(25) NOT NULL,
meaning               VARCHAR(100) NOT NULL,
note                  VARCHAR(1000),
created_date          TIMESTAMP(0),
modified_date         TIMESTAMP(0)
);
comment on column fs_fiadb.ref_nvcs_level_8_codes.cn
  is 'Unique record identifier for the current hierarchy record';
comment on column fs_fiadb.ref_nvcs_level_8_codes.primary_class
  is 'The primary classification of the algorithm [NATURAL|CULTURAL]';
comment on column fs_fiadb.ref_nvcs_level_8_codes.hierarchy_level
  is 'An integer value indicating at what level in the National Vegetation Classification System hierarchy the current record exists';
comment on column fs_fiadb.ref_nvcs_level_8_codes.hierarchy_level_label
  is 'A label assigned to the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_level_8_codes.nvcs_code
  is 'A code representing the classification at the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_level_8_codes.meaning
  is 'The meaning of the code at the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_level_8_codes.note
  is 'Any remark relevant to the hierarchy structure record.';
comment on column fs_fiadb.ref_nvcs_level_8_codes.created_date
  is 'Created date';
comment on column fs_fiadb.ref_nvcs_level_8_codes.modified_date
  is 'Modified date';
alter table FS_FIADB.REF_NVCS_LEVEL_8_CODES add constraint RNVCSHS8_PK primary key (CN);
alter table FS_FIADB.REF_NVCS_LEVEL_8_CODES add constraint RNVCSHS8_UK unique (NVCS_CODE, PRIMARY_CLASS);