CREATE TABLE fs_fiadb.ref_habtyp_description
(
cn              VARCHAR(34) NOT NULL,
habtypcd        VARCHAR(10) NOT NULL,
pub_cd          VARCHAR(10) NOT NULL,
scientific_name VARCHAR(115) NOT NULL,
common_name     VARCHAR(255),
valid           VARCHAR(1) NOT NULL,
created_date    TIMESTAMP(0),
modified_date   TIMESTAMP(0)
);
comment on column fs_fiadb.ref_habtyp_description.cn
  is 'Sequence number (surrogate primary key';
comment on column fs_fiadb.ref_habtyp_description.habtypcd
  is 'NA';
comment on column fs_fiadb.ref_habtyp_description.pub_cd
  is 'NA';
comment on column fs_fiadb.ref_habtyp_description.scientific_name
  is 'NA';
comment on column fs_fiadb.ref_habtyp_description.common_name
  is 'NA';
comment on column fs_fiadb.ref_habtyp_description.valid
  is 'NA';
comment on column fs_fiadb.ref_habtyp_description.created_date
  is 'Created Date ';
comment on column fs_fiadb.ref_habtyp_description.modified_date
  is 'Modified Date';
alter table FS_FIADB.REF_HABTYP_DESCRIPTION add constraint RHN_PK primary key (CN);
alter table FS_FIADB.REF_HABTYP_DESCRIPTION add constraint RHN_UK unique (PUB_CD, HABTYPCD);
alter table FS_FIADB.REF_HABTYP_DESCRIPTION add constraint RHN_RPN_FK foreign key (PUB_CD) references FS_FIADB.REF_HABTYP_PUBLICATION (PUB_CD);