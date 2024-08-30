-- Create table
create table FS_FIADB.OZONE_PLOT_SUMMARY
(
  cn                       VARCHAR(34) not null,
  invyr                    SMALLINT not null,
  statecd                  SMALLINT not null,
  countycd                 SMALLINT not null,
  o3plot                   DOUBLE PRECISION not null,
  field_id                 INT not null,
  split_plotid             SMALLINT not null,
  measyear                 SMALLINT not null,
  species_eval_cnt         DOUBLE PRECISION not null,
  biosite_index            DOUBLE PRECISION not null,
  elev                     INT,
  pltsize                  DOUBLE PRECISION,
  aspect                   SMALLINT,
  terrpos                  DOUBLE PRECISION,
  soildpth                 DOUBLE PRECISION,
  soildrn                  DOUBLE PRECISION,
  plotwet                  DOUBLE PRECISION,
  pltdstrb                 DOUBLE PRECISION,
  biosite_index_multiplier DOUBLE PRECISION,
  lat                      DECIMAL(8,6),
  lon                      DECIMAL(9,6),
  created_by               VARCHAR(30),
  created_date             TIMESTAMP(0),
  created_in_instance      VARCHAR(6),
  modified_by              VARCHAR(30),
  modified_date            TIMESTAMP(0),
  modified_in_instance     VARCHAR(6)
);
-- Add comments to the table 
comment on table FS_FIADB.OZONE_PLOT_SUMMARY
  is '6.0';
-- Add comments to the columns 
comment on column FS_FIADB.OZONE_PLOT_SUMMARY.field_id
  is 'the 7-digit number used by the field crew for all current and active biosites';
comment on column FS_FIADB.OZONE_PLOT_SUMMARY.species_eval_cnt
  is 'The number of plants evaluated equals the total number of plants examined at a biosite (P3Hex).plant_eval_cnt = count ( all plants evaluated at a hexagon )';
comment on column FS_FIADB.OZONE_PLOT_SUMMARY.biosite_index
  is 'The biosite index at a biosite (P3Hex) equals the sum of the species index (BIOSPCD_INDEX) divided by the species evaluation count.biosite_index = summation ( biospcd_index ) ; species_eval_cnt';
comment on column FS_FIADB.OZONE_PLOT_SUMMARY.biosite_index_multiplier
  is 'The biosite index (BI) is formulated from the injury amount and severity ratings recorded for each plant and the numbers of plants and species evaluated at each biosite.  BI values are classified into categories of ozone risk designed to capture differences in plant damage to ozone sensitive species in areas of low, moderate, and high ozone exposure. The biosite index multiplier is the BI multiplied by 1000 to allow the ozone risk categories to be defined by integers. 	biosite_index_multiplier = biosite_index * (1000)';
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.OZONE_PLOT_SUMMARY
  add constraint OPS_PK primary key (CN);
alter table FS_FIADB.OZONE_PLOT_SUMMARY
  add constraint OPS_UK unique (STATECD, INVYR, COUNTYCD, O3PLOT, FIELD_ID, SPLIT_PLOTID);