-- Create table
create table FS_FIADB.PLOT
(
  cn                             VARCHAR(34) not null,
  srv_cn                         VARCHAR(34) not null,
  cty_cn                         VARCHAR(34) not null,
  prev_plt_cn                    VARCHAR(34),
  invyr                          SMALLINT not null,
  statecd                        SMALLINT not null,
  unitcd                         SMALLINT not null,
  countycd                       SMALLINT not null,
  plot                           INT not null,
  plot_status_cd                 SMALLINT,
  plot_nonsample_reasn_cd        SMALLINT,
  measyear                       SMALLINT,
  measmon                        SMALLINT,
  measday                        SMALLINT,
  remper                         DECIMAL(3,1),
  kindcd                         SMALLINT not null,
  designcd                       SMALLINT,
  rddistcd                       SMALLINT,
  watercd                        SMALLINT,
  lat                            DECIMAL(8,6),
  lon                            DECIMAL(9,6),
  elev                           INT,
  grow_typ_cd                    SMALLINT,
  mort_typ_cd                    SMALLINT,
  p2panel                        SMALLINT,
  p3panel                        SMALLINT,
  ecosubcd                       VARCHAR(7),
  congcd                         SMALLINT,
  manual                         DECIMAL(3,1) not null,
  kindcd_nc                      SMALLINT,
  qa_status                      SMALLINT,
  created_by                     VARCHAR(30),
  created_date                   TIMESTAMP(0),
  created_in_instance            VARCHAR(6),
  modified_by                    VARCHAR(30),
  modified_date                  TIMESTAMP(0),
  modified_in_instance           VARCHAR(6),
  microplot_loc                  VARCHAR(12) default 'OFFSET',
  declination                    DECIMAL(4,1),
  emap_hex                       INT,
  samp_method_cd                 SMALLINT default 1,
  subp_examine_cd                SMALLINT default 4 not null,
  macro_breakpoint_dia           SMALLINT,
  intensity                      VARCHAR(3),
  cycle                          SMALLINT,
  subcycle                       SMALLINT,
  eco_unit_pnw                   VARCHAR(10),
  topo_position_pnw              VARCHAR(2),
  nf_sampling_status_cd          SMALLINT,
  nf_plot_status_cd              SMALLINT,
  nf_plot_nonsample_reasn_cd     SMALLINT,
  p2veg_sampling_status_cd       SMALLINT,
  p2veg_sampling_level_detail_cd SMALLINT,
  invasive_sampling_status_cd    SMALLINT,
  invasive_specimen_rule_cd      SMALLINT,
  designcd_p2a                   SMALLINT,
  manual_db                      DECIMAL(3,1),
  subpanel                       SMALLINT,
  colocated_cd_rmrs              SMALLINT,
  condchngcd_rmrs                SMALLINT,
  futforcd_rmrs                  SMALLINT,
  manual_ncrs                    DECIMAL(4,2),
  manual_ners                    DECIMAL(4,2),
  manual_rmrs                    DECIMAL(4,2),
  pac_island_pnwrs               VARCHAR(20),
  plot_season_ners               SMALLINT,
  precipitation                  DOUBLE PRECISION,
  prev_microplot_loc_rmrs        VARCHAR(12),
  prev_plot_status_cd_rmrs       SMALLINT,
  reusecd1                       SMALLINT,
  reusecd2                       SMALLINT,
  reusecd3                       SMALLINT
);
-- Add comments to the table 
comment on table FS_FIADB.PLOT
  is '6.0';
-- Add comments to the columns 
comment on column FS_FIADB.PLOT.cn
  is 'Unique index';
comment on column FS_FIADB.PLOT.srv_cn
  is 'Unique index';
comment on column FS_FIADB.PLOT.cty_cn
  is 'Unique index';
comment on column FS_FIADB.PLOT.prev_plt_cn
  is 'Unique index';
comment on column FS_FIADB.PLOT.statecd
  is 'State code';
comment on column FS_FIADB.PLOT.unitcd
  is 'Survey unit code';
comment on column FS_FIADB.PLOT.countycd
  is 'County code';
comment on column FS_FIADB.PLOT.plot
  is 'Plot number';
comment on column FS_FIADB.PLOT.measyear
  is 'Measurement year';
comment on column FS_FIADB.PLOT.measmon
  is 'measurement month';
comment on column FS_FIADB.PLOT.measday
  is 'Measurement day';
comment on column FS_FIADB.PLOT.remper
  is 'Remeasurement period';
comment on column FS_FIADB.PLOT.kindcd
  is 'Plot kind code';
comment on column FS_FIADB.PLOT.designcd
  is 'Plot design code';
comment on column FS_FIADB.PLOT.rddistcd
  is 'Distance to improved road code';
comment on column FS_FIADB.PLOT.watercd
  is 'Water on plot code';
comment on column FS_FIADB.PLOT.elev
  is 'Elevation WGS84 datum';
comment on column FS_FIADB.PLOT.grow_typ_cd
  is 'Type of annual volume growth code';
comment on column FS_FIADB.PLOT.mort_typ_cd
  is 'Type of annual mortality volume code';
