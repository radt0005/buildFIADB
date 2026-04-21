CREATE TABLE fs_fiadb.cond
(
cn                            VARCHAR(34) NOT NULL,
plt_cn                        VARCHAR(34) NOT NULL,
invyr                         INTEGER NOT NULL,
statecd                       INTEGER NOT NULL,
unitcd                        INTEGER NOT NULL,
countycd                      INTEGER NOT NULL,
plot                          INTEGER NOT NULL,
condid                        INTEGER NOT NULL,
cond_status_cd                INTEGER NOT NULL,
cond_nonsample_reasn_cd       INTEGER,
reservcd                      INTEGER,
owncd                         INTEGER,
owngrpcd                      INTEGER,
adforcd                       INTEGER,
fortypcd                      INTEGER,
fldtypcd                      INTEGER,
mapden                        INTEGER,
stdage                        INTEGER,
stdszcd                       INTEGER,
fldszcd                       INTEGER,
siteclcd                      INTEGER,
sicond                        INTEGER,
sibase                        INTEGER,
sisp                          INTEGER,
stdorgcd                      INTEGER,
stdorgsp                      DOUBLE PRECISION,
prop_basis                    VARCHAR(12),
condprop_unadj                DOUBLE PRECISION,
micrprop_unadj                DOUBLE PRECISION,
subpprop_unadj                DOUBLE PRECISION,
macrprop_unadj                DOUBLE PRECISION,
slope                         INTEGER,
aspect                        INTEGER,
physclcd                      INTEGER,
gsstkcd                       INTEGER,
alstkcd                       INTEGER,
dstrbcd1                      INTEGER,
dstrbyr1                      INTEGER,
dstrbcd2                      INTEGER,
dstrbyr2                      INTEGER,
dstrbcd3                      INTEGER,
dstrbyr3                      INTEGER,
trtcd1                        INTEGER,
trtyr1                        INTEGER,
trtcd2                        INTEGER,
trtyr2                        INTEGER,
trtcd3                        INTEGER,
trtyr3                        INTEGER,
presnfcd                      INTEGER,
balive                        DECIMAL(9,4),
fldage                        INTEGER,
alstk                         DECIMAL(7,4),
gsstk                         DECIMAL(7,4),
fortypcdcalc                  INTEGER,
habtypcd1                     VARCHAR(10),
habtypcd1_pub_cd              VARCHAR(10),
habtypcd1_descr_pub_cd        VARCHAR(10),
habtypcd2                     VARCHAR(10),
habtypcd2_pub_cd              VARCHAR(10),
habtypcd2_descr_pub_cd        VARCHAR(10),
mixedconfcd                   VARCHAR(1),
vol_loc_grp                   VARCHAR(200),
siteclcdest                   INTEGER,
sitetree_tree                 INTEGER,
sitecl_method                 INTEGER,
carbon_down_dead              DECIMAL(13,6),
carbon_litter                 DECIMAL(13,6),
carbon_soil_org               DECIMAL(13,6),
carbon_understory_ag          DECIMAL(13,6),
carbon_understory_bg          DECIMAL(13,6),
created_date                  TIMESTAMP(0),
modified_date                 TIMESTAMP(0),
cycle                         INTEGER,
subcycle                      INTEGER,
soil_rooting_depth_pnw        VARCHAR(1),
ground_land_class_pnw         VARCHAR(3),
plant_stockability_factor_pnw DOUBLE PRECISION,
stnd_cond_cd_pnwrs            INTEGER,
stnd_struc_cd_pnwrs           INTEGER,
stump_cd_pnwrs                VARCHAR(1),
fire_srs                      INTEGER,
grazing_srs                   INTEGER,
harvest_type1_srs             INTEGER,
harvest_type2_srs             INTEGER,
harvest_type3_srs             INTEGER,
land_use_srs                  INTEGER,
operability_srs               INTEGER,
stand_structure_srs           INTEGER,
nf_cond_status_cd             INTEGER,
nf_cond_nonsample_reasn_cd    INTEGER,
canopy_cvr_sample_method_cd   INTEGER,
live_canopy_cvr_pct           INTEGER,
live_missing_canopy_cvr_pct   INTEGER,
nbr_live_stems                INTEGER,
ownsubcd                      INTEGER,
industrialcd_fiadb            INTEGER,
reservcd_5                    INTEGER,
admin_withdrawn_cd            INTEGER,
chaining_cd                   INTEGER,
land_cover_class_cd_ret       INTEGER,
afforestation_cd              INTEGER,
prev_afforestation_cd         INTEGER,
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
age_basis_cd_pnwrs            INTEGER,
cond_status_chng_cd_rmrs      INTEGER,
crcovpct_rmrs                 INTEGER,
dominant_species1_pnwrs       INTEGER,
dominant_species2_pnwrs       INTEGER,
dominant_species3_pnwrs       INTEGER,
dstrbcd1_p2a                  INTEGER,
dstrbcd2_p2a                  INTEGER,
dstrbcd3_p2a                  INTEGER,
dstrbyr1_p2a                  INTEGER,
dstrbyr2_p2a                  INTEGER,
dstrbyr3_p2a                  INTEGER,
fldtypcd_30                   INTEGER,
forest_community_pnwrs        INTEGER,
land_usecd_rmrs               INTEGER,
maicf                         DECIMAL(5,2),
pctbare_rmrs                  INTEGER,
qmd_rmrs                      DECIMAL(5,1),
rangetypcd_rmrs               INTEGER,
sdimax_rmrs                   INTEGER,
sdipct_rmrs                   DECIMAL(4,1),
sdi_rmrs                      DECIMAL(8,4),
stand_structure_me_ners       INTEGER,
trees_present_ncrs            INTEGER,
trees_present_ners            INTEGER,
trtcd1_p2a                    INTEGER,
trtcd2_p2a                    INTEGER,
trtcd3_p2a                    INTEGER,
trtopcd                       INTEGER,
trtyr1_p2a                    INTEGER,
trtyr2_p2a                    INTEGER,
trtyr3_p2a                    INTEGER,
land_cover_class_cd           INTEGER,
sieqn_ref_cd                  VARCHAR(10),
sicond_fvs                    INTEGER,
sibase_fvs                    INTEGER,
sisp_fvs                      INTEGER,
sieqn_ref_cd_fvs              VARCHAR(10),
mquadprop_unadj               DECIMAL(11,10),
soilprop_unadj                DECIMAL(11,10),
forest_cond_status_change_cd  INTEGER
);
comment on column fs_fiadb.cond.cn
  is 'Unique index';
