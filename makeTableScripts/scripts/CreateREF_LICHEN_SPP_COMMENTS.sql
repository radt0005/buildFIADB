CREATE TABLE fs_fiadb.ref_lichen_spp_comments
(
lich_sppcd           INTEGER NOT NULL,
spp_name             VARCHAR(80) NOT NULL,
yearend              INTEGER,
yearstart            INTEGER NOT NULL,
spp_comments         VARCHAR(2000) NOT NULL,
cn                   VARCHAR(34) NOT NULL,
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6)
);
comment on column fs_fiadb.ref_lichen_spp_comments.lich_sppcd
  is 'NA';
comment on column fs_fiadb.ref_lichen_spp_comments.spp_name
  is 'NA';
comment on column fs_fiadb.ref_lichen_spp_comments.yearend
  is 'NA';
comment on column fs_fiadb.ref_lichen_spp_comments.yearstart
  is 'NA';
comment on column fs_fiadb.ref_lichen_spp_comments.spp_comments
  is 'NA';
comment on column fs_fiadb.ref_lichen_spp_comments.cn
  is 'NA';
comment on column fs_fiadb.ref_lichen_spp_comments.created_by
  is 'NA';
comment on column fs_fiadb.ref_lichen_spp_comments.created_date
  is 'NA';
comment on column fs_fiadb.ref_lichen_spp_comments.created_in_instance
  is 'NA';
comment on column fs_fiadb.ref_lichen_spp_comments.modified_by
  is 'NA';
comment on column fs_fiadb.ref_lichen_spp_comments.modified_date
  is 'NA';
comment on column fs_fiadb.ref_lichen_spp_comments.modified_in_instance
  is 'NA';
alter table FS_FIADB.REF_LICHEN_SPP_COMMENTS add constraint LCM_PK primary key (CN);
alter table FS_FIADB.REF_LICHEN_SPP_COMMENTS add constraint LCM_UK unique (LICH_SPPCD, SPP_NAME, YEARSTART);