CREATE TABLE fs_fiadb.ref_fvs_loc_name
(
cn               VARCHAR(34) NOT NULL,
fvs_loc_cd       INTEGER NOT NULL,
fvs_loc_cd_name  VARCHAR(70),
manual_start     DECIMAL(3,1),
manual_end       DECIMAL(3,1),
allowed_in_field VARCHAR(1),
created_date     TIMESTAMP(0),
modified_date    TIMESTAMP(0)
);
alter table FS_FIADB.REF_FVS_LOC_NAME add constraint RFLN_PK primary key (FVS_LOC_CD);