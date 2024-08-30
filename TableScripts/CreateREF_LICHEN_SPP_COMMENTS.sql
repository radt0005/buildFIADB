CREATE TABLE fs_fiadb.ref_lichen_spp_comments
(
lich_sppcd    INTEGER NOT NULL,
spp_name      VARCHAR(80) NOT NULL,
yearend       INTEGER,
yearstart     INTEGER NOT NULL,
spp_comments  VARCHAR(2000) NOT NULL,
cn            VARCHAR(34) NOT NULL,
created_date  TIMESTAMP(0),
modified_date TIMESTAMP(0)
);
alter table FS_FIADB.REF_LICHEN_SPP_COMMENTS add constraint LCM_PK primary key (CN);
alter table FS_FIADB.REF_LICHEN_SPP_COMMENTS add constraint LCM_UK unique (LICH_SPPCD, SPP_NAME, YEARSTART);