comment on column fs_fiadb.cond.plt_cn
  is 'Unique index';
comment on column fs_fiadb.cond.invyr
  is 'NA';
comment on column fs_fiadb.cond.statecd
  is 'State code';
comment on column fs_fiadb.cond.unitcd
  is 'Survey unit code';
comment on column fs_fiadb.cond.countycd
  is 'County code';
comment on column fs_fiadb.cond.plot
  is 'Plot number';
comment on column fs_fiadb.cond.condid
  is 'Condition number';
comment on column fs_fiadb.cond.cond_status_cd
  is 'CONDITION STATUS CODE';
comment on column fs_fiadb.cond.cond_nonsample_reasn_cd
  is 'NA';
comment on column fs_fiadb.cond.reservcd
  is 'Reserved status class code';
comment on column fs_fiadb.cond.owncd
  is 'Owner class code';
comment on column fs_fiadb.cond.owngrpcd
  is 'Ownership group class code';
comment on column fs_fiadb.cond.adforcd
  is 'Administrative forest code';
comment on column fs_fiadb.cond.fortypcd
  is 'Forest type code (computed)';
comment on column fs_fiadb.cond.fldtypcd
  is 'Field forest type code';
comment on column fs_fiadb.cond.mapden
  is 'Change in tree density';
comment on column fs_fiadb.cond.stdage
  is 'Stand age';
