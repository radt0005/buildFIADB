-- Create table
create table FS_FIADB.SUBPLOT
(
  cn                            VARCHAR(34) not null,
  plt_cn                        VARCHAR(34) not null,
  prev_sbp_cn                   VARCHAR(34),
  invyr                         SMALLINT not null,
  statecd                       SMALLINT not null,
  unitcd                        SMALLINT not null,
  countycd                      SMALLINT not null,
  plot                          INT not null,
  subp                          SMALLINT not null,
  subp_status_cd                SMALLINT,
  point_nonsample_reasn_cd      SMALLINT,
  micrcond                      SMALLINT,
  subpcond                      SMALLINT,
  macrcond                      SMALLINT,
  condlist                      SMALLINT,
  slope                         SMALLINT,
  aspect                        SMALLINT,
  waterdep                      DECIMAL(2,1),
  p2a_grm_flg                   VARCHAR(1),
  created_by                    VARCHAR(30),
  created_date                  TIMESTAMP(0),
  created_in_instance           VARCHAR(6),
  modified_by                   VARCHAR(30),
  modified_date                 TIMESTAMP(0),
  modified_in_instance          VARCHAR(6),
  cycle                         SMALLINT,
  subcycle                      SMALLINT,
  root_dis_sev_cd_pnwrs         SMALLINT,
  nf_subp_status_cd             SMALLINT,
  nf_subp_nonsample_reasn_cd    SMALLINT,
  p2veg_subp_status_cd          SMALLINT,
  p2veg_subp_nonsample_reasn_cd SMALLINT,
  invasive_subp_status_cd       SMALLINT,
  invasive_nonsample_reasn_cd   SMALLINT,
  crown_closure_me_ners         SMALLINT,
  ground_tran_pts_bare_rmrs     SMALLINT,
  ground_tran_pts_cryp_rmrs     SMALLINT,
  ground_tran_pts_dev_rmrs      SMALLINT,
  ground_tran_pts_lichen_rmrs   SMALLINT,
  ground_tran_pts_litter_rmrs   SMALLINT,
  ground_tran_pts_moss_rmrs     SMALLINT,
  ground_tran_pts_notsamp_rmrs  SMALLINT,
  ground_tran_pts_other_rmrs    SMALLINT,
  ground_tran_pts_peis_rmrs     SMALLINT,
  ground_tran_pts_road_rmrs     SMALLINT,
  ground_tran_pts_rock_rmrs     SMALLINT,
  ground_tran_pts_tris_rmrs     SMALLINT,
  ground_tran_pts_veg_rmrs      SMALLINT,
  ground_tran_pts_water_rmrs    SMALLINT,
  ground_tran_pts_wood_rmrs     SMALLINT,
  prev_statuscd_rmrs            SMALLINT,
  rootsevcd_rmrs                SMALLINT
);
-- Add comments to the table 
comment on table FS_FIADB.SUBPLOT
  is '6.0';
-- Add comments to the columns 
comment on column FS_FIADB.SUBPLOT.cn
  is 'Unique index';
comment on column FS_FIADB.SUBPLOT.plt_cn
  is 'Unique index';
comment on column FS_FIADB.SUBPLOT.prev_sbp_cn
  is 'Unique index';
comment on column FS_FIADB.SUBPLOT.statecd
  is 'State code';
comment on column FS_FIADB.SUBPLOT.unitcd
  is 'Survey unit code';
comment on column FS_FIADB.SUBPLOT.countycd
  is 'County code';
comment on column FS_FIADB.SUBPLOT.plot
  is 'Plot number';
comment on column FS_FIADB.SUBPLOT.subp
  is 'Subplot number';
comment on column FS_FIADB.SUBPLOT.micrcond
  is 'Microplot center condition';
comment on column FS_FIADB.SUBPLOT.subpcond
  is 'Subplot center condition';
comment on column FS_FIADB.SUBPLOT.macrcond
  is 'Macroplot center condition';
comment on column FS_FIADB.SUBPLOT.condlist
  is 'SUBPLOT;ANNULAR PLOT CONDITION LIST (CORE OPTIONAL)This is a listing of all condition classes located within the 24.0-ft radius around the subplot center.  In regions measuring the CORE OPTIONAL annular plot, this is a listing of all condition classes located within the 58.9-ft radius around the annular plot center.   A maximum of four conditions is permitted at any individual subplot ; annular plot.  If a condition class has already been defined at a previously completed subplot ; annular plot, use the same condition class number whenever that condition is encountered.  Define new condition classes as they are encountered.  If more than one condition class is listed here, boundary data are required.  If only one condition class is listed, this condition is automatically assigned to the subplot center and microplot center.  If less than four condition classes occur on this subplot, complete the remainder of this field with zeros.  For example, if condition 1 is the only condition class on a subplot, record 1000.When collected:  All forested Phase 3 plots Field width:  4 digitsTolerance: No errorsMQO:  At least 99% of the timeValues:  1000 to 9876';
comment on column FS_FIADB.SUBPLOT.slope
  is 'Subplot slope';
comment on column FS_FIADB.SUBPLOT.aspect
  is 'Subplot aspect';
comment on column FS_FIADB.SUBPLOT.waterdep
  is 'Water or snow depth';
comment on column FS_FIADB.SUBPLOT.p2a_grm_flg
  is 'Periodic to annual growth, removal, and mortality flag. The flag is set to Y for those subplots that are needed for estimation and otherwise is left blank (null).';
