CREATE TABLE fs_fiadb.ref_difference_test_totals
(
cn              VARCHAR(34) NOT NULL,
comparison      VARCHAR(4000) NOT NULL,
comparison_type VARCHAR(4000) NOT NULL,
attribute_nbr   VARCHAR(10) NOT NULL,
sql             TEXT NOT NULL,
notes           VARCHAR(4000),
created_date    TIMESTAMP(0),
modified_date   TIMESTAMP(0)
);
comment on column fs_fiadb.ref_difference_test_totals.cn
  is 'Unique index';
comment on column fs_fiadb.ref_difference_test_totals.comparison
  is 'Estimate attribute compared between current inventory and previous visit';
comment on column fs_fiadb.ref_difference_test_totals.comparison_type
  is 'Type of comparison';
comment on column fs_fiadb.ref_difference_test_totals.attribute_nbr
  is 'Attribute number analogous to REF_POP_ATTRIBUTE.ATTRIBUTE_NBR';
comment on column fs_fiadb.ref_difference_test_totals.sql
  is 'SQL to run the comparision';
comment on column fs_fiadb.ref_difference_test_totals.notes
  is 'Notes';
comment on column fs_fiadb.ref_difference_test_totals.created_date
  is 'Created date';
comment on column fs_fiadb.ref_difference_test_totals.modified_date
  is 'Modified date';
alter table FS_FIADB.REF_DIFFERENCE_TEST_TOTALS add constraint DTT_PK primary key (CN);