CREATE TABLE fs_fiadb.ref_nvcs_hierarchy_strct
(
hierarchy_version    VARCHAR(30) NOT NULL,
primary_class        VARCHAR(8) NOT NULL,
nvcs_level_1_label   VARCHAR(30) NOT NULL,
nvcs_level_1_cd      VARCHAR(3) NOT NULL,
nvcs_level_2_label   VARCHAR(30) NOT NULL,
nvcs_level_2_cd      VARCHAR(8) NOT NULL,
nvcs_level_3_label   VARCHAR(30) NOT NULL,
nvcs_level_3_cd      VARCHAR(10) NOT NULL,
nvcs_level_4_label   VARCHAR(30) NOT NULL,
nvcs_level_4_cd      VARCHAR(13) NOT NULL,
nvcs_level_5_label   VARCHAR(30) NOT NULL,
nvcs_level_5_cd      VARCHAR(20) NOT NULL,
nvcs_level_6_label   VARCHAR(30),
nvcs_level_6_cd      VARCHAR(20),
nvcs_level_7_label   VARCHAR(30),
nvcs_level_7_cd      VARCHAR(25),
nvcs_level_8_label   VARCHAR(30),
nvcs_level_8_cd      VARCHAR(25),
nvcs_level_1_meaning VARCHAR(100) NOT NULL,
nvcs_level_2_meaning VARCHAR(100) NOT NULL,
nvcs_level_3_meaning VARCHAR(100) NOT NULL,
nvcs_level_4_meaning VARCHAR(100) NOT NULL,
nvcs_level_5_meaning VARCHAR(100) NOT NULL,
nvcs_level_6_meaning VARCHAR(100),
nvcs_level_7_meaning VARCHAR(100),
nvcs_level_8_meaning VARCHAR(100),
nvcs_level_1_note    VARCHAR(1000),
nvcs_level_2_note    VARCHAR(1000),
nvcs_level_3_note    VARCHAR(1000),
nvcs_level_4_note    VARCHAR(1000),
nvcs_level_5_note    VARCHAR(1000),
nvcs_level_6_note    VARCHAR(1000),
nvcs_level_7_note    VARCHAR(1000),
nvcs_level_8_note    VARCHAR(1000),
citation_nbr         INTEGER,
created_by           VARCHAR(30) NOT NULL,
created_date         TIMESTAMP(0) NOT NULL,
created_in_instance  VARCHAR(6) NOT NULL,
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6)
);
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.hierarchy_version
  is 'A version indicator for the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.primary_class
  is 'The primary classification of the algorithm [NATURAL|CULTURAL]';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.nvcs_level_1_label
  is 'A label assigned to the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.nvcs_level_1_cd
  is 'A code representing the classification at the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.nvcs_level_2_label
  is 'A label assigned to the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.nvcs_level_2_cd
  is 'A code representing the classification at the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.nvcs_level_3_label
  is 'A label assigned to the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.nvcs_level_3_cd
  is 'A code representing the classification at the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.nvcs_level_4_label
  is 'A label assigned to the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.nvcs_level_4_cd
  is 'A code representing the classification at the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.nvcs_level_5_label
  is 'A label assigned to the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.nvcs_level_5_cd
  is 'A code representing the classification at the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.nvcs_level_6_label
  is 'A label assigned to the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.nvcs_level_6_cd
  is 'A code representing the classification at the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.nvcs_level_7_label
  is 'A label assigned to the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.nvcs_level_7_cd
  is 'A code representing the classification at the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.nvcs_level_8_label
  is 'A label assigned to the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.nvcs_level_8_cd
  is 'A code representing the classification at the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.nvcs_level_1_meaning
  is 'The meaning of the code at the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.nvcs_level_2_meaning
  is 'The meaning of the code at the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.nvcs_level_3_meaning
  is 'The meaning of the code at the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.nvcs_level_4_meaning
  is 'The meaning of the code at the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.nvcs_level_5_meaning
  is 'The meaning of the code at the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.nvcs_level_6_meaning
  is 'The meaning of the code at the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.nvcs_level_7_meaning
  is 'The meaning of the code at the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.nvcs_level_8_meaning
  is 'The meaning of the code at the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.nvcs_level_1_note
  is 'Any remark relevant to the hierarchy structure entry.';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.nvcs_level_2_note
  is 'Any remark relevant to the hierarchy structure record.';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.nvcs_level_3_note
  is 'Any remark relevant to the hierarchy structure record.';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.nvcs_level_4_note
  is 'Any remark relevant to the hierarchy structure record.';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.nvcs_level_5_note
  is 'Any remark relevant to the hierarchy structure record.';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.nvcs_level_6_note
  is 'Any remark relevant to the hierarchy structure record.';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.nvcs_level_7_note
  is 'Any remark relevant to the hierarchy structure record.';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.nvcs_level_8_note
  is 'Any remark relevant to the hierarchy structure record.';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.citation_nbr
  is 'Foreign key to the parent REF_CITATION record.';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.created_by
  is 'Created by';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.created_date
  is 'Created date';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.created_in_instance
  is 'Created in instance';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.modified_by
  is 'Modified by';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.modified_date
  is 'Modified date';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.modified_in_instance
  is 'Modified in instance';