CREATE TABLE fs_fiadb.beginend
(
oneortwo             DOUBLE PRECISION,
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6)
);
comment on column fs_fiadb.beginend.oneortwo
  is 'NA';
comment on column fs_fiadb.beginend.created_by
  is 'NA';
comment on column fs_fiadb.beginend.created_date
  is 'NA';
comment on column fs_fiadb.beginend.created_in_instance
  is 'NA';
comment on column fs_fiadb.beginend.modified_by
  is 'NA';
comment on column fs_fiadb.beginend.modified_date
  is 'NA';
comment on column fs_fiadb.beginend.modified_in_instance
  is 'NA';
alter table FS_FIADB.BEGINEND add constraint BE_UK unique (ONEORTWO);