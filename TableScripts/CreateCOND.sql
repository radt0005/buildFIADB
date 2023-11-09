-- Create table
create table FS_FIADB.COND
(
  cn                            VARCHAR(34) not null,
  plt_cn                        VARCHAR(34) not null,
  invyr                         SMALLINT not null,
  statecd                       SMALLINT not null,
  unitcd                        SMALLINT not null,
  countycd                      SMALLINT not null,
  plot                          INT not null,
  condid                        SMALLINT not null,
  cond_status_cd                SMALLINT not null,
  cond_nonsample_reasn_cd       SMALLINT,
  reservcd                      SMALLINT,
  owncd                         SMALLINT,
  owngrpcd                      SMALLINT,
  forindcd                      SMALLINT,
  adforcd                       SMALLINT,
  fortypcd                      SMALLINT,
  fldtypcd                      SMALLINT,
  mapden                        SMALLINT,
  stdage                        SMALLINT,
  stdszcd                       SMALLINT,
  fldszcd                       SMALLINT,
  siteclcd                      SMALLINT,
  sicond                        SMALLINT,
  sibase                        SMALLINT,
  sisp                          SMALLINT,
  stdorgcd                      SMALLINT,
  stdorgsp                      DOUBLE PRECISION,
  prop_basis                    VARCHAR(12) default 'SUBP',
  condprop_unadj                DOUBLE PRECISION,
  micrprop_unadj                DOUBLE PRECISION,
  subpprop_unadj                DOUBLE PRECISION,
  macrprop_unadj                DOUBLE PRECISION,
  slope                         SMALLINT,
  aspect                        SMALLINT,
  physclcd                      SMALLINT,
  gsstkcd                       SMALLINT,
  alstkcd                       SMALLINT,
  dstrbcd1                      SMALLINT,
  dstrbyr1                      SMALLINT,
  dstrbcd2                      SMALLINT,
  dstrbyr2                      SMALLINT,
  dstrbcd3                      SMALLINT,
  dstrbyr3                      SMALLINT,
  trtcd1                        SMALLINT,
  trtyr1                        SMALLINT,
  trtcd2                        SMALLINT,
  trtyr2                        SMALLINT,
  trtcd3                        SMALLINT,
  trtyr3                        SMALLINT,
  presnfcd                      SMALLINT,
  balive                        DECIMAL(9,4),
  fldage                        SMALLINT,
  alstk                         DECIMAL(7,4),
  gsstk                         DECIMAL(7,4),
  fortypcdcalc                  SMALLINT,
  habtypcd1                     VARCHAR(10),
  habtypcd1_pub_cd              VARCHAR(10),
  habtypcd1_descr_pub_cd        VARCHAR(10),
  habtypcd2                     VARCHAR(10),
  habtypcd2_pub_cd              VARCHAR(10),
  habtypcd2_descr_pub_cd        VARCHAR(10),
  mixedconfcd                   VARCHAR(1),
  vol_loc_grp                   VARCHAR(200),
  siteclcdest                   SMALLINT,
  sitetree_tree                 SMALLINT,
  sitecl_method                 SMALLINT,
  carbon_down_dead              DECIMAL(13,6),
  carbon_litter                 DECIMAL(13,6),
  carbon_soil_org               DECIMAL(13,6),
  carbon_understory_ag          DECIMAL(13,6),
  carbon_understory_bg          DECIMAL(13,6),
  created_by                    VARCHAR(30),
  created_date                  TIMESTAMP(0),
  created_in_instance           VARCHAR(6),
  modified_by                   VARCHAR(30),
  modified_date                 TIMESTAMP(0),
  modified_in_instance          VARCHAR(6),
  cycle                         SMALLINT,
  subcycle                      SMALLINT,
  soil_rooting_depth_pnw        VARCHAR(1),
  ground_land_class_pnw         VARCHAR(3),
  plant_stockability_factor_pnw DOUBLE PRECISION,
  stnd_cond_cd_pnwrs            SMALLINT,
  stnd_struc_cd_pnwrs           SMALLINT,
  stump_cd_pnwrs                VARCHAR(1),
  fire_srs                      SMALLINT,
  grazing_srs                   SMALLINT,
  harvest_type1_srs             SMALLINT,
  harvest_type2_srs             SMALLINT,
  harvest_type3_srs             SMALLINT,
  land_use_srs                  SMALLINT,
  operability_srs               SMALLINT,
  stand_structure_srs           SMALLINT,
  nf_cond_status_cd             SMALLINT,
  nf_cond_nonsample_reasn_cd    SMALLINT,
  canopy_cvr_sample_method_cd   SMALLINT,
  live_canopy_cvr_pct           SMALLINT,
  live_missing_canopy_cvr_pct   SMALLINT,
  nbr_live_stems                INT,
  ownsubcd                      SMALLINT,
  industrialcd_fiadb            SMALLINT,
  reservcd_5                    SMALLINT,
  admin_withdrawn_cd            SMALLINT,
  chaining_cd                   SMALLINT,
  land_cover_class_cd_ret       SMALLINT,
  afforestation_cd              SMALLINT,
  prev_afforestation_cd         SMALLINT,
  dwm_fuelbed_typcd             VARCHAR(3),
  nvcs_primary_class            VARCHAR(8),
  nvcs_level_1_cd               VARCHAR(25),
  nvcs_level_2_cd               VARCHAR(25),
  nvcs_level_3_cd               VARCHAR(25),
  nvcs_level_4_cd               VARCHAR(25),
  nvcs_level_5_cd               VARCHAR(25),
  nvcs_level_6_cd               VARCHAR(25),
  nvcs_level_7_cd               VARCHAR(25),
  nvcs_level_8_cd               VARCHAR(25),
  age_basis_cd_pnwrs            SMALLINT,
  cond_status_chng_cd_rmrs      SMALLINT,
  crcovpct_rmrs                 SMALLINT,
  dominant_species1_pnwrs       SMALLINT,
  dominant_species2_pnwrs       SMALLINT,
  dominant_species3_pnwrs       SMALLINT,
  dstrbcd1_p2a                  SMALLINT,
  dstrbcd2_p2a                  SMALLINT,
  dstrbcd3_p2a                  SMALLINT,
  dstrbyr1_p2a                  SMALLINT,
  dstrbyr2_p2a                  SMALLINT,
  dstrbyr3_p2a                  SMALLINT,
  fldtypcd_30                   SMALLINT,
  forest_community_pnwrs        SMALLINT,
  land_usecd_rmrs               SMALLINT,
  maicf                    DECIMAL(5,2),
  pctbare_rmrs                  SMALLINT,
  qmd_rmrs                      DECIMAL(5,1),
  rangetypcd_rmrs               SMALLINT,
  sdimax_rmrs                   SMALLINT,
  sdipct_rmrs                   DECIMAL(4,1),
  sdi_rmrs                      DECIMAL(8,4),
  stand_structure_me_ners       SMALLINT,
  trees_present_ncrs            SMALLINT,
  trees_present_ners            SMALLINT,
  trtcd1_p2a                    SMALLINT,
  trtcd2_p2a                    SMALLINT,
  trtcd3_p2a                    SMALLINT,
  trtopcd                       SMALLINT,
  trtyr1_p2a                    SMALLINT,
  trtyr2_p2a                    SMALLINT,
  trtyr3_p2a                    SMALLINT,
  land_cover_class_cd           SMALLINT,
  sieqn_ref_cd                  VARCHAR(10),
  sicond_fvs                    SMALLINT,
  sibase_fvs                    SMALLINT,
  sisp_fvs                      SMALLINT,
  sieqn_ref_cd_fvs              VARCHAR(10),
  MQUADPROP_UNADJ               DOUBLE PRECISION,
  SOILPROP_UNADJ                DOUBLE PRECISION,
  FOREST_COND_STATUS_CHANGE_CD  SMALLINT
);
-- Add comments to the table
comment on table FS_FIADB.COND
  is '6.0';