comment on column fs_fiadb.cond.stdszcd
  is 'Stand-size class code (computed)';
comment on column fs_fiadb.cond.fldszcd
  is 'Field stand-size class code';
comment on column fs_fiadb.cond.siteclcd
  is 'Site productivity class code';
comment on column fs_fiadb.cond.sicond
  is 'Site index';
comment on column fs_fiadb.cond.sibase
  is 'Site index base age';
comment on column fs_fiadb.cond.sisp
  is 'Site index species code';
comment on column fs_fiadb.cond.stdorgcd
  is 'Stand origin code';
comment on column fs_fiadb.cond.stdorgsp
  is 'Stand origin species code';
comment on column fs_fiadb.cond.prop_basis
  is 'PROPORTION BASIS - VALUES ARE SUBP AND MACRO.  Default is SUBP.  Updated in nims_condprop.pkg, IF MACRO  is present.';
comment on column fs_fiadb.cond.condprop_unadj
  is 'NA';
comment on column fs_fiadb.cond.micrprop_unadj
  is 'NA';
comment on column fs_fiadb.cond.subpprop_unadj
  is 'NA';
comment on column fs_fiadb.cond.macrprop_unadj
  is 'NA';
comment on column fs_fiadb.cond.slope
  is 'Slope';
comment on column fs_fiadb.cond.aspect
  is 'Aspect';
comment on column fs_fiadb.cond.physclcd
  is 'Physiographic class code';
comment on column fs_fiadb.cond.gsstkcd
  is 'Growing-stock stocking code';
comment on column fs_fiadb.cond.alstkcd
  is 'All live stocking code';
comment on column fs_fiadb.cond.dstrbcd1
  is 'Disturbance 1 code';
comment on column fs_fiadb.cond.dstrbyr1
  is 'Year of Disturbance 1';
comment on column fs_fiadb.cond.dstrbcd2
  is 'Disturbance 2 code';
comment on column fs_fiadb.cond.dstrbyr2
  is 'Year of Disturbance 2';
comment on column fs_fiadb.cond.dstrbcd3
  is 'Disturbance 3 code';
comment on column fs_fiadb.cond.dstrbyr3
  is 'Year of Disturbance 3';
comment on column fs_fiadb.cond.trtcd1
  is 'Stand Treatment 1 code';
comment on column fs_fiadb.cond.trtyr1
  is 'Treatment year 1';
comment on column fs_fiadb.cond.trtcd2
  is 'Stand treatment 2';
comment on column fs_fiadb.cond.trtyr2
  is 'Treatment year 2';
comment on column fs_fiadb.cond.trtcd3
  is 'Stand Treatment 3 code';
comment on column fs_fiadb.cond.trtyr3
  is 'Treatment year 3';
comment on column fs_fiadb.cond.presnfcd
  is 'Present nonforest land use code';
comment on column fs_fiadb.cond.balive
  is 'Basal area of all live trees';
comment on column fs_fiadb.cond.fldage
  is 'Field stand age';
comment on column fs_fiadb.cond.alstk
  is 'All live stocking percent';
comment on column fs_fiadb.cond.gsstk
  is 'Growing-stock stocking percent';
comment on column fs_fiadb.cond.fortypcdcalc
  is 'CALCULATED FOREST TYPE CODE WITH A NATIONAL ALGORITHM';
comment on column fs_fiadb.cond.habtypcd1
  is 'Primary condition habitat type';
comment on column fs_fiadb.cond.habtypcd1_pub_cd
  is 'NA';
comment on column fs_fiadb.cond.habtypcd1_descr_pub_cd
  is 'NA';
comment on column fs_fiadb.cond.habtypcd2
  is 'Secondary condition habitat type';
comment on column fs_fiadb.cond.habtypcd2_pub_cd
  is 'NA';
comment on column fs_fiadb.cond.habtypcd2_descr_pub_cd
  is 'NA';
