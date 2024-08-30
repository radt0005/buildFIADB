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
alter table FS_FIADB.REF_OWNGRPCD add constraint REF_OWNGRPCD_PK primary key (OWNGRPCD);