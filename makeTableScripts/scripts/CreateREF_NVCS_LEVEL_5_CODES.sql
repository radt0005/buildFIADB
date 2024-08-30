CREATE TABLE fs_fiadb.ref_nvcs_level_5_codes
(
cn                    VARCHAR(34) NOT NULL,
primary_class         VARCHAR(8) NOT NULL,
hierarchy_level       INTEGER NOT NULL,
hierarchy_level_label VARCHAR(30) NOT NULL,
nvcs_code             VARCHAR(20) NOT NULL,
meaning               VARCHAR(100) NOT NULL,
note                  VARCHAR(1000),
created_by            VARCHAR(30),
created_date          TIMESTAMP(0),
created_in_instance   VARCHAR(6),
modified_by           VARCHAR(30),
modified_date         TIMESTAMP(0),
modified_in_instance  VARCHAR(6)
);
alter table FS_FIADB.REF_NVCS_LEVEL_5_CODES add constraint RNVCSHS5_PK primary key (CN);
alter table FS_FIADB.REF_NVCS_LEVEL_5_CODES add constraint RNVCSHS5_UK unique (PRIMARY_CLASS, NVCS_CODE);