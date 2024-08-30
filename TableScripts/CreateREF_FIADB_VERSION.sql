CREATE TABLE fs_fiadb.ref_fiadb_version
(
version       VARCHAR(40) NOT NULL,
install_type  VARCHAR(10),
descr         VARCHAR(2000),
created_date  TIMESTAMP(0),
modified_date TIMESTAMP(0)
);
alter table FS_FIADB.REF_FIADB_VERSION add constraint RFN_PK primary key (VERSION);