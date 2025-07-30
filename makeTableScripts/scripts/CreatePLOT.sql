CREATE TABLE fs_fiadb.plot
(
cn                             VARCHAR(34) NOT NULL,
srv_cn                         VARCHAR(34) NOT NULL,
cty_cn                         VARCHAR(34) NOT NULL,
prev_plt_cn                    VARCHAR(34),
invyr                          INTEGER NOT NULL,
statecd                        INTEGER NOT NULL,
unitcd                         INTEGER NOT NULL,
countycd                       INTEGER NOT NULL,
plot                           INTEGER NOT NULL,
plot_status_cd                 INTEGER,
plot_nonsample_reasn_cd        INTEGER,
measyear                       INTEGER,
measmon                        INTEGER,
measday                        INTEGER,
remper                         DECIMAL(3,1),
kindcd                         INTEGER NOT NULL,
designcd                       INTEGER,
rddistcd                       INTEGER,
watercd                        INTEGER,
lat                            DECIMAL(8,6),
lon                            DECIMAL(9,6),
elev                           INTEGER,
grow_typ_cd                    INTEGER,
mort_typ_cd                    INTEGER,
p2panel                        INTEGER,
p3panel                        INTEGER,
manual                         DECIMAL(3,1) NOT NULL,
kindcd_nc                      INTEGER,
qa_status                      INTEGER,
created_by                     VARCHAR(30),
created_date                   TIMESTAMP(0),
created_in_instance            VARCHAR(6),
modified_by                    VARCHAR(30),
modified_date                  TIMESTAMP(0),
modified_in_instance           VARCHAR(6),
microplot_loc                  VARCHAR(12),
declination                    DECIMAL(4,1),
samp_method_cd                 INTEGER,
subp_examine_cd                INTEGER NOT NULL,
macro_breakpoint_dia           INTEGER,
intensity                      VARCHAR(3),
cycle                          INTEGER,
subcycle                       INTEGER,
topo_position_pnw              VARCHAR(2),
nf_sampling_status_cd          INTEGER,
nf_plot_status_cd              INTEGER,
nf_plot_nonsample_reasn_cd     INTEGER,
p2veg_sampling_status_cd       INTEGER,
p2veg_sampling_level_detail_cd INTEGER,
invasive_sampling_status_cd    INTEGER,
invasive_specimen_rule_cd      INTEGER,
designcd_p2a                   INTEGER,
manual_db                      DECIMAL(3,1),
subpanel                       INTEGER,
futforcd_rmrs                  INTEGER,
manual_ncrs                    DECIMAL(4,2),
manual_ners                    DECIMAL(4,2),
manual_rmrs                    DECIMAL(4,2),
pac_island_pnwrs               VARCHAR(20),
plot_season_ners               INTEGER,
prev_microplot_loc_rmrs        VARCHAR(12),
prev_plot_status_cd_rmrs       INTEGER,
reusecd1                       INTEGER,
reusecd2                       INTEGER,
reusecd3                       INTEGER,
grnd_lyr_sampling_status_cd    INTEGER,
grnd_lyr_sampling_method_cd    INTEGER
);
comment on column fs_fiadb.plot.cn
  is 'Unique index';
comment on column fs_fiadb.plot.srv_cn
  is 'Unique index';
comment on column fs_fiadb.plot.cty_cn
  is 'Unique index';
comment on column fs_fiadb.plot.prev_plt_cn
  is 'Unique index';
comment on column fs_fiadb.plot.invyr
  is 'NA';
comment on column fs_fiadb.plot.statecd
  is 'State code';
comment on column fs_fiadb.plot.unitcd
  is 'Survey unit code';
comment on column fs_fiadb.plot.countycd
  is 'County code';
comment on column fs_fiadb.plot.plot
  is 'Plot number';
comment on column fs_fiadb.plot.plot_status_cd
  is 'NA';
comment on column fs_fiadb.plot.plot_nonsample_reasn_cd
  is 'NA';
comment on column fs_fiadb.plot.measyear
  is 'Measurement year';
comment on column fs_fiadb.plot.measmon
  is 'measurement month';
comment on column fs_fiadb.plot.measday
  is 'Measurement day';
comment on column fs_fiadb.plot.remper
  is 'Remeasurement period';
comment on column fs_fiadb.plot.kindcd
  is 'Plot kind code';
comment on column fs_fiadb.plot.designcd
  is 'Plot design code';
comment on column fs_fiadb.plot.rddistcd
  is 'Distance to improved road code';
comment on column fs_fiadb.plot.watercd
  is 'Water on plot code';
comment on column fs_fiadb.plot.lat
  is 'NA';
comment on column fs_fiadb.plot.lon
  is 'NA';
comment on column fs_fiadb.plot.elev
  is 'Elevation WGS84 datum';
comment on column fs_fiadb.plot.grow_typ_cd
  is 'Type of annual volume growth code';
