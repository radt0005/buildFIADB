CREATE TABLE fs_fiadb.ref_grm_type
(
cn                 VARCHAR(34) NOT NULL,
rscd               INTEGER NOT NULL,
statecd            INTEGER NOT NULL,
start_invyr        INTEGER NOT NULL,
end_invyr          INTEGER,
grm_typ            VARCHAR(15) NOT NULL,
grow_typ_cd        INTEGER,
mort_typ_cd        INTEGER,
remv_typ_cd        INTEGER,
created_date       TIMESTAMP(0),
modified_date      TIMESTAMP(0),
timberland_only    VARCHAR(1) NOT NULL,
grm_build_location VARCHAR(5) NOT NULL
);
alter table FS_FIADB.REF_GRM_TYPE add constraint RGT_PK primary key (CN);
alter table FS_FIADB.REF_GRM_TYPE add constraint RGT_UK unique (RSCD, STATECD, START_INVYR);