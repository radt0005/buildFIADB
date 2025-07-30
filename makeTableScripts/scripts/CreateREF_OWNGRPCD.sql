CREATE TABLE fs_fiadb.ref_owngrpcd
(
owngrpcd             INTEGER NOT NULL,
meaning              VARCHAR(100) NOT NULL,
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6)
);
comment on column fs_fiadb.ref_owngrpcd.owngrpcd
  is 'Owner group code.';
comment on column fs_fiadb.ref_owngrpcd.meaning
  is 'NA';
comment on column fs_fiadb.ref_owngrpcd.created_by
  is 'Created by';
comment on column fs_fiadb.ref_owngrpcd.created_date
  is 'Created Date';
comment on column fs_fiadb.ref_owngrpcd.created_in_instance
  is 'Created in Instance';
comment on column fs_fiadb.ref_owngrpcd.modified_by
  is 'Modified by';
comment on column fs_fiadb.ref_owngrpcd.modified_date
  is 'Modified Date';
comment on column fs_fiadb.ref_owngrpcd.modified_in_instance
  is 'Modified in Instance';
alter table FS_FIADB.REF_OWNGRPCD add constraint REF_OWNGRPCD_PK primary key (OWNGRPCD);