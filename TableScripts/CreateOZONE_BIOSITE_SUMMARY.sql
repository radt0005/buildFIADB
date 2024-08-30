CREATE TABLE fs_fiadb.ozone_biosite_summary
(
cn                       VARCHAR(34) NOT NULL,
invyr                    INTEGER NOT NULL,
statecd                  INTEGER NOT NULL,
countycd                 INTEGER NOT NULL,
o3plot                   DOUBLE PRECISION NOT NULL,
field_id                 INTEGER NOT NULL,
location_cnt             DOUBLE PRECISION NOT NULL,
ground_loc_cd            INTEGER NOT NULL,
measyear                 INTEGER NOT NULL,
plant_inj_cnt            DOUBLE PRECISION NOT NULL,
plant_eval_cnt           DOUBLE PRECISION NOT NULL,
plant_ratio              DOUBLE PRECISION NOT NULL,
species_eval_cnt         DOUBLE PRECISION NOT NULL,
biosite_index            DOUBLE PRECISION NOT NULL,
biosite_index_multiplier DOUBLE PRECISION,
svrty_class_zero         DOUBLE PRECISION,
svrty_class_one          DOUBLE PRECISION,
svrty_class_two          DOUBLE PRECISION,
svrty_class_three        DOUBLE PRECISION,
svrty_class_four         DOUBLE PRECISION,
svrty_class_five         DOUBLE PRECISION,
created_date             TIMESTAMP(0),
modified_date            TIMESTAMP(0)
);
alter table FS_FIADB.OZONE_BIOSITE_SUMMARY add constraint OBS_PK primary key (CN);
alter table FS_FIADB.OZONE_BIOSITE_SUMMARY add constraint OBS_UK unique (STATECD, INVYR, COUNTYCD, O3PLOT, FIELD_ID);