comment on column fs_fiadb.cond.mixedconfcd
  is 'Calculated forest type for mixed conifer site';
comment on column fs_fiadb.cond.vol_loc_grp
  is 'VOLUME LOCATION GROUP';
comment on column fs_fiadb.cond.siteclcdest
  is 'NA';
comment on column fs_fiadb.cond.sitetree_tree
  is 'Selected SITETREE tree number';
comment on column fs_fiadb.cond.sitecl_method
  is ' Selected SITE CLASS method type';
comment on column fs_fiadb.cond.carbon_down_dead
  is 'Carbon in stumps and roots dwm 3"+ dia (tons;acre)';
comment on column fs_fiadb.cond.carbon_litter
  is 'Carbon pounds;acre fine woody debris upto 3"( tons;acre)';
comment on column fs_fiadb.cond.carbon_soil_org
  is 'Carbon in soil and fine roots to depth of 1 meter (tons ;acre)';
comment on column fs_fiadb.cond.carbon_understory_ag
  is 'Carbon in seedlings and shrubs above ground (tons;acre)';
comment on column fs_fiadb.cond.carbon_understory_bg
  is 'Carbon in roots of seedlings, shrubs below ground (tons;acre)';
comment on column fs_fiadb.cond.created_date
  is 'Created date';
comment on column fs_fiadb.cond.modified_date
  is 'Modified date';
comment on column fs_fiadb.cond.cycle
  is 'Inventory cycle number';
comment on column fs_fiadb.cond.subcycle
  is 'Inventory subcycle number';
comment on column fs_fiadb.cond.soil_rooting_depth_pnw
  is 'Soil rooting depth code (1=less than 20 inches, 2=greater than or equal to 20 inches)';
comment on column fs_fiadb.cond.ground_land_class_pnw
  is 'Ground Land Class';
comment on column fs_fiadb.cond.plant_stockability_factor_pnw
  is 'NA';
comment on column fs_fiadb.cond.stnd_cond_cd_pnwrs
  is 'NA';
comment on column fs_fiadb.cond.stnd_struc_cd_pnwrs
  is 'NA';
comment on column fs_fiadb.cond.stump_cd_pnwrs
  is 'NA';
comment on column fs_fiadb.cond.fire_srs
  is 'NA';
comment on column fs_fiadb.cond.grazing_srs
  is 'NA';
comment on column fs_fiadb.cond.harvest_type1_srs
  is 'HARVEST_TYPE1_SRS';
comment on column fs_fiadb.cond.harvest_type2_srs
  is 'HARVEST_TYPE2_SRS';
comment on column fs_fiadb.cond.harvest_type3_srs
  is 'HARVEST_TYPE3_SRS';
comment on column fs_fiadb.cond.land_use_srs
  is 'NA';
comment on column fs_fiadb.cond.operability_srs
  is 'NA';
comment on column fs_fiadb.cond.stand_structure_srs
  is 'NA';
comment on column fs_fiadb.cond.nf_cond_status_cd
  is 'Nonforest condition status code';
comment on column fs_fiadb.cond.nf_cond_nonsample_reasn_cd
  is 'Nonforest condition nonsampled reason code';
comment on column fs_fiadb.cond.canopy_cvr_sample_method_cd
  is 'Canopy cover sample method code';
comment on column fs_fiadb.cond.live_canopy_cvr_pct
  is 'Live canopy cover (percent)';
comment on column fs_fiadb.cond.live_missing_canopy_cvr_pct
  is 'Live and missing canopy cover (percent)';
comment on column fs_fiadb.cond.nbr_live_stems
  is 'Total number of live stems per acre';
comment on column fs_fiadb.cond.ownsubcd
  is 'A code indicating the sub-class of state-owned lands. Core optional for state-owned land';
comment on column fs_fiadb.cond.industrialcd_fiadb
  is 'A modified version of INDUSTRIALCD that can be included in publicly accessible databases without violating data disclosure policies';
