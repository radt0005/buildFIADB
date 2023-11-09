-- Create table
create table FS_FIADB.REF_HABTYP_DESCRIPTION
(
  cn                   VARCHAR(34) not null,
  habtypcd             VARCHAR(10) not null,
  pub_cd               VARCHAR(10) not null,
  scientific_name      VARCHAR(115) not null,
  common_name          VARCHAR(255),
  valid                VARCHAR(1) default 'Y' not null,
  created_by           VARCHAR(30),
  created_date         TIMESTAMP(0),
  created_in_instance  VARCHAR(6),
  modified_by          VARCHAR(30),
  modified_date        TIMESTAMP(0),
  modified_in_instance VARCHAR(6)
);
-- Add comments to the table 
comment on table FS_FIADB.REF_HABTYP_DESCRIPTION
  is '6.0';
-- Add comments to the columns 
comment on column FS_FIADB.REF_HABTYP_DESCRIPTION.cn
  is 'Sequence number (surrogate primary key';
comment on column FS_FIADB.REF_HABTYP_DESCRIPTION.created_by
  is 'Created by';
comment on column FS_FIADB.REF_HABTYP_DESCRIPTION.created_date
  is 'Created Date ';
comment on column FS_FIADB.REF_HABTYP_DESCRIPTION.created_in_instance
  is 'Created in Instance ';
comment on column FS_FIADB.REF_HABTYP_DESCRIPTION.modified_by
  is 'Modified by ';
comment on column FS_FIADB.REF_HABTYP_DESCRIPTION.modified_date
  is 'Modified Date';
comment on column FS_FIADB.REF_HABTYP_DESCRIPTION.modified_in_instance
  is 'Modified in Instance ';
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.REF_HABTYP_DESCRIPTION
  add constraint RHN_PK primary key (CN);
alter table FS_FIADB.REF_HABTYP_DESCRIPTION
  add constraint RHN_UK unique (HABTYPCD, PUB_CD);
alter table FS_FIADB.REF_HABTYP_DESCRIPTION
  add constraint RHN_RPN_FK foreign key (PUB_CD)
  references FS_FIADB.REF_HABTYP_PUBLICATION (PUB_CD);