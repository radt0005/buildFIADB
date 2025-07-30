CREATE TABLE fs_fiadb.project
(
cn                   VARCHAR(34) NOT NULL,
rscd                 INTEGER NOT NULL,
name                 VARCHAR(200) NOT NULL,
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6)
);
comment on column fs_fiadb.project.cn
  is 'Sequence number (surrogate primary key)';
comment on column fs_fiadb.project.rscd
  is 'Region or Station Code';
comment on column fs_fiadb.project.name
  is 'The name of the project';
comment on column fs_fiadb.project.created_by
  is 'Created by';
comment on column fs_fiadb.project.created_date
  is 'Created Date ';
comment on column fs_fiadb.project.created_in_instance
  is 'Created in Instance ';
comment on column fs_fiadb.project.modified_by
  is 'Modified by ';
comment on column fs_fiadb.project.modified_date
  is 'Modified Date';
comment on column fs_fiadb.project.modified_in_instance
  is 'Modified in Instance ';
alter table FS_FIADB.PROJECT add constraint PRJ_PK primary key (CN);
alter table FS_FIADB.PROJECT add constraint PRJ_UK unique (RSCD, NAME);