-- Add comments to the columns
comment on column FS_FIADB.COND.cn
  is 'Unique index';
comment on column FS_FIADB.COND.plt_cn
  is 'Unique index';
comment on column FS_FIADB.COND.statecd
  is 'State code';
comment on column FS_FIADB.COND.unitcd
  is 'Survey unit code';
comment on column FS_FIADB.COND.countycd
  is 'County code';
comment on column FS_FIADB.COND.plot
  is 'Plot number';
comment on column FS_FIADB.COND.condid
  is 'Condition number';
comment on column FS_FIADB.COND.cond_status_cd
  is 'CONDITION STATUS CODE';
comment on column FS_FIADB.COND.reservcd
  is 'Reserved status class code';
comment on column FS_FIADB.COND.owncd
  is 'Owner class code';
comment on column FS_FIADB.COND.owngrpcd
  is 'Ownership group class code';
comment on column FS_FIADB.COND.forindcd
  is 'Private owner industrial status code';
comment on column FS_FIADB.COND.adforcd
  is 'Administrative forest code';
comment on column FS_FIADB.COND.fortypcd
  is 'Forest type code (computed)';
comment on column FS_FIADB.COND.fldtypcd
  is 'Field forest type code';
comment on column FS_FIADB.COND.mapden
  is 'Change in tree density';
