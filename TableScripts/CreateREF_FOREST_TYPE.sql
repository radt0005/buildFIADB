CREATE TABLE fs_fiadb.ref_forest_type
(
value            INTEGER NOT NULL,
meaning          VARCHAR(80) NOT NULL,
typgrpcd         INTEGER NOT NULL,
manual_start     DECIMAL(3,1),
manual_end       DECIMAL(3,1),
allowed_in_field VARCHAR(1),
created_date     TIMESTAMP(0),
modified_date    TIMESTAMP(0)
);
alter table FS_FIADB.REF_FOREST_TYPE add constraint RFT_PK primary key (VALUE);