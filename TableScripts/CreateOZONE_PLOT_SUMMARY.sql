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
comment on column fs_fiadb.ozone_plot_summary.cn
  is 'NA';
comment on column fs_fiadb.ozone_plot_summary.invyr
  is 'NA';
comment on column fs_fiadb.ozone_plot_summary.statecd
  is 'NA';
comment on column fs_fiadb.ozone_plot_summary.countycd
  is 'NA';
comment on column fs_fiadb.ozone_plot_summary.o3plot
  is 'NA';
comment on column fs_fiadb.ozone_plot_summary.field_id
  is 'the 7-digit number used by the field crew for all current and active biosites';
comment on column fs_fiadb.ozone_plot_summary.split_plotid
  is 'NA';
comment on column fs_fiadb.ozone_plot_summary.measyear
  is 'NA';
comment on column fs_fiadb.ozone_plot_summary.species_eval_cnt
  is 'The number of plants evaluated equals the total number of plants examined at a biosite (P3Hex).plant_eval_cnt = count ( all plants evaluated at a hexagon )';
comment on column fs_fiadb.ozone_plot_summary.biosite_index
  is 'The biosite index at a biosite (P3Hex) equals the sum of the species index (BIOSPCD_INDEX) divided by the species evaluation count.biosite_index = summation ( biospcd_index ) ; species_eval_cnt';
comment on column fs_fiadb.ozone_plot_summary.elev
  is 'NA';
comment on column fs_fiadb.ozone_plot_summary.pltsize
  is 'NA';
comment on column fs_fiadb.ozone_plot_summary.aspect
  is 'NA';
comment on column fs_fiadb.ozone_plot_summary.terrpos
  is 'NA';
comment on column fs_fiadb.ozone_plot_summary.soildpth
  is 'NA';
comment on column fs_fiadb.ozone_plot_summary.soildrn
  is 'NA';
comment on column fs_fiadb.ozone_plot_summary.plotwet
  is 'NA';
comment on column fs_fiadb.ozone_plot_summary.pltdstrb
  is 'NA';
comment on column fs_fiadb.ozone_plot_summary.biosite_index_multiplier
  is 'The biosite index (BI) is formulated from the injury amount and severity ratings recorded for each plant and the numbers of plants and species evaluated at each biosite.  BI values are classified into categories of ozone risk designed to capture differences in plant damage to ozone sensitive species in areas of low, moderate, and high ozone exposure. The biosite index multiplier is the BI multiplied by 1000 to allow the ozone risk categories to be defined by integers. 	biosite_index_multiplier = biosite_index * (1000)';
comment on column fs_fiadb.ozone_plot_summary.lat
  is 'NA';
comment on column fs_fiadb.ozone_plot_summary.lon
  is 'NA';
comment on column fs_fiadb.ozone_plot_summary.created_date
  is 'NA';
comment on column fs_fiadb.ozone_plot_summary.modified_date
  is 'NA';
alter table FS_FIADB.OZONE_PLOT_SUMMARY add constraint OPS_PK primary key (CN);
alter table FS_FIADB.OZONE_PLOT_SUMMARY add constraint OPS_UK unique (SPLIT_PLOTID, STATECD, COUNTYCD, O3PLOT, FIELD_ID, INVYR);