comment on column FS_FIADB.SUBPLOT.created_by
  is 'Created by';
comment on column FS_FIADB.SUBPLOT.created_date
  is 'Created date';
comment on column FS_FIADB.SUBPLOT.created_in_instance
  is 'Created in instance';
comment on column FS_FIADB.SUBPLOT.modified_by
  is 'Modified by';
comment on column FS_FIADB.SUBPLOT.modified_date
  is 'Modified date';
comment on column FS_FIADB.SUBPLOT.modified_in_instance
  is 'Modified in instance';
comment on column FS_FIADB.SUBPLOT.cycle
  is 'Inventory cycle number';
comment on column FS_FIADB.SUBPLOT.subcycle
  is 'Inventory subcycle number';
comment on column FS_FIADB.SUBPLOT.nf_subp_status_cd
  is 'Nonforest subplot/macroplot status code';
comment on column FS_FIADB.SUBPLOT.nf_subp_nonsample_reasn_cd
  is 'Nonforest subplot/macroplot nonsampled reason code';
comment on column FS_FIADB.SUBPLOT.p2veg_subp_status_cd
  is 'P2 vegetation subplot status code';
comment on column FS_FIADB.SUBPLOT.p2veg_subp_nonsample_reasn_cd
  is 'P2 Vegetation subplot nonsampled reason code';
comment on column FS_FIADB.SUBPLOT.invasive_subp_status_cd
  is 'Invasive subplot status code';
comment on column FS_FIADB.SUBPLOT.invasive_nonsample_reasn_cd
  is 'Invasive subplot nonsampled reason code';
comment on column FS_FIADB.SUBPLOT.crown_closure_me_ners
  is 'crown closure (me only)';
comment on column FS_FIADB.SUBPLOT.ground_tran_pts_bare_rmrs
  is 'ground transect points on bare ground';
comment on column FS_FIADB.SUBPLOT.ground_tran_pts_cryp_rmrs
  is 'ground transect points on cryptogamic crust';
comment on column FS_FIADB.SUBPLOT.ground_tran_pts_dev_rmrs
  is 'ground transect points on developed land';
comment on column FS_FIADB.SUBPLOT.ground_tran_pts_lichen_rmrs
  is 'ground transect points on lichen';
comment on column FS_FIADB.SUBPLOT.ground_tran_pts_litter_rmrs
  is 'ground transect points on litter';
comment on column FS_FIADB.SUBPLOT.ground_tran_pts_moss_rmrs
  is 'ground transect points on moss';
comment on column FS_FIADB.SUBPLOT.ground_tran_pts_notsamp_rmrs
  is 'ground transect points not sampled';
comment on column FS_FIADB.SUBPLOT.ground_tran_pts_other_rmrs
  is 'ground transect points on other';
comment on column FS_FIADB.SUBPLOT.ground_tran_pts_peis_rmrs
  is 'ground transect points on permanent ice and snow';
comment on column FS_FIADB.SUBPLOT.ground_tran_pts_road_rmrs
  is 'ground transect points on road';
comment on column FS_FIADB.SUBPLOT.ground_tran_pts_rock_rmrs
  is 'ground transect points on rock';
comment on column FS_FIADB.SUBPLOT.ground_tran_pts_tris_rmrs
  is 'ground transect points on transient ice and snow';
comment on column FS_FIADB.SUBPLOT.ground_tran_pts_veg_rmrs
  is 'ground transect points on basal vegetation';
comment on column FS_FIADB.SUBPLOT.ground_tran_pts_water_rmrs
  is 'ground transect points on water';
comment on column FS_FIADB.SUBPLOT.ground_tran_pts_wood_rmrs
  is 'ground transect points on wood';
comment on column FS_FIADB.SUBPLOT.prev_statuscd_rmrs
  is 'previous subplot status';
comment on column FS_FIADB.SUBPLOT.rootsevcd_rmrs
  is 'root disease severity rating code';
-- Create/Recreate indexes 
create index SBP_CND_FK2_I on FS_FIADB.SUBPLOT (PLT_CN, MICRCOND);
create index SBP_CND_FK3_I on FS_FIADB.SUBPLOT (PLT_CN, MACRCOND);
create index SBP_CND_FK_I on FS_FIADB.SUBPLOT (PLT_CN, SUBPCOND);
create index SBP_NAT_I on FS_FIADB.SUBPLOT (STATECD, INVYR, UNITCD, COUNTYCD, PLOT, SUBP);
create index SBP_PLT_FK_I on FS_FIADB.SUBPLOT (PLT_CN);
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.SUBPLOT
  add constraint SBP_PK primary key (CN);
alter table FS_FIADB.SUBPLOT
  add constraint SBP_UK unique (PLT_CN, SUBP);
alter table FS_FIADB.SUBPLOT
  add constraint SBP_CND_FK foreign key (PLT_CN, SUBPCOND)
  references FS_FIADB.COND (PLT_CN, CONDID);
alter table FS_FIADB.SUBPLOT
  add constraint SBP_CND_FK2 foreign key (PLT_CN, MICRCOND)
  references FS_FIADB.COND (PLT_CN, CONDID);
alter table FS_FIADB.SUBPLOT
  add constraint SBP_CND_FK3 foreign key (PLT_CN, MACRCOND)
  references FS_FIADB.COND (PLT_CN, CONDID);
alter table FS_FIADB.SUBPLOT
  add constraint SBP_PLT_FK foreign key (PLT_CN)
  references FS_FIADB.PLOT (CN);
