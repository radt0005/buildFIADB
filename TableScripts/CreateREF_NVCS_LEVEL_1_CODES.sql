CREATE TABLE fs_fiadb.ref_nvcs_level_1_codes
(
cn                    VARCHAR(34) NOT NULL,
primary_class         VARCHAR(8) NOT NULL,
hierarchy_level       INTEGER NOT NULL,
hierarchy_level_label VARCHAR(30) NOT NULL,
nvcs_code             VARCHAR(20) NOT NULL,
meaning               VARCHAR(100) NOT NULL,
note                  VARCHAR(1000),
created_date          TIMESTAMP(0),
modified_date         TIMESTAMP(0)
);
alter table FS_FIADB.REF_NVCS_LEVEL_1_CODES add constraint RNVCSHS1_PK primary key (CN);
alter table FS_FIADB.REF_NVCS_LEVEL_1_CODES add constraint RNVCSHS1_UK unique (PRIMARY_CLASS, NVCS_CODE);