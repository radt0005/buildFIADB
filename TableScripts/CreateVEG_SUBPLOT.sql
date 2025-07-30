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
comment on column fs_fiadb.veg_subplot.cn
  is 'CN partly identifies NIMS_VEG_SUBPLOT_TBL';
comment on column fs_fiadb.veg_subplot.plt_cn
  is 'PLT_CN is foreign key to parent NIMS_PLOT_TBL.CN';
comment on column fs_fiadb.veg_subplot.vvt_cn
  is 'VVT_CN is foreign key to parent NIMS_VEG_VISIT_TBL.CN';
comment on column fs_fiadb.veg_subplot.invyr
  is 'NA';
comment on column fs_fiadb.veg_subplot.statecd
  is 'NA';
comment on column fs_fiadb.veg_subplot.countycd
  is 'NA';
comment on column fs_fiadb.veg_subplot.plot
  is 'NA';
comment on column fs_fiadb.veg_subplot.subp
  is 'Subplot Number';
comment on column fs_fiadb.veg_subplot.veg_subp_status_cd
  is 'VEG Subplot Status - as recorded for 2004 and later, copied from subplot record (NIMS, FIADB, or MESS) for pre-2004 plots';
comment on column fs_fiadb.veg_subplot.veg_subp_nonsample_reasn_cd
  is 'Subplot Nonsampled Reason';
comment on column fs_fiadb.veg_subplot.subp_accessible_forest_pct
  is 'Subplot Percent Area Accessible Forest';
comment on column fs_fiadb.veg_subplot.detailed_nonforest_land_use
  is 'Detailed Nonforest Land Use';
comment on column fs_fiadb.veg_subplot.total_canopy_cover_layer_1
  is 'Layer 1 Total Canopy Cover within accessible forestland conditions';
comment on column fs_fiadb.veg_subplot.total_canopy_cover_layer_2
  is 'Layer 2 Total Canopy Cover within accessible forestland conditions';
comment on column fs_fiadb.veg_subplot.total_canopy_cover_layer_3
  is 'Layer 3 Total Canopy Cover within accessible forestland conditions';
comment on column fs_fiadb.veg_subplot.total_canopy_cover_layer_4
  is 'Layer 4 Total Canopy Cover within accessible forestland conditions';
comment on column fs_fiadb.veg_subplot.crypto_crust_cover_pct
  is 'Ground Cover (Cryptobiotic Crust)';
comment on column fs_fiadb.veg_subplot.lichen_cover_pct
  is 'Ground Cover (Lichen)';
comment on column fs_fiadb.veg_subplot.litter_duff_cover_pct
  is 'Ground Cover (Litter Duff)';
comment on column fs_fiadb.veg_subplot.mineral_soil_cover_pct
  is 'Ground Cover (Mineral Soil)';
comment on column fs_fiadb.veg_subplot.moss_cover_pct
  is 'Ground Cover (Moss)';
comment on column fs_fiadb.veg_subplot.road_trail_cover_pct
  is 'Ground Cover (Road;Tral)';
comment on column fs_fiadb.veg_subplot.rock_cover_pct
  is 'Ground Cover (Rock)';
comment on column fs_fiadb.veg_subplot.standing_water_cover_pct
  is 'Ground Cover (Standing Water;Flooded)';
comment on column fs_fiadb.veg_subplot.stream_lake_cover_pct
  is 'Ground Cover (Stream;Lake)';
comment on column fs_fiadb.veg_subplot.trash_junk_cover_pct
  is 'Ground Cover (Trash;Junk;Other)';
comment on column fs_fiadb.veg_subplot.wood_cover_pct
  is 'Ground Cover (Wood)';
comment on column fs_fiadb.veg_subplot.veg_subp_status_cd_pre2004
  is 'Veg Subplot Status Code consistent with NIMS_VEG_VISIT.VEG_MANUAL = 1.7 P3 Veg protocol.  Code 2 = subplot sampled, accessible forest < 50% of subplot.  Value derived from P2 condition data, plot notes, and availability of various field-recorded records (e.g. subplot species and subplot totals).;';
comment on column fs_fiadb.veg_subplot.veg_subp_nonsmp_rsn_cd_pre2004
  is 'Veg Subplot Nonsampled Reason Code Code consistent with NIMS_VEG_VISIT.VEG_MANUAL = 1.7 P3 Veg protocol.  Value derived from VEG_SUBP_NONSAMPLE_REASN_CD, P2 condition data, plot notes, and availability of various field-recorded records (e.g. subplot species and subplot totals).;';
comment on column fs_fiadb.veg_subplot.created_date
  is 'CREATED_DATE';
comment on column fs_fiadb.veg_subplot.modified_date
  is 'MODIFIED_DATE';
create index VSB_NAT_I on FS_FIADB.VEG_SUBPLOT (PLOT, STATECD, COUNTYCD, SUBP, INVYR);
alter table FS_FIADB.VEG_SUBPLOT add constraint VSB_PK primary key (CN);
alter table FS_FIADB.VEG_SUBPLOT add constraint VSB_UK2 unique (CN, PLT_CN, VVT_CN);
alter table FS_FIADB.VEG_SUBPLOT add constraint VSB_UK unique (VVT_CN, PLT_CN, SUBP);