comment on column FS_FIADB.COND.stdage
  is 'Stand age';
comment on column FS_FIADB.COND.stdszcd
  is 'Stand-size class code (computed)';
comment on column FS_FIADB.COND.fldszcd
  is 'Field stand-size class code';
comment on column FS_FIADB.COND.siteclcd
  is 'Site productivity class code';
comment on column FS_FIADB.COND.sicond
  is 'Site index';
comment on column FS_FIADB.COND.sibase
  is 'Site index base age';
comment on column FS_FIADB.COND.sisp
  is 'Site index species code';
comment on column FS_FIADB.COND.stdorgcd
  is 'Stand origin code';
comment on column FS_FIADB.COND.stdorgsp
  is 'Stand origin species code';
comment on column FS_FIADB.COND.prop_basis
  is 'PROPORTION BASIS - VALUES ARE SUBP AND MACRO.  Default is SUBP.  Updated in nims_condprop.pkg, IF MACRO  is present.';
comment on column FS_FIADB.COND.slope
  is 'Slope';
comment on column FS_FIADB.COND.aspect
  is 'Aspect';
comment on column FS_FIADB.COND.physclcd
  is 'Physiographic class code';
comment on column FS_FIADB.COND.gsstkcd
  is 'Growing-stock stocking code';
comment on column FS_FIADB.COND.alstkcd
  is 'All live stocking code';
comment on column FS_FIADB.COND.dstrbcd1
  is 'Disturbance 1 code';
comment on column FS_FIADB.COND.dstrbyr1
  is 'Year of Disturbance 1';
comment on column FS_FIADB.COND.dstrbcd2
  is 'Disturbance 2 code';
comment on column FS_FIADB.COND.dstrbyr2
  is 'Year of Disturbance 2';
comment on column FS_FIADB.COND.dstrbcd3
  is 'Disturbance 3 code';
comment on column FS_FIADB.COND.dstrbyr3
  is 'Year of Disturbance 3';
comment on column FS_FIADB.COND.trtcd1
  is 'Stand Treatment 1 code';
comment on column FS_FIADB.COND.trtyr1
  is 'Treatment year 1';
comment on column FS_FIADB.COND.trtcd2
  is 'Stand treatment 2';
comment on column FS_FIADB.COND.trtyr2
  is 'Treatment year 2';
comment on column FS_FIADB.COND.trtcd3
  is 'Stand Treatment 3 code';
comment on column FS_FIADB.COND.trtyr3
  is 'Treatment year 3';
comment on column FS_FIADB.COND.presnfcd
  is 'Present nonforest land use code';
comment on column FS_FIADB.COND.balive
  is 'Basal area of all live trees';
comment on column FS_FIADB.COND.fldage
  is 'Field stand age';
comment on column FS_FIADB.COND.alstk
  is 'All live stocking percent';
comment on column FS_FIADB.COND.gsstk
  is 'Growing-stock stocking percent';
comment on column FS_FIADB.COND.fortypcdcalc
  is 'CALCULATED FOREST TYPE CODE WITH A NATIONAL ALGORITHM';
comment on column FS_FIADB.COND.habtypcd1
  is 'Primary condition habitat type';
comment on column FS_FIADB.COND.habtypcd2
  is 'Secondary condition habitat type';
comment on column FS_FIADB.COND.mixedconfcd
  is 'Calculated forest type for mixed conifer site';
comment on column FS_FIADB.COND.vol_loc_grp
  is 'VOLUME LOCATION GROUP';
comment on column FS_FIADB.COND.sitetree_tree
  is 'Selected SITETREE tree number';
comment on column FS_FIADB.COND.sitecl_method
  is ' Selected SITE CLASS method type';
comment on column FS_FIADB.COND.carbon_down_dead
  is 'Carbon in stumps and roots dwm 3"+ dia (tons;acre)';
comment on column FS_FIADB.COND.carbon_litter
  is 'Carbon pounds;acre fine woody debris upto 3"( tons;acre)';
comment on column FS_FIADB.COND.carbon_soil_org
  is 'Carbon in soil and fine roots to depth of 1 meter (tons ;acre)';
comment on column FS_FIADB.COND.carbon_understory_ag
  is 'Carbon in seedlings and shrubs above ground (tons;acre)';
comment on column FS_FIADB.COND.carbon_understory_bg
  is 'Carbon in roots of seedlings, shrubs below ground (tons;acre)';
comment on column FS_FIADB.COND.created_by
  is 'Created by';
