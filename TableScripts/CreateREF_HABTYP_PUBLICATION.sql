-- Create table
create table FS_FIADB.REF_HABTYP_PUBLICATION
(
  cn                   VARCHAR(34) not null,
  pub_cd               VARCHAR(10) not null,
  title                VARCHAR(200) not null,
  author               VARCHAR(200) not null,
  type                 VARCHAR(10) not null,
  valid                VARCHAR(1) default 'Y' not null,
  created_by           VARCHAR(30),
  created_date         TIMESTAMP(0),
  created_in_instance  VARCHAR(6),
  modified_by          VARCHAR(30),
  modified_date        TIMESTAMP(0),
  modified_in_instance VARCHAR(6)
);
-- Add comments to the table 
comment on table FS_FIADB.REF_HABTYP_PUBLICATION
  is '6.0';
-- Add comments to the columns 
comment on column FS_FIADB.REF_HABTYP_PUBLICATION.cn
  is 'Sequence number (surrogate primary key';
comment on column FS_FIADB.REF_HABTYP_PUBLICATION.created_by
  is 'Created by';
comment on column FS_FIADB.REF_HABTYP_PUBLICATION.created_date
  is 'Created Date ';
comment on column FS_FIADB.REF_HABTYP_PUBLICATION.created_in_instance
  is 'Created in Instance ';
comment on column FS_FIADB.REF_HABTYP_PUBLICATION.modified_by
  is 'Modified by ';
comment on column FS_FIADB.REF_HABTYP_PUBLICATION.modified_date
  is 'Modified Date';
comment on column FS_FIADB.REF_HABTYP_PUBLICATION.modified_in_instance
  is 'Modified in Instance ';
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.REF_HABTYP_PUBLICATION
  add constraint RPN_PK primary key (CN);
alter table FS_FIADB.REF_HABTYP_PUBLICATION
  add constraint RPN_UK unique (PUB_CD);