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
created_by               VARCHAR(30),
created_date             TIMESTAMP(0),
created_in_instance      VARCHAR(6),
modified_by              VARCHAR(30),
modified_date            TIMESTAMP(0),
modified_in_instance     VARCHAR(6)
);
comment on column fs_fiadb.ozone_biosite_summary.cn
  is 'NA';
comment on column fs_fiadb.ozone_biosite_summary.invyr
  is 'NA';
comment on column fs_fiadb.ozone_biosite_summary.statecd
  is 'NA';
comment on column fs_fiadb.ozone_biosite_summary.countycd
  is 'NA';
comment on column fs_fiadb.ozone_biosite_summary.o3plot
  is 'NA';
comment on column fs_fiadb.ozone_biosite_summary.field_id
  is 'the 7-digit number used by the field crew for all current and active biosites';
comment on column fs_fiadb.ozone_biosite_summary.location_cnt
  is 'If location count = 1, then the plant injury data is collected from a single location. If location count = 2, then the plant injury data is collected from two or more locations with the same 7-digit hex number (P3HEX). Two locations are selected as needed to obtain optimal species and plant counts for each biosite. The injury data and plant counts from both locations are combined in the formulation of the biosite index.';
comment on column fs_fiadb.ozone_biosite_summary.ground_loc_cd
  is 'GROUND_LOC_CD = 1 means the GPS values stayed the same from one year to the next.  GROUND_LOC_CD = 2 means the biosite has been moved more than 3 miles and has a second set of GPS values.  GROUND_LOC_CD = 3 means the biosite has moved more than 3 miles for a third time and has a third set of GPS values.';
comment on column fs_fiadb.ozone_biosite_summary.measyear
  is 'NA';
comment on column fs_fiadb.ozone_biosite_summary.plant_inj_cnt
  is 'The number of injured plants at a biosite (P3Hex) equals the number of plants that have injury amounts greater than zero.plant_inj_cnt = count ( plants at a hexagon that have an injury amount greater than zero )';
comment on column fs_fiadb.ozone_biosite_summary.plant_eval_cnt
  is 'The number of plants evaluated equals the total number of plants examined at a biosite (P3Hex).plant_eval_cnt = count ( all plants evaluated at a hexagon )';
comment on column fs_fiadb.ozone_biosite_summary.plant_ratio
  is 'The plants ratio is the ratio of the number of plants injured to the number of  plants evaluated.  That is, the plants ratio equals the number of plants injured divided by the number of plants evaluated.plant_ratio = plants_inj_cnt ; plants_eval_cnt';
comment on column fs_fiadb.ozone_biosite_summary.species_eval_cnt
  is 'The species evaluation count equals the number of species evaluated at a biosite (P3Hex).species_eval_cnt = count ( the unique species evaluated at a hexagon )';
comment on column fs_fiadb.ozone_biosite_summary.biosite_index
  is 'The biosite index at a biosite (P3Hex) equals the sum of the species index (BIOSPCD_INDEX) divided by the species evaluation count.biosite_index = summation ( biospcd_index ) ; species_eval_cnt';
comment on column fs_fiadb.ozone_biosite_summary.biosite_index_multiplier
  is 'The biosite index (BI) is formulated from the injury amount and severity ratings recorded for each plant and the numbers of plants and species evaluated at each biosite.  BI values are classified into categories of ozone risk designed to capture differences in plant damage to ozone sensitive species in areas of low, moderate, and high ozone exposure. The biosite index multiplier is the BI multiplied by 1000 to allow the ozone risk categories to be defined by integers. 	biosite_index_multiplier = biosite_index * (1000)';
comment on column fs_fiadb.ozone_biosite_summary.svrty_class_zero
  is 'The percent of all evaluated plants at a given biosite that have no symptoms of ozone-induced foliar injury1.svrty_class_zero = count (all plants with injury severity equal to zero) * 100;count (all plants evaluated at a hexagon, i.e., plant_eval_count )';
comment on column fs_fiadb.ozone_biosite_summary.svrty_class_one
  is 'The percent of all evaluated plants at a given biosite that have 1 to 6 percent injury. The injury estimate is based on the mean severity of ozone-induced injury symptoms on the injured foliage for each plant. Injury class one may be considered slight injury. svrty_class_one = count (all plants with injury severity equal to 1 or 3.5%) * 100;count (all plants evaluated at a hexagon, i.e., plant_eval_count )';
comment on column fs_fiadb.ozone_biosite_summary.svrty_class_two
  is 'The percent of all evaluated plants at a given biosite that have 7 to 25 percent injury. The injury estimate is based on the mean severity of ozone-induced injury symptoms on the injured foliage for each plant. Injury class two may be considered low to moderate ozone injury. svrty_class_two = count (all plants with injury severity equal to 2 or 16%) * 100;count (all plants evaluated at a hexagon, i.e., plant_eval_count )';
comment on column fs_fiadb.ozone_biosite_summary.svrty_class_three
  is 'The percent of all evaluated plants at a given biosite that have 26 to 50 percent injury. The injury estimate is based on the mean severity of ozone-induced injury symptoms on the injured foliage for each plant. Injury class three may be considered moderate ozone injury. svrty_class_three = count (all plants with injury severity equal to 3 or 38%) * 100;count (all plants evaluated at a hexagon, i.e., plant_eval_count )';
comment on column fs_fiadb.ozone_biosite_summary.svrty_class_four
  is 'The percent of all evaluated plants at a given biosite that have 51 to 75 percent injury. The injury estimate is based on the mean severity of ozone-induced injury symptoms on the injured foliage for each plant. Injury class four may be considered moderate to severe ozone injury. svrty_class_four = count (all plants with injury severity equal to 4 or 63%) * 100;count (all plants evaluated at a hexagon, i.e., plant_eval_count )';
comment on column fs_fiadb.ozone_biosite_summary.svrty_class_five
  is 'The percent of all evaluated plants at a given biosite that have greater than 75 percent injury. The injury estimate is based on the mean severity of ozone-induced injury symptoms on the injured foliage for each plant. Injury class five may be considered severe ozone injury. svrty_class_five = count (all plants with injury severity equal to 5 or 88%) * 100;count (all plants evaluated at a hexagon, i.e., plant_eval_count )';
comment on column fs_fiadb.ozone_biosite_summary.created_by
  is 'NA';
comment on column fs_fiadb.ozone_biosite_summary.created_date
  is 'NA';
comment on column fs_fiadb.ozone_biosite_summary.created_in_instance
  is 'NA';
comment on column fs_fiadb.ozone_biosite_summary.modified_by
  is 'NA';
comment on column fs_fiadb.ozone_biosite_summary.modified_date
  is 'NA';
comment on column fs_fiadb.ozone_biosite_summary.modified_in_instance
  is 'NA';
alter table FS_FIADB.OZONE_BIOSITE_SUMMARY add constraint OBS_PK primary key (CN);
alter table FS_FIADB.OZONE_BIOSITE_SUMMARY add constraint OBS_UK unique (STATECD, INVYR, COUNTYCD, O3PLOT, FIELD_ID);