comment on column FS_FIADB.COND.created_date
  is 'Created date';
comment on column FS_FIADB.COND.created_in_instance
  is 'Created in instance';
comment on column FS_FIADB.COND.modified_by
  is 'Modified by';
comment on column FS_FIADB.COND.modified_date
  is 'Modified date';
comment on column FS_FIADB.COND.modified_in_instance
  is 'Modified in instance';
comment on column FS_FIADB.COND.cycle
  is 'Inventory cycle number';
comment on column FS_FIADB.COND.subcycle
  is 'Inventory subcycle number';
comment on column FS_FIADB.COND.soil_rooting_depth_pnw
  is 'Soil rooting depth code (1=less than 20 inches, 2=greater than or equal to 20 inches)';
comment on column FS_FIADB.COND.ground_land_class_pnw
  is 'Ground Land Class';
comment on column FS_FIADB.COND.harvest_type1_srs
  is 'HARVEST_TYPE1_SRS';
comment on column FS_FIADB.COND.harvest_type2_srs
  is 'HARVEST_TYPE2_SRS';
comment on column FS_FIADB.COND.harvest_type3_srs
  is 'HARVEST_TYPE3_SRS';
comment on column FS_FIADB.COND.nf_cond_status_cd
  is 'Nonforest condition status code';
comment on column FS_FIADB.COND.nf_cond_nonsample_reasn_cd
  is 'Nonforest condition nonsampled reason code';
comment on column FS_FIADB.COND.canopy_cvr_sample_method_cd
  is 'Canopy cover sample method code';
comment on column FS_FIADB.COND.live_canopy_cvr_pct
  is 'Live canopy cover (percent)';
comment on column FS_FIADB.COND.live_missing_canopy_cvr_pct
  is 'Live and missing canopy cover (percent)';
comment on column FS_FIADB.COND.nbr_live_stems
  is 'Total number of live stems per acre';
comment on column FS_FIADB.COND.ownsubcd
  is 'A code indicating the sub-class of state-owned lands. Core optional for state-owned land';
comment on column FS_FIADB.COND.industrialcd_fiadb
  is 'A modified version of INDUSTRIALCD that can be included in publicly accessible databases without violating data disclosure policies';
comment on column FS_FIADB.COND.reservcd_5
  is 'The reserved status code used prior to the 6.0 interpretation. Populated only on annual data prior to 6.0.';
comment on column FS_FIADB.COND.admin_withdrawn_cd
  is 'The public administratively withdrawn status.';
comment on column FS_FIADB.COND.chaining_cd
  is 'Chaining Code 0=No 1=Yes';
comment on column FS_FIADB.COND.land_cover_class_cd_ret
  is 'Retired Land Cover Class. Replaced by LAND_COVER_CLASS column starting with 8.0.';
comment on column FS_FIADB.COND.afforestation_cd
  is 'Current Afforestation Code 0=No 1=Yes';
comment on column FS_FIADB.COND.prev_afforestation_cd
  is 'Previous Afforestation Code 0=No 1=Yes';
comment on column FS_FIADB.COND.dwm_fuelbed_typcd
  is 'DWM Condition Fuelbed Type Code';
comment on column FS_FIADB.COND.nvcs_primary_class
  is 'The primary classification of the algorithm [NATURAL|CULTURAL]';
comment on column FS_FIADB.COND.nvcs_level_1_cd
  is 'The code representing the classification at the first level of the National Vegetation Classification System hierarchy.';
comment on column FS_FIADB.COND.nvcs_level_2_cd
  is 'The code representing the classification at the second level of the National Vegetation Classification System hierarchy.';
comment on column FS_FIADB.COND.nvcs_level_3_cd
  is 'The code representing the classification at the third level of the National Vegetation Classification System hierarchy.';
comment on column FS_FIADB.COND.nvcs_level_4_cd
  is 'The code representing the classification at the fourth level of the National Vegetation Classification System hierarchy.';
comment on column FS_FIADB.COND.nvcs_level_5_cd
  is 'The code representing the classification at the fifth level of the National Vegetation Classification System hierarchy.';
comment on column FS_FIADB.COND.nvcs_level_6_cd
  is 'The code representing the classification at the sixth level of the National Vegetation Classification System hierarchy.';
comment on column FS_FIADB.COND.nvcs_level_7_cd
  is 'The code representing the classification at the seventh level of the National Vegetation Classification System hierarchy.';
comment on column FS_FIADB.COND.nvcs_level_8_cd
  is 'The code representing the classification at the eighth level of the National Vegetation Classification System hierarchy.';
