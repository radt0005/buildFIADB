CREATE TABLE fs_fiadb.ref_unit
(
statecd       INTEGER NOT NULL,
value         INTEGER NOT NULL,
meaning       VARCHAR(80) NOT NULL,
created_date  TIMESTAMP(0),
modified_date TIMESTAMP(0)
);
comment on column fs_fiadb.ref_unit.statecd
  is 'NA';
comment on column fs_fiadb.ref_unit.value
  is 'NA';
comment on column fs_fiadb.ref_unit.meaning
  is 'NA';
comment on column fs_fiadb.ref_unit.created_date
  is 'Created Date';
comment on column fs_fiadb.ref_unit.modified_date
  is 'Modified Date';
alter table FS_FIADB.REF_UNIT add constraint UNT_PK primary key (STATECD, VALUE);