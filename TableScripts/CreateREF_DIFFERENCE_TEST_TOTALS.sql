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
alter table FS_FIADB.REF_DIFFERENCE_TEST_TOTALS add constraint DTT_PK primary key (CN);