CREATE TABLE fs_fiadb.ref_unit
(
statecd       INTEGER NOT NULL,
value         INTEGER NOT NULL,
meaning       VARCHAR(80) NOT NULL,
created_date  TIMESTAMP(0),
modified_date TIMESTAMP(0)
);
alter table FS_FIADB.REF_UNIT add constraint UNT_PK primary key (STATECD, VALUE);