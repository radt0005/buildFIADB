CREATE TABLE fs_fiadb.veg_subplot
(
cn                             VARCHAR(34) NOT NULL,
plt_cn                         VARCHAR(34) NOT NULL,
vvt_cn                         VARCHAR(34) NOT NULL,
invyr                          INTEGER NOT NULL,
statecd                        INTEGER NOT NULL,
countycd                       INTEGER NOT NULL,
plot                           INTEGER NOT NULL,
subp                           INTEGER NOT NULL,
veg_subp_status_cd             INTEGER,
veg_subp_nonsample_reasn_cd    INTEGER,
subp_accessible_forest_pct     INTEGER,
detailed_nonforest_land_use    INTEGER,
total_canopy_cover_layer_1     INTEGER,
total_canopy_cover_layer_2     INTEGER,
total_canopy_cover_layer_3     INTEGER,
total_canopy_cover_layer_4     INTEGER,
crypto_crust_cover_pct         INTEGER,
lichen_cover_pct               INTEGER,
litter_duff_cover_pct          INTEGER,
mineral_soil_cover_pct         INTEGER,
moss_cover_pct                 INTEGER,
road_trail_cover_pct           INTEGER,
rock_cover_pct                 INTEGER,
standing_water_cover_pct       INTEGER,
stream_lake_cover_pct          INTEGER,
trash_junk_cover_pct           INTEGER,
wood_cover_pct                 INTEGER,
veg_subp_status_cd_pre2004     INTEGER,
veg_subp_nonsmp_rsn_cd_pre2004 INTEGER,
created_date                   TIMESTAMP(0),
modified_date                  TIMESTAMP(0)
);
create index VSB_NAT_I on FS_FIADB.VEG_SUBPLOT (STATECD, INVYR, COUNTYCD, PLOT, SUBP);
alter table FS_FIADB.VEG_SUBPLOT add constraint VSB_PK primary key (CN);
alter table FS_FIADB.VEG_SUBPLOT add constraint VSB_UK2 unique (PLT_CN, VVT_CN, CN);
alter table FS_FIADB.VEG_SUBPLOT add constraint VSB_UK unique (PLT_CN, VVT_CN, SUBP);