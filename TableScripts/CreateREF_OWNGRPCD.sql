CREATE TABLE fs_fiadb.ref_owngrpcd
(
owngrpcd      INTEGER NOT NULL,
meaning       VARCHAR(100) NOT NULL,
created_date  TIMESTAMP(0),
modified_date TIMESTAMP(0)
);
alter table FS_FIADB.REF_OWNGRPCD add constraint REF_OWNGRPCD_PK primary key (OWNGRPCD);