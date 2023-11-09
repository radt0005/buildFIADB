-- Create table
create table FS_FIADB.VEG_SUBPLOT
(
  cn                             VARCHAR(34) not null,
  plt_cn                         VARCHAR(34) not null,
  vvt_cn                         VARCHAR(34) not null,
  invyr                          SMALLINT not null,
  statecd                        SMALLINT not null,
  countycd                       SMALLINT not null,
  plot                           INT not null,
  subp                           SMALLINT not null,
  veg_subp_status_cd             SMALLINT,
  veg_subp_nonsample_reasn_cd    SMALLINT,
  subp_accessible_forest_pct     SMALLINT,
  detailed_nonforest_land_use    SMALLINT,
  total_canopy_cover_layer_1     SMALLINT,
  total_canopy_cover_layer_2     SMALLINT,
  total_canopy_cover_layer_3     SMALLINT,
  total_canopy_cover_layer_4     SMALLINT,
  crypto_crust_cover_pct         SMALLINT,
  lichen_cover_pct               SMALLINT,
  litter_duff_cover_pct          SMALLINT,
  mineral_soil_cover_pct         SMALLINT,
  moss_cover_pct                 SMALLINT,
  road_trail_cover_pct           SMALLINT,
  rock_cover_pct                 SMALLINT,
  standing_water_cover_pct       SMALLINT,
  stream_lake_cover_pct          SMALLINT,
  trash_junk_cover_pct           SMALLINT,
  wood_cover_pct                 SMALLINT,
  veg_subp_status_cd_pre2004     SMALLINT,
  veg_subp_nonsmp_rsn_cd_pre2004 SMALLINT,
  created_by                     VARCHAR(30),
  created_date                   TIMESTAMP(0),
  created_in_instance            VARCHAR(6),
  modified_by                    VARCHAR(30),
  modified_date                  TIMESTAMP(0),
  modified_in_instance           VARCHAR(6)
);
-- Add comments to the table 
comment on table FS_FIADB.VEG_SUBPLOT
  is '6.0';
-- Add comments to the columns 
comment on column FS_FIADB.VEG_SUBPLOT.cn
  is 'CN partly identifies NIMS_VEG_SUBPLOT_TBL';
comment on column FS_FIADB.VEG_SUBPLOT.plt_cn
  is 'PLT_CN is foreign key to parent NIMS_PLOT_TBL.CN';
comment on column FS_FIADB.VEG_SUBPLOT.vvt_cn
  is 'VVT_CN is foreign key to parent NIMS_VEG_VISIT_TBL.CN';
comment on column FS_FIADB.VEG_SUBPLOT.subp
  is 'Subplot Number';
comment on column FS_FIADB.VEG_SUBPLOT.veg_subp_status_cd
  is 'VEG Subplot Status - as recorded for 2004 and later, copied from subplot record (NIMS, FIADB, or MESS) for pre-2004 plots';
comment on column FS_FIADB.VEG_SUBPLOT.veg_subp_nonsample_reasn_cd
  is 'Subplot Nonsampled Reason';
comment on column FS_FIADB.VEG_SUBPLOT.subp_accessible_forest_pct
  is 'Subplot Percent Area Accessible Forest';
comment on column FS_FIADB.VEG_SUBPLOT.detailed_nonforest_land_use
  is 'Detailed Nonforest Land Use';
comment on column FS_FIADB.VEG_SUBPLOT.total_canopy_cover_layer_1
  is 'Layer 1 Total Canopy Cover within accessible forestland conditions';
comment on column FS_FIADB.VEG_SUBPLOT.total_canopy_cover_layer_2
  is 'Layer 2 Total Canopy Cover within accessible forestland conditions';
comment on column FS_FIADB.VEG_SUBPLOT.total_canopy_cover_layer_3
  is 'Layer 3 Total Canopy Cover within accessible forestland conditions';
