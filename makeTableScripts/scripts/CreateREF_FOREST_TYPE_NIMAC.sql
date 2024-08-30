CREATE TABLE fs_fiadb.ref_forest_type_nimac
(
code         VARCHAR(5) NOT NULL,
meaning      VARCHAR(50) NOT NULL,
description  VARCHAR(2000) NOT NULL,
forest       VARCHAR(1) NOT NULL,
manual_start DECIMAL(3,1) NOT NULL,
manual_end   DECIMAL(3,1)
);
create index RFTN_PK on FS_FIADB.REF_FOREST_TYPE_NIMAC (CODE);