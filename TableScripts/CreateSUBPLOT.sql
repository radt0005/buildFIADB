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
create index SBP_PLT_FK_I on FS_FIADB.SUBPLOT (PLT_CN);
create index SBP_CND_FK3_I on FS_FIADB.SUBPLOT (PLT_CN, MACRCOND);
create index SBP_CND_FK2_I on FS_FIADB.SUBPLOT (PLT_CN, MICRCOND);
create index SBP_CND_FK_I on FS_FIADB.SUBPLOT (PLT_CN, SUBPCOND);
create index SBP_NAT_I on FS_FIADB.SUBPLOT (STATECD, INVYR, UNITCD, COUNTYCD, PLOT, SUBP);
alter table FS_FIADB.SUBPLOT add constraint SBP_PK primary key (CN);
alter table FS_FIADB.SUBPLOT add constraint SBP_UK unique (PLT_CN, SUBP);
alter table FS_FIADB.SUBPLOT add constraint SBP_CND_FK foreign key (PLT_CN, SUBPCOND) references FS_FIADB.COND (PLT_CN, CONDID);
alter table FS_FIADB.SUBPLOT add constraint SBP_CND_FK3 foreign key (PLT_CN, MACRCOND) references FS_FIADB.COND (PLT_CN, CONDID);
alter table FS_FIADB.SUBPLOT add constraint SBP_CND_FK2 foreign key (PLT_CN, MICRCOND) references FS_FIADB.COND (PLT_CN, CONDID);
alter table FS_FIADB.SUBPLOT add constraint SBP_PLT_FK foreign key (PLT_CN) references FS_FIADB.PLOT (CN);