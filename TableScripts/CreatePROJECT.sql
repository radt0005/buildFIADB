CREATE TABLE fs_fiadb.project
(
cn            VARCHAR(34) NOT NULL,
rscd          INTEGER NOT NULL,
name          VARCHAR(200) NOT NULL,
created_date  TIMESTAMP(0),
modified_date TIMESTAMP(0)
);
alter table FS_FIADB.PROJECT add constraint PRJ_PK primary key (CN);
alter table FS_FIADB.PROJECT add constraint PRJ_UK unique (RSCD, NAME);