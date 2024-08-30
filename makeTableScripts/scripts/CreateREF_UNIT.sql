CREATE TABLE fs_fiadb.ref_unit
(
statecd              INTEGER NOT NULL,
value                INTEGER NOT NULL,
meaning              VARCHAR(80) NOT NULL,
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6)
);
alter table FS_FIADB.REF_UNIT add constraint UNT_PK primary key (STATECD, VALUE);