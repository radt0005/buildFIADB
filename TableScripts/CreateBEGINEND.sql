CREATE TABLE fs_fiadb.beginend
(
oneortwo      DOUBLE PRECISION,
created_date  TIMESTAMP(0),
modified_date TIMESTAMP(0)
);
alter table FS_FIADB.BEGINEND add constraint BE_UK unique (ONEORTWO);