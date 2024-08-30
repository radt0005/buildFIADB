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
alter table FS_FIADB.REF_HABTYP_DESCRIPTION add constraint RHN_PK primary key (CN);
alter table FS_FIADB.REF_HABTYP_DESCRIPTION add constraint RHN_UK unique (HABTYPCD, PUB_CD);
alter table FS_FIADB.REF_HABTYP_DESCRIPTION add constraint RHN_RPN_FK foreign key (PUB_CD) references FS_FIADB.REF_HABTYP_PUBLICATION (PUB_CD);