comment on column fs_fiadb.cond.reservcd_5
  is 'The reserved status code used prior to the 6.0 interpretation. Populated only on annual data prior to 6.0.';
comment on column fs_fiadb.cond.admin_withdrawn_cd
  is 'The public administratively withdrawn status.';
comment on column fs_fiadb.cond.chaining_cd
  is 'Chaining Code 0=No 1=Yes';
comment on column fs_fiadb.cond.land_cover_class_cd_ret
  is 'Retired Land Cover Class. Replaced by LAND_COVER_CLASS column starting with 8.0.';
comment on column fs_fiadb.cond.afforestation_cd
  is 'Current Afforestation Code 0=No 1=Yes';
comment on column fs_fiadb.cond.prev_afforestation_cd
  is 'Previous Afforestation Code 0=No 1=Yes';
comment on column fs_fiadb.cond.dwm_fuelbed_typcd
  is 'DWM Condition Fuelbed Type Code';
comment on column fs_fiadb.cond.nvcs_primary_class
  is 'The primary classification of the algorithm [NATURAL|CULTURAL]';
comment on column fs_fiadb.cond.nvcs_level_1_cd
  is 'The code representing the classification at the first level of the National Vegetation Classification System hierarchy.';
comment on column fs_fiadb.cond.nvcs_level_2_cd
  is 'The code representing the classification at the second level of the National Vegetation Classification System hierarchy.';
comment on column fs_fiadb.cond.nvcs_level_3_cd
  is 'The code representing the classification at the third level of the National Vegetation Classification System hierarchy.';
comment on column fs_fiadb.cond.nvcs_level_4_cd
  is 'The code representing the classification at the fourth level of the National Vegetation Classification System hierarchy.';
comment on column fs_fiadb.cond.nvcs_level_5_cd
  is 'The code representing the classification at the fifth level of the National Vegetation Classification System hierarchy.';
comment on column fs_fiadb.cond.nvcs_level_6_cd
  is 'The code representing the classification at the sixth level of the National Vegetation Classification System hierarchy.';
comment on column fs_fiadb.cond.nvcs_level_7_cd
  is 'The code representing the classification at the seventh level of the National Vegetation Classification System hierarchy.';
comment on column fs_fiadb.cond.nvcs_level_8_cd
  is 'The code representing the classification at the eighth level of the National Vegetation Classification System hierarchy.';
comment on column fs_fiadb.cond.age_basis_cd_pnwrs
  is 'A code that indicates the method used to determine stand age (Anchorage FSL, Portland FSL), PNWRS';
comment on column fs_fiadb.cond.cond_status_chng_cd_rmrs
  is 'condition status change code';
comment on column fs_fiadb.cond.crcovpct_rmrs
  is 'percent crown cover';
comment on column fs_fiadb.cond.dominant_species1_pnwrs
  is 'collected in hawaii inventory';
comment on column fs_fiadb.cond.dominant_species2_pnwrs
  is 'collected in hawaii inventory';
comment on column fs_fiadb.cond.dominant_species3_pnwrs
  is 'collected in hawaii inventory';
comment on column fs_fiadb.cond.dstrbcd1_p2a
  is 'disturbance 1 code used for periodic to annual remeasurement';
comment on column fs_fiadb.cond.dstrbcd2_p2a
  is 'disturbance 2 code used for periodic to annual remeasurement';
comment on column fs_fiadb.cond.dstrbcd3_p2a
  is 'disturbance 3 code used for periodic to annual remeasurement';
comment on column fs_fiadb.cond.dstrbyr1_p2a
  is 'year of disturbance 1 used for periodic to annual remeasurement';
comment on column fs_fiadb.cond.dstrbyr2_p2a
  is 'year of disturbance 2 used for periodic to annual remeasurement';
comment on column fs_fiadb.cond.dstrbyr3_p2a
  is 'year of disturbance 3 used for periodic to annual remeasurement';
