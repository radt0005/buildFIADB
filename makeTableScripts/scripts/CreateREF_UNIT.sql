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
comment on column fs_fiadb.ref_unit.statecd
  is 'NA';
comment on column fs_fiadb.ref_unit.value
  is 'NA';
comment on column fs_fiadb.ref_unit.meaning
  is 'NA';
comment on column fs_fiadb.ref_unit.created_by
  is 'Created by';
comment on column fs_fiadb.ref_unit.created_date
  is 'Created Date';
comment on column fs_fiadb.ref_unit.created_in_instance
  is 'Created in Instance';
comment on column fs_fiadb.ref_unit.modified_by
  is 'Modified by';
comment on column fs_fiadb.ref_unit.modified_date
  is 'Modified Date';
comment on column fs_fiadb.ref_unit.modified_in_instance
  is 'Modified in Instance';
alter table FS_FIADB.REF_UNIT add constraint UNT_PK primary key (STATECD, VALUE);