comment on column FS_FIADB.COND.age_basis_cd_pnwrs
  is 'A code that indicates the method used to determine stand age (Anchorage FSL, Portland FSL), PNWRS';
comment on column FS_FIADB.COND.cond_status_chng_cd_rmrs
  is 'condition status change code';
comment on column FS_FIADB.COND.crcovpct_rmrs
  is 'percent crown cover';
comment on column FS_FIADB.COND.dominant_species1_pnwrs
  is 'collected in hawaii inventory';
comment on column FS_FIADB.COND.dominant_species2_pnwrs
  is 'collected in hawaii inventory';
comment on column FS_FIADB.COND.dominant_species3_pnwrs
  is 'collected in hawaii inventory';
comment on column FS_FIADB.COND.dstrbcd1_p2a
  is 'disturbance 1 code used for periodic to annual remeasurement';
comment on column FS_FIADB.COND.dstrbcd2_p2a
  is 'disturbance 2 code used for periodic to annual remeasurement';
comment on column FS_FIADB.COND.dstrbcd3_p2a
  is 'disturbance 3 code used for periodic to annual remeasurement';
comment on column FS_FIADB.COND.dstrbyr1_p2a
  is 'year of disturbance 1 used for periodic to annual remeasurement';
comment on column FS_FIADB.COND.dstrbyr2_p2a
  is 'year of disturbance 2 used for periodic to annual remeasurement';
comment on column FS_FIADB.COND.dstrbyr3_p2a
  is 'year of disturbance 3 used for periodic to annual remeasurement';
comment on column FS_FIADB.COND.fldtypcd_30
  is 'field forest type code as collected with 3.0 field guide and before.';
comment on column FS_FIADB.COND.forest_community_pnwrs
  is 'collected in hawaii inventory';
comment on column FS_FIADB.COND.land_usecd_rmrs
  is 'rmrs current land use used for condition filtering';
comment on column FS_FIADB.COND.maicf
  is 'mean annual increment (cubic feet)';
comment on column FS_FIADB.COND.pctbare_rmrs
  is 'percent bare ground';
comment on column FS_FIADB.COND.qmd_rmrs
  is 'quadratic mean dia.-all live trees 1 inch plus';
comment on column FS_FIADB.COND.rangetypcd_rmrs
  is 'range type code rmrs';
comment on column FS_FIADB.COND.sdimax_rmrs
  is 'stand density index maximum';
comment on column FS_FIADB.COND.sdipct_rmrs
  is 'stand density index percent';
comment on column FS_FIADB.COND.sdi_rmrs
  is 'stand density index';
comment on column FS_FIADB.COND.stand_structure_me_ners
  is 'stand structure (me only)';
comment on column FS_FIADB.COND.trees_present_ncrs
  is 'indicates nonforest land without trees (1) or nonforest land with trees (2)';
comment on column FS_FIADB.COND.trees_present_ners
  is 'indicates nonforest land without trees (1) or nonforest land with trees (2)';
comment on column FS_FIADB.COND.trtcd1_p2a
  is 'stand treatment 1 code used for periodic to annual remeasurement';
comment on column FS_FIADB.COND.trtcd2_p2a
  is 'stand treatment 2 code used for periodic to annual remeasurement';
comment on column FS_FIADB.COND.trtcd3_p2a
  is 'stand treatment 3 code used for periodic to annual remeasurement';
comment on column FS_FIADB.COND.trtopcd
  is 'treatment opportunity class code';
comment on column FS_FIADB.COND.trtyr1_p2a
  is 'treatment year 1 used for periodic to annual remeasurement';
comment on column FS_FIADB.COND.trtyr2_p2a
  is 'treatment year 2 used for periodic to annual remeasurement';
comment on column FS_FIADB.COND.trtyr3_p2a
  is 'treatment year 3 used for periodic to annual remeasurement';
  comment on column FS_FIADB.COND.land_cover_class_cd
  is 'Land Cover Class code.';
-- Create/Recreate indexes
create index CND_NAT_I on FS_FIADB.COND (STATECD, INVYR, UNITCD, COUNTYCD, PLOT, CONDID);
create index CND_PLT_FK_I on FS_FIADB.COND (PLT_CN);
-- Create/Recreate primary, unique and foreign key constraints
alter table FS_FIADB.COND
  add constraint CND_PK primary key (CN);
alter table FS_FIADB.COND
  add constraint CND_UK unique (PLT_CN, CONDID);
alter table FS_FIADB.COND
  add constraint CND_PLT_FK foreign key (PLT_CN)
  references FS_FIADB.PLOT (CN);
