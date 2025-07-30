CREATE TABLE fs_fiadb.ref_fiadb_version
(
version              VARCHAR(40) NOT NULL,
install_type         VARCHAR(10),
descr                VARCHAR(2000),
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6)
);
comment on column fs_fiadb.ref_fiadb_version.version
  is 'Version Number';
comment on column fs_fiadb.ref_fiadb_version.install_type
  is 'NA';
comment on column fs_fiadb.ref_fiadb_version.descr
  is 'Version Description';
comment on column fs_fiadb.ref_fiadb_version.created_by
  is 'Created By';
comment on column fs_fiadb.ref_fiadb_version.created_date
  is 'Created Date';
comment on column fs_fiadb.ref_fiadb_version.created_in_instance
  is 'Created In Instance';
comment on column fs_fiadb.ref_fiadb_version.modified_by
  is 'Modified By';
comment on column fs_fiadb.ref_fiadb_version.modified_date
  is 'Modified Date';
comment on column fs_fiadb.ref_fiadb_version.modified_in_instance
  is 'Modified In Instance';
alter table FS_FIADB.REF_FIADB_VERSION add constraint RFN_PK primary key (VERSION);