comment on column FS_FIADB.VEG_SUBPLOT.total_canopy_cover_layer_4
  is 'Layer 4 Total Canopy Cover within accessible forestland conditions';
comment on column FS_FIADB.VEG_SUBPLOT.crypto_crust_cover_pct
  is 'Ground Cover (Cryptobiotic Crust)';
comment on column FS_FIADB.VEG_SUBPLOT.lichen_cover_pct
  is 'Ground Cover (Lichen)';
comment on column FS_FIADB.VEG_SUBPLOT.litter_duff_cover_pct
  is 'Ground Cover (Litter Duff)';
comment on column FS_FIADB.VEG_SUBPLOT.mineral_soil_cover_pct
  is 'Ground Cover (Mineral Soil)';
comment on column FS_FIADB.VEG_SUBPLOT.moss_cover_pct
  is 'Ground Cover (Moss)';
comment on column FS_FIADB.VEG_SUBPLOT.road_trail_cover_pct
  is 'Ground Cover (Road;Tral)';
comment on column FS_FIADB.VEG_SUBPLOT.rock_cover_pct
  is 'Ground Cover (Rock)';
comment on column FS_FIADB.VEG_SUBPLOT.standing_water_cover_pct
  is 'Ground Cover (Standing Water;Flooded)';
comment on column FS_FIADB.VEG_SUBPLOT.stream_lake_cover_pct
  is 'Ground Cover (Stream;Lake)';
comment on column FS_FIADB.VEG_SUBPLOT.trash_junk_cover_pct
  is 'Ground Cover (Trash;Junk;Other)';
comment on column FS_FIADB.VEG_SUBPLOT.wood_cover_pct
  is 'Ground Cover (Wood)';
comment on column FS_FIADB.VEG_SUBPLOT.veg_subp_status_cd_pre2004
  is '''Veg Subplot Status Code consistent with NIMS_VEG_VISIT.VEG_MANUAL = 1.7 P3 Veg protocol.  Code 2 = subplot sampled, accessible forest < 50% of subplot.  Value derived from P2 condition data, plot notes, and availability of various field-recorded records (e.g. subplot species and subplot totals).'';';
comment on column FS_FIADB.VEG_SUBPLOT.veg_subp_nonsmp_rsn_cd_pre2004
  is '''Veg Subplot Nonsampled Reason Code Code consistent with NIMS_VEG_VISIT.VEG_MANUAL = 1.7 P3 Veg protocol.  Value derived from VEG_SUBP_NONSAMPLE_REASN_CD, P2 condition data, plot notes, and availability of various field-recorded records (e.g. subplot species and subplot totals).'';';
comment on column FS_FIADB.VEG_SUBPLOT.created_by
  is 'CREATED_BY user';
comment on column FS_FIADB.VEG_SUBPLOT.created_date
  is 'CREATED_DATE';
comment on column FS_FIADB.VEG_SUBPLOT.created_in_instance
  is 'CREATED_IN_INSTANCE is of NIMS_VEG_SUBPLOT_TBL';
comment on column FS_FIADB.VEG_SUBPLOT.modified_by
  is 'MODIFIED_BY user';
comment on column FS_FIADB.VEG_SUBPLOT.modified_date
  is 'MODIFIED_DATE';
comment on column FS_FIADB.VEG_SUBPLOT.modified_in_instance
  is 'MODIFIED_IN_INSTANCE is of NIMS_VEG_SUBPLOT_TBL';
-- Create/Recreate indexes 
create index VSB_NAT_I on FS_FIADB.VEG_SUBPLOT (STATECD, INVYR, COUNTYCD, PLOT, SUBP);
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.VEG_SUBPLOT
  add constraint VSB_PK primary key (CN);
alter table FS_FIADB.VEG_SUBPLOT
  add constraint VSB_UK unique (PLT_CN, VVT_CN, SUBP);
alter table FS_FIADB.VEG_SUBPLOT
  add constraint VSB_UK2 unique (PLT_CN, VVT_CN, CN);