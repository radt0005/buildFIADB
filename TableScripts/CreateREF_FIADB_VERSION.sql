CREATE TABLE fs_fiadb.ref_fiadb_version
(
version       VARCHAR(40) NOT NULL,
install_type  VARCHAR(10),
descr         VARCHAR(2000),
created_date  TIMESTAMP(0),
modified_date TIMESTAMP(0)
);
comment on column fs_fiadb.ref_fiadb_version.version
  is 'Version Number';
comment on column fs_fiadb.ref_fiadb_version.install_type
  is 'NA';
comment on column fs_fiadb.ref_fiadb_version.descr
  is 'Version Description';
comment on column fs_fiadb.ref_fiadb_version.created_date
  is 'Created Date';
comment on column fs_fiadb.ref_fiadb_version.modified_date
  is 'Modified Date';
alter table FS_FIADB.REF_FIADB_VERSION add constraint RFN_PK primary key (VERSION);