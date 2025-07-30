CREATE TABLE fs_fiadb.ref_difference_test_per_acre
(
cn                   VARCHAR(34) NOT NULL,
comparison           VARCHAR(4000) NOT NULL,
comparison_type      VARCHAR(4000) NOT NULL,
attribute_nbr        VARCHAR(10) NOT NULL,
sql                  TEXT NOT NULL,
notes                VARCHAR(4000),
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6)
);
comment on column fs_fiadb.ref_difference_test_per_acre.cn
  is 'Unique index';
comment on column fs_fiadb.ref_difference_test_per_acre.comparison
  is 'Estimate attribute compared between current inventory and previous visit';
comment on column fs_fiadb.ref_difference_test_per_acre.comparison_type
  is 'Type of comparison';
comment on column fs_fiadb.ref_difference_test_per_acre.attribute_nbr
  is 'Attribute number analogous to REF_POP_ATTRIBUTE.ATTRIBUTE_NBR';
comment on column fs_fiadb.ref_difference_test_per_acre.sql
  is 'SQL to run the comparision';
comment on column fs_fiadb.ref_difference_test_per_acre.notes
  is 'Notes';
comment on column fs_fiadb.ref_difference_test_per_acre.created_by
  is 'Created by';
comment on column fs_fiadb.ref_difference_test_per_acre.created_date
  is 'Created date';
comment on column fs_fiadb.ref_difference_test_per_acre.created_in_instance
  is 'Created in instance';
comment on column fs_fiadb.ref_difference_test_per_acre.modified_by
  is 'Modified by';
comment on column fs_fiadb.ref_difference_test_per_acre.modified_date
  is 'Modified date';
comment on column fs_fiadb.ref_difference_test_per_acre.modified_in_instance
  is 'Modified in instance';
alter table FS_FIADB.REF_DIFFERENCE_TEST_PER_ACRE add constraint DTPA_PK primary key (CN);