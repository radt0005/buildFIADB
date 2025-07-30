CREATE TABLE fs_fiadb.ref_habtyp_publication
(
cn                   VARCHAR(34) NOT NULL,
pub_cd               VARCHAR(10) NOT NULL,
title                VARCHAR(200) NOT NULL,
author               VARCHAR(200) NOT NULL,
type                 VARCHAR(10) NOT NULL,
valid                VARCHAR(1) NOT NULL,
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6)
);
comment on column fs_fiadb.ref_habtyp_publication.cn
  is 'Sequence number (surrogate primary key';
comment on column fs_fiadb.ref_habtyp_publication.pub_cd
  is 'NA';
comment on column fs_fiadb.ref_habtyp_publication.title
  is 'NA';
comment on column fs_fiadb.ref_habtyp_publication.author
  is 'NA';
comment on column fs_fiadb.ref_habtyp_publication.type
  is 'NA';
comment on column fs_fiadb.ref_habtyp_publication.valid
  is 'NA';
comment on column fs_fiadb.ref_habtyp_publication.created_by
  is 'Created by';
comment on column fs_fiadb.ref_habtyp_publication.created_date
  is 'Created Date ';
comment on column fs_fiadb.ref_habtyp_publication.created_in_instance
  is 'Created in Instance ';
comment on column fs_fiadb.ref_habtyp_publication.modified_by
  is 'Modified by ';
comment on column fs_fiadb.ref_habtyp_publication.modified_date
  is 'Modified Date';
comment on column fs_fiadb.ref_habtyp_publication.modified_in_instance
  is 'Modified in Instance ';
alter table FS_FIADB.REF_HABTYP_PUBLICATION add constraint RPN_PK primary key (CN);
alter table FS_FIADB.REF_HABTYP_PUBLICATION add constraint RPN_UK unique (PUB_CD);