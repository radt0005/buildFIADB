CREATE TABLE fs_fiadb.beginend
(
oneortwo      DOUBLE PRECISION,
created_date  TIMESTAMP(0),
modified_date TIMESTAMP(0)
);
comment on column fs_fiadb.beginend.oneortwo
  is 'NA';
comment on column fs_fiadb.beginend.created_date
  is 'NA';
comment on column fs_fiadb.beginend.modified_date
  is 'NA';
alter table FS_FIADB.BEGINEND add constraint BE_UK unique (ONEORTWO);