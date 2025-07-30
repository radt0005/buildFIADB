CREATE TABLE fs_fiadb.subplot
(
cn                            VARCHAR(34) NOT NULL,
plt_cn                        VARCHAR(34) NOT NULL,
prev_sbp_cn                   VARCHAR(34),
invyr                         INTEGER NOT NULL,
statecd                       INTEGER NOT NULL,
unitcd                        INTEGER NOT NULL,
countycd                      INTEGER NOT NULL,
plot                          INTEGER NOT NULL,
subp                          INTEGER NOT NULL,
subp_status_cd                INTEGER,
point_nonsample_reasn_cd      INTEGER,
micrcond                      INTEGER,
subpcond                      INTEGER,
macrcond                      INTEGER,
condlist                      INTEGER,
slope                         INTEGER,
aspect                        INTEGER,
waterdep                      DECIMAL(2,1),
p2a_grm_flg                   VARCHAR(1),
created_date                  TIMESTAMP(0),
modified_date                 TIMESTAMP(0),
cycle                         INTEGER,
subcycle                      INTEGER,
root_dis_sev_cd_pnwrs         INTEGER,
nf_subp_status_cd             INTEGER,
nf_subp_nonsample_reasn_cd    INTEGER,
p2veg_subp_status_cd          INTEGER,
p2veg_subp_nonsample_reasn_cd INTEGER,
invasive_subp_status_cd       INTEGER,
invasive_nonsample_reasn_cd   INTEGER,
crown_closure_me_ners         INTEGER,
ground_tran_pts_bare_rmrs     INTEGER,
ground_tran_pts_cryp_rmrs     INTEGER,
ground_tran_pts_dev_rmrs      INTEGER,
ground_tran_pts_lichen_rmrs   INTEGER,
ground_tran_pts_litter_rmrs   INTEGER,
ground_tran_pts_moss_rmrs     INTEGER,
ground_tran_pts_notsamp_rmrs  INTEGER,
ground_tran_pts_other_rmrs    INTEGER,
ground_tran_pts_peis_rmrs     INTEGER,
ground_tran_pts_road_rmrs     INTEGER,
ground_tran_pts_rock_rmrs     INTEGER,
ground_tran_pts_tris_rmrs     INTEGER,
ground_tran_pts_veg_rmrs      INTEGER,
ground_tran_pts_water_rmrs    INTEGER,
ground_tran_pts_wood_rmrs     INTEGER,
prev_statuscd_rmrs            INTEGER,
rootsevcd_rmrs                INTEGER
);
comment on column fs_fiadb.subplot.cn
  is 'Unique index';
comment on column fs_fiadb.subplot.plt_cn
  is 'Unique index';
comment on column fs_fiadb.subplot.prev_sbp_cn
  is 'Unique index';
comment on column fs_fiadb.subplot.invyr
  is 'NA';
comment on column fs_fiadb.subplot.statecd
  is 'State code';
comment on column fs_fiadb.subplot.unitcd
  is 'Survey unit code';
comment on column fs_fiadb.subplot.countycd
  is 'County code';
comment on column fs_fiadb.subplot.plot
  is 'Plot number';
comment on column fs_fiadb.subplot.subp
  is 'Subplot number';
comment on column fs_fiadb.subplot.subp_status_cd
  is 'NA';
comment on column fs_fiadb.subplot.point_nonsample_reasn_cd
  is 'NA';
comment on column fs_fiadb.subplot.micrcond
  is 'Microplot center condition';
comment on column fs_fiadb.subplot.subpcond
  is 'Subplot center condition';
comment on column fs_fiadb.subplot.macrcond
  is 'Macroplot center condition';
comment on column fs_fiadb.subplot.condlist
  is 'SUBPLOT;ANNULAR PLOT CONDITION LIST (CORE OPTIONAL)This is a listing of all condition classes located within the 24.0-ft radius around the subplot center.  In regions measuring the CORE OPTIONAL annular plot, this is a listing of all condition classes located within the 58.9-ft radius around the annular plot center.   A maximum of four conditions is permitted at any individual subplot ; annular plot.  If a condition class has already been defined at a previously completed subplot ; annular plot, use the same condition class number whenever that condition is encountered.  Define new condition classes as they are encountered.  If more than one condition class is listed here, boundary data are required.  If only one condition class is listed, this condition is automatically assigned to the subplot center and microplot center.  If less than four condition classes occur on this subplot, complete the remainder of this field with zeros.  For example, if condition 1 is the only condition class on a subplot, record 1000.When collected:  All forested Phase 3 plots Field width:  4 digitsTolerance: No errorsMQO:  At least 99% of the timeValues:  1000 to 9876';
comment on column fs_fiadb.subplot.slope
  is 'Subplot slope';
comment on column fs_fiadb.subplot.aspect
  is 'Subplot aspect';
comment on column fs_fiadb.subplot.waterdep
  is 'Water or snow depth';
