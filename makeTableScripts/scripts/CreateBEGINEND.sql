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
alter table FS_FIADB.BEGINEND add constraint BE_UK unique (ONEORTWO);