CREATE TABLE fs_fiadb.ozone_plot_summary
(
cn                       VARCHAR(34) NOT NULL,
invyr                    INTEGER NOT NULL,
statecd                  INTEGER NOT NULL,
countycd                 INTEGER NOT NULL,
o3plot                   DOUBLE PRECISION NOT NULL,
field_id                 INTEGER NOT NULL,
split_plotid             INTEGER NOT NULL,
measyear                 INTEGER NOT NULL,
species_eval_cnt         DOUBLE PRECISION NOT NULL,
biosite_index            DOUBLE PRECISION NOT NULL,
elev                     INTEGER,
pltsize                  DOUBLE PRECISION,
aspect                   INTEGER,
terrpos                  DOUBLE PRECISION,
soildpth                 DOUBLE PRECISION,
soildrn                  DOUBLE PRECISION,
plotwet                  DOUBLE PRECISION,
pltdstrb                 DOUBLE PRECISION,
biosite_index_multiplier DOUBLE PRECISION,
lat                      DECIMAL(8,6),
lon                      DECIMAL(9,6),
created_date             TIMESTAMP(0),
modified_date            TIMESTAMP(0)
);
alter table FS_FIADB.OZONE_PLOT_SUMMARY add constraint OPS_PK primary key (CN);
alter table FS_FIADB.OZONE_PLOT_SUMMARY add constraint OPS_UK unique (STATECD, INVYR, COUNTYCD, O3PLOT, FIELD_ID, SPLIT_PLOTID);