comment on column fs_fiadb.subplot.p2a_grm_flg
  is 'Periodic to annual growth, removal, and mortality flag. The flag is set to Y for those subplots that are needed for estimation and otherwise is left blank (null).';
comment on column fs_fiadb.subplot.created_date
  is 'Created date';
comment on column fs_fiadb.subplot.modified_date
  is 'Modified date';
comment on column fs_fiadb.subplot.cycle
  is 'Inventory cycle number';
comment on column fs_fiadb.subplot.subcycle
  is 'Inventory subcycle number';
comment on column fs_fiadb.subplot.root_dis_sev_cd_pnwrs
  is 'NA';
comment on column fs_fiadb.subplot.nf_subp_status_cd
  is 'Nonforest subplot/macroplot status code';
comment on column fs_fiadb.subplot.nf_subp_nonsample_reasn_cd
  is 'Nonforest subplot/macroplot nonsampled reason code';
comment on column fs_fiadb.subplot.p2veg_subp_status_cd
  is 'P2 vegetation subplot status code';
comment on column fs_fiadb.subplot.p2veg_subp_nonsample_reasn_cd
  is 'P2 Vegetation subplot nonsampled reason code';
comment on column fs_fiadb.subplot.invasive_subp_status_cd
  is 'Invasive subplot status code';
comment on column fs_fiadb.subplot.invasive_nonsample_reasn_cd
  is 'Invasive subplot nonsampled reason code';
comment on column fs_fiadb.subplot.crown_closure_me_ners
  is 'crown closure (me only)';
comment on column fs_fiadb.subplot.ground_tran_pts_bare_rmrs
  is 'ground transect points on bare ground';
comment on column fs_fiadb.subplot.ground_tran_pts_cryp_rmrs
  is 'ground transect points on cryptogamic crust';
comment on column fs_fiadb.subplot.ground_tran_pts_dev_rmrs
  is 'ground transect points on developed land';
comment on column fs_fiadb.subplot.ground_tran_pts_lichen_rmrs
  is 'ground transect points on lichen';
comment on column fs_fiadb.subplot.ground_tran_pts_litter_rmrs
  is 'ground transect points on litter';
comment on column fs_fiadb.subplot.ground_tran_pts_moss_rmrs
  is 'ground transect points on moss';
comment on column fs_fiadb.subplot.ground_tran_pts_notsamp_rmrs
  is 'ground transect points not sampled';
comment on column fs_fiadb.subplot.ground_tran_pts_other_rmrs
  is 'ground transect points on other';
comment on column fs_fiadb.subplot.ground_tran_pts_peis_rmrs
  is 'ground transect points on permanent ice and snow';
comment on column fs_fiadb.subplot.ground_tran_pts_road_rmrs
  is 'ground transect points on road';
comment on column fs_fiadb.subplot.ground_tran_pts_rock_rmrs
  is 'ground transect points on rock';
comment on column fs_fiadb.subplot.ground_tran_pts_tris_rmrs
  is 'ground transect points on transient ice and snow';
comment on column fs_fiadb.subplot.ground_tran_pts_veg_rmrs
  is 'ground transect points on basal vegetation';
comment on column fs_fiadb.subplot.ground_tran_pts_water_rmrs
  is 'ground transect points on water';
comment on column fs_fiadb.subplot.ground_tran_pts_wood_rmrs
  is 'ground transect points on wood';
comment on column fs_fiadb.subplot.prev_statuscd_rmrs
  is 'previous subplot status';
comment on column fs_fiadb.subplot.rootsevcd_rmrs
  is 'root disease severity rating code';
create index SBP_NAT_I on FS_FIADB.SUBPLOT (STATECD, UNITCD, SUBP, PLOT, INVYR, COUNTYCD);
create index SBP_CND_FK3_I on FS_FIADB.SUBPLOT (MACRCOND, PLT_CN);
create index SBP_CND_FK2_I on FS_FIADB.SUBPLOT (MICRCOND, PLT_CN);
create index SBP_CND_FK_I on FS_FIADB.SUBPLOT (PLT_CN, SUBPCOND);
create index SBP_PLT_FK_I on FS_FIADB.SUBPLOT (PLT_CN);
alter table FS_FIADB.SUBPLOT add constraint SBP_PK primary key (CN);
alter table FS_FIADB.SUBPLOT add constraint SBP_UK unique (PLT_CN, SUBP);
alter table FS_FIADB.SUBPLOT add constraint SBP_CND_FK foreign key (PLT_CN, SUBPCOND) references FS_FIADB.COND (PLT_CN, CONDID);
alter table FS_FIADB.SUBPLOT add constraint SBP_CND_FK3 foreign key (PLT_CN, MACRCOND) references FS_FIADB.COND (PLT_CN, CONDID);
alter table FS_FIADB.SUBPLOT add constraint SBP_CND_FK2 foreign key (PLT_CN, MICRCOND) references FS_FIADB.COND (PLT_CN, CONDID);
alter table FS_FIADB.SUBPLOT add constraint SBP_PLT_FK foreign key (PLT_CN) references FS_FIADB.PLOT (CN);