comment on column fs_fiadb.cond.fldtypcd_30
  is 'field forest type code as collected with 3.0 field guide and before.';
comment on column fs_fiadb.cond.forest_community_pnwrs
  is 'collected in hawaii inventory';
comment on column fs_fiadb.cond.land_usecd_rmrs
  is 'rmrs current land use used for condition filtering';
comment on column fs_fiadb.cond.maicf
  is 'mean annual increment (cubic feet)';
comment on column fs_fiadb.cond.pctbare_rmrs
  is 'percent bare ground';
comment on column fs_fiadb.cond.qmd_rmrs
  is 'quadratic mean dia.-all live trees 1 inch plus';
comment on column fs_fiadb.cond.rangetypcd_rmrs
  is 'range type code rmrs';
comment on column fs_fiadb.cond.sdimax_rmrs
  is 'stand density index maximum';
comment on column fs_fiadb.cond.sdipct_rmrs
  is 'stand density index percent';
comment on column fs_fiadb.cond.sdi_rmrs
  is 'stand density index';
comment on column fs_fiadb.cond.stand_structure_me_ners
  is 'stand structure (me only)';
comment on column fs_fiadb.cond.trees_present_ncrs
  is 'indicates nonforest land without trees (1) or nonforest land with trees (2)';
comment on column fs_fiadb.cond.trees_present_ners
  is 'indicates nonforest land without trees (1) or nonforest land with trees (2)';
comment on column fs_fiadb.cond.trtcd1_p2a
  is 'stand treatment 1 code used for periodic to annual remeasurement';
comment on column fs_fiadb.cond.trtcd2_p2a
  is 'stand treatment 2 code used for periodic to annual remeasurement';
comment on column fs_fiadb.cond.trtcd3_p2a
  is 'stand treatment 3 code used for periodic to annual remeasurement';
comment on column fs_fiadb.cond.trtopcd
  is 'treatment opportunity class code';
comment on column fs_fiadb.cond.trtyr1_p2a
  is 'treatment year 1 used for periodic to annual remeasurement';
comment on column fs_fiadb.cond.trtyr2_p2a
  is 'treatment year 2 used for periodic to annual remeasurement';
comment on column fs_fiadb.cond.trtyr3_p2a
  is 'treatment year 3 used for periodic to annual remeasurement';
comment on column fs_fiadb.cond.land_cover_class_cd
  is 'Land Cover Class code.';
comment on column fs_fiadb.cond.sieqn_ref_cd
  is 'Site index equation reference code used by the Forest Vegetation Simulator';
comment on column fs_fiadb.cond.sicond_fvs
  is 'Site index for the condition, for the Forest Vegetation Simulator';
comment on column fs_fiadb.cond.sibase_fvs
  is 'Site index base age used by the Forest Vegetation Simulator';
comment on column fs_fiadb.cond.sisp_fvs
  is 'Site index species code used by the Forest Vegetation Simulator';
comment on column fs_fiadb.cond.sieqn_ref_cd_fvs
  is 'NA';
comment on column fs_fiadb.cond.mquadprop_unadj
  is 'Ground layer condition proportion based on the sampling design';
comment on column fs_fiadb.cond.soilprop_unadj
  is 'Soil condition proportion based on the sampling design';
comment on column fs_fiadb.cond.forest_cond_status_change_cd
  is 'Forest land condition status change code';
create index CND_NAT_I on FS_FIADB.COND (INVYR, PLOT, COUNTYCD, UNITCD, CONDID, STATECD);
create index CND_PLT_FK_I on FS_FIADB.COND (PLT_CN);
create index IDX$$_10CBE0001 on FS_FIADB.COND (COND_STATUS_CD);
alter table FS_FIADB.COND add constraint CND_PK primary key (CN);
alter table FS_FIADB.COND add constraint CND_UK unique (CONDID, PLT_CN);
alter table FS_FIADB.COND add constraint CND_PLT_FK foreign key (PLT_CN) references FS_FIADB.PLOT (CN);