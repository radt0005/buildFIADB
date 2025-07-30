CREATE TABLE fs_fiadb.ref_owngrpcd
(
owngrpcd      INTEGER NOT NULL,
meaning       VARCHAR(100) NOT NULL,
created_date  TIMESTAMP(0),
modified_date TIMESTAMP(0)
);
comment on column fs_fiadb.ref_owngrpcd.owngrpcd
  is 'Owner group code.';
comment on column fs_fiadb.ref_owngrpcd.meaning
  is 'NA';
comment on column fs_fiadb.ref_owngrpcd.created_date
  is 'Created Date';
comment on column fs_fiadb.ref_owngrpcd.modified_date
  is 'Modified Date';
alter table FS_FIADB.REF_OWNGRPCD add constraint REF_OWNGRPCD_PK primary key (OWNGRPCD);