comment on column FS_FIADB.PLOT.p2panel
  is 'Phase 2 panel number';
comment on column FS_FIADB.PLOT.p3panel
  is 'Phase 3 panel number';
comment on column FS_FIADB.PLOT.ecosubcd
  is 'Ecological subsection code';
comment on column FS_FIADB.PLOT.congcd
  is 'Congressional district code';
comment on column FS_FIADB.PLOT.manual
  is 'Field manual version';
comment on column FS_FIADB.PLOT.kindcd_nc
  is 'Plot kind code for North Central';
comment on column FS_FIADB.PLOT.qa_status
  is 'QA_STATUS';
comment on column FS_FIADB.PLOT.created_by
  is 'Created by';
comment on column FS_FIADB.PLOT.created_date
  is 'Created date';
comment on column FS_FIADB.PLOT.created_in_instance
  is 'Created in instance';
comment on column FS_FIADB.PLOT.modified_by
  is 'Modified by';
comment on column FS_FIADB.PLOT.modified_date
  is 'Modified date';
comment on column FS_FIADB.PLOT.modified_in_instance
  is 'Modified in instance';
comment on column FS_FIADB.PLOT.microplot_loc
  is 'Microplot location';
comment on column FS_FIADB.PLOT.declination
  is 'Declination';
comment on column FS_FIADB.PLOT.intensity
  is 'Intensity';
comment on column FS_FIADB.PLOT.cycle
  is 'Inventory cycle number';
comment on column FS_FIADB.PLOT.subcycle
  is 'Inventory subcycle number';
comment on column FS_FIADB.PLOT.eco_unit_pnw
  is 'Ecological unit used to identify PNW stockability algorithms';
comment on column FS_FIADB.PLOT.topo_position_pnw
  is 'Topographic position';
comment on column FS_FIADB.PLOT.nf_sampling_status_cd
  is 'Nonforest sampling status code';
comment on column FS_FIADB.PLOT.nf_plot_status_cd
  is 'Nonforest Plot Status code';
comment on column FS_FIADB.PLOT.nf_plot_nonsample_reasn_cd
  is 'Nonforest plot nonsampled reason code';
comment on column FS_FIADB.PLOT.p2veg_sampling_status_cd
  is 'P2 vegetation sampling status code';
comment on column FS_FIADB.PLOT.p2veg_sampling_level_detail_cd
  is 'P2 vegetation sampling level of detail code';
comment on column FS_FIADB.PLOT.invasive_sampling_status_cd
  is 'Invasive sampling status code';
comment on column FS_FIADB.PLOT.invasive_specimen_rule_cd
  is 'Invasive plant specimen collection rule code';
comment on column FS_FIADB.PLOT.designcd_p2a
  is 'Plot design code for Periodic to Annual Remeasurements';
comment on column FS_FIADB.PLOT.manual_db
  is 'The data in the database have been standardized to this version of the National Field Manual';
comment on column FS_FIADB.PLOT.subpanel
  is 'Subpanel number';
comment on column FS_FIADB.PLOT.colocated_cd_rmrs
  is 'co-located code. is plot co-located with an old design or periodic mapped design plot.  0=no  1=yes';
comment on column FS_FIADB.PLOT.condchngcd_rmrs
  is 'condition class change (annual)';
comment on column FS_FIADB.PLOT.futforcd_rmrs
  is 'future forest potential';
comment on column FS_FIADB.PLOT.manual_ncrs
  is 'ncrs manual version number';
comment on column FS_FIADB.PLOT.manual_ners
  is 'ners manual version number';
comment on column FS_FIADB.PLOT.manual_rmrs
  is 'rmrs manual version number';
comment on column FS_FIADB.PLOT.pac_island_pnwrs
  is 'Name of pacific island plot is located on, PNWRS';
comment on column FS_FIADB.PLOT.plot_season_ners
  is 'season when plot should be done';
comment on column FS_FIADB.PLOT.precipitation
  is 'annual precipitation in inches';
comment on column FS_FIADB.PLOT.prev_microplot_loc_rmrs
  is 'previous microplot location';
comment on column FS_FIADB.PLOT.prev_plot_status_cd_rmrs
  is 'previous plot status code';
comment on column FS_FIADB.PLOT.reusecd1
  is 'recreation use code 1';
comment on column FS_FIADB.PLOT.reusecd2
  is 'recreation use code 2';
comment on column FS_FIADB.PLOT.reusecd3
  is 'recreation use code 3';
-- Create/Recreate indexes 
create index PLT_CTY_FK_I on FS_FIADB.PLOT (CTY_CN);
create index PLT_SRV_FK_I on FS_FIADB.PLOT (SRV_CN);
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.PLOT
  add constraint PLT_PK primary key (CN);
alter table FS_FIADB.PLOT
  add constraint PLT_UK unique (STATECD, INVYR, UNITCD, COUNTYCD, PLOT);
alter table FS_FIADB.PLOT
  add constraint PLT_CTY_FK foreign key (CTY_CN)
  references FS_FIADB.COUNTY (CN);
alter table FS_FIADB.PLOT
  add constraint PLT_SRV_FK foreign key (SRV_CN)
  references FS_FIADB.SURVEY (CN);