comment on column fs_fiadb.plot.mort_typ_cd
  is 'Type of annual mortality volume code';
comment on column fs_fiadb.plot.p2panel
  is 'Phase 2 panel number';
comment on column fs_fiadb.plot.p3panel
  is 'Phase 3 panel number';
comment on column fs_fiadb.plot.manual
  is 'Field manual version';
comment on column fs_fiadb.plot.kindcd_nc
  is 'Plot kind code for North Central';
comment on column fs_fiadb.plot.qa_status
  is 'QA_STATUS';
comment on column fs_fiadb.plot.created_by
  is 'Created by';
comment on column fs_fiadb.plot.created_date
  is 'Created date';
comment on column fs_fiadb.plot.created_in_instance
  is 'Created in instance';
comment on column fs_fiadb.plot.modified_by
  is 'Modified by';
comment on column fs_fiadb.plot.modified_date
  is 'Modified date';
comment on column fs_fiadb.plot.modified_in_instance
  is 'Modified in instance';
comment on column fs_fiadb.plot.microplot_loc
  is 'Microplot location';
comment on column fs_fiadb.plot.declination
  is 'Declination';
comment on column fs_fiadb.plot.samp_method_cd
  is 'NA';
comment on column fs_fiadb.plot.subp_examine_cd
  is 'NA';
comment on column fs_fiadb.plot.macro_breakpoint_dia
  is 'NA';
comment on column fs_fiadb.plot.intensity
  is 'Intensity';
comment on column fs_fiadb.plot.cycle
  is 'Inventory cycle number';
comment on column fs_fiadb.plot.subcycle
  is 'Inventory subcycle number';
comment on column fs_fiadb.plot.topo_position_pnw
  is 'Topographic position';
comment on column fs_fiadb.plot.nf_sampling_status_cd
  is 'Nonforest sampling status code';
comment on column fs_fiadb.plot.nf_plot_status_cd
  is 'Nonforest Plot Status code';
comment on column fs_fiadb.plot.nf_plot_nonsample_reasn_cd
  is 'Nonforest plot nonsampled reason code';
comment on column fs_fiadb.plot.p2veg_sampling_status_cd
  is 'P2 vegetation sampling status code';
comment on column fs_fiadb.plot.p2veg_sampling_level_detail_cd
  is 'P2 vegetation sampling level of detail code';
comment on column fs_fiadb.plot.invasive_sampling_status_cd
  is 'Invasive sampling status code';
comment on column fs_fiadb.plot.invasive_specimen_rule_cd
  is 'Invasive plant specimen collection rule code';
comment on column fs_fiadb.plot.designcd_p2a
  is 'Plot design code for Periodic to Annual Remeasurements';
comment on column fs_fiadb.plot.manual_db
  is 'The data in the database have been standardized to this version of the National Field Manual';
comment on column fs_fiadb.plot.subpanel
  is 'Subpanel number';
comment on column fs_fiadb.plot.futforcd_rmrs
  is 'future forest potential';
comment on column fs_fiadb.plot.manual_ncrs
  is 'ncrs manual version number';
comment on column fs_fiadb.plot.manual_ners
  is 'ners manual version number';
comment on column fs_fiadb.plot.manual_rmrs
  is 'rmrs manual version number';
comment on column fs_fiadb.plot.pac_island_pnwrs
  is 'Name of pacific island plot is located on, PNWRS';
comment on column fs_fiadb.plot.plot_season_ners
  is 'season when plot should be done';
comment on column fs_fiadb.plot.prev_microplot_loc_rmrs
  is 'previous microplot location';
comment on column fs_fiadb.plot.prev_plot_status_cd_rmrs
  is 'previous plot status code';
comment on column fs_fiadb.plot.reusecd1
  is 'recreation use code 1';
comment on column fs_fiadb.plot.reusecd2
  is 'recreation use code 2';
comment on column fs_fiadb.plot.reusecd3
  is 'recreation use code 3';
comment on column fs_fiadb.plot.grnd_lyr_sampling_status_cd
  is 'Ground Layer sampling status code';
comment on column fs_fiadb.plot.grnd_lyr_sampling_method_cd
  is 'Ground Layer sampling method code';
create index PLT_SRV_FK_I on FS_FIADB.PLOT (SRV_CN);
create index PLT_CTY_FK_I on FS_FIADB.PLOT (CTY_CN);
alter table FS_FIADB.PLOT add constraint PLT_PK primary key (CN);
alter table FS_FIADB.PLOT add constraint PLT_UK unique (STATECD, INVYR, UNITCD, COUNTYCD, PLOT);
alter table FS_FIADB.PLOT add constraint PLT_CTY_FK foreign key (CTY_CN) references FS_FIADB.COUNTY (CN);
alter table FS_FIADB.PLOT add constraint PLT_SRV_FK foreign key (SRV_CN) references FS_FIADB.SURVEY (CN);