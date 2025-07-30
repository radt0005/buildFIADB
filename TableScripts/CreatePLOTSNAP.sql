CREATE TABLE fs_fiadb.plotsnap
(
cn                       VARCHAR(34) NOT NULL,
srv_cn                   VARCHAR(34) NOT NULL,
cty_cn                   VARCHAR(34) NOT NULL,
prev_plt_cn              VARCHAR(34),
invyr                    INTEGER NOT NULL,
statecd                  INTEGER NOT NULL,
unitcd                   INTEGER NOT NULL,
countycd                 INTEGER NOT NULL,
plot                     INTEGER NOT NULL,
plot_status_cd           INTEGER,
plot_nonsample_reasn_cd  INTEGER,
measyear                 INTEGER,
measmon                  INTEGER,
measday                  INTEGER,
remper                   DECIMAL(3,1),
kindcd                   INTEGER NOT NULL,
designcd                 INTEGER,
rddistcd                 INTEGER,
watercd                  INTEGER,
lat                      DECIMAL(8,6),
lon                      DECIMAL(9,6),
elev                     INTEGER,
grow_typ_cd              INTEGER,
mort_typ_cd              INTEGER,
p2panel                  INTEGER,
p3panel                  INTEGER,
ecosubcd                 VARCHAR(7),
congcd                   DOUBLE PRECISION,
manual                   DECIMAL(3,1) NOT NULL,
manual_db                DECIMAL(3,1),
subpanel                 INTEGER,
kindcd_nc                INTEGER,
qa_status                INTEGER,
created_date             TIMESTAMP(0),
modified_date            TIMESTAMP(0),
microplot_loc            VARCHAR(12),
declination              DECIMAL(4,1),
emap_hex                 DOUBLE PRECISION,
samp_method_cd           INTEGER,
subp_examine_cd          INTEGER NOT NULL,
macro_breakpoint_dia     INTEGER,
intensity                VARCHAR(3),
cycle                    INTEGER,
subcycle                 INTEGER,
eco_unit_pnw             VARCHAR(10),
topo_position_pnw        VARCHAR(2),
eval_grp_cn              VARCHAR(34) NOT NULL,
eval_grp                 INTEGER NOT NULL,
expall                   DOUBLE PRECISION,
expcurr                  DOUBLE PRECISION,
expvol                   DOUBLE PRECISION,
expgrow                  DOUBLE PRECISION,
expmort                  DOUBLE PRECISION,
expremv                  DOUBLE PRECISION,
expchng                  DOUBLE PRECISION,
expdwm                   DOUBLE PRECISION,
expregen                 DOUBLE PRECISION,
expinv                   DOUBLE PRECISION,
expp2veg                 DOUBLE PRECISION,
expsoil                  DOUBLE PRECISION,
expcrwn                  DOUBLE PRECISION,
expgrndlyr               DOUBLE PRECISION,
adj_expall               DOUBLE PRECISION,
adj_expcurr              DOUBLE PRECISION,
adj_expvol_macr          DOUBLE PRECISION,
adj_expvol_subp          DOUBLE PRECISION,
adj_expvol_micr          DOUBLE PRECISION,
adj_expgrow_macr         DOUBLE PRECISION,
adj_expgrow_subp         DOUBLE PRECISION,
adj_expgrow_micr         DOUBLE PRECISION,
adj_expmort_macr         DOUBLE PRECISION,
adj_expmort_subp         DOUBLE PRECISION,
adj_expmort_micr         DOUBLE PRECISION,
adj_expremv_macr         DOUBLE PRECISION,
adj_expremv_subp         DOUBLE PRECISION,
adj_expremv_micr         DOUBLE PRECISION,
adj_expchng_macr         DOUBLE PRECISION,
adj_expchng_subp         DOUBLE PRECISION,
adj_expchng_micr         DOUBLE PRECISION,
adj_expdwm_cwd           DOUBLE PRECISION,
adj_expdwm_fwd_sm        DOUBLE PRECISION,
adj_expdwm_fwd_lg        DOUBLE PRECISION,
adj_expdwm_duff          DOUBLE PRECISION,
adj_expdwm_pile          DOUBLE PRECISION,
adj_expregen_micr        DOUBLE PRECISION,
adj_expinv_subp          DOUBLE PRECISION,
adj_expp2veg_subp        DOUBLE PRECISION,
adj_expsoil              DOUBLE PRECISION,
adj_expgrndlyr_microquad DOUBLE PRECISION
);
comment on column fs_fiadb.plotsnap.cn
  is 'Sequence number on corresponding plot record (ought to be renamed plt_cn)';
comment on column fs_fiadb.plotsnap.srv_cn
  is 'Unique index';
comment on column fs_fiadb.plotsnap.cty_cn
  is 'Unique index';
comment on column fs_fiadb.plotsnap.prev_plt_cn
  is 'Foreign key to Time 1 Plot record';
comment on column fs_fiadb.plotsnap.invyr
  is 'Inventory year';
comment on column fs_fiadb.plotsnap.statecd
  is 'State Code';
comment on column fs_fiadb.plotsnap.unitcd
  is 'Survey unit code';
comment on column fs_fiadb.plotsnap.countycd
  is 'County Code';
comment on column fs_fiadb.plotsnap.plot
  is 'P2 Plot number';
comment on column fs_fiadb.plotsnap.plot_status_cd
  is 'Plot status code';
comment on column fs_fiadb.plotsnap.plot_nonsample_reasn_cd
  is 'Plot nonsampled reason code';
comment on column fs_fiadb.plotsnap.measyear
  is 'Measurement Year';
comment on column fs_fiadb.plotsnap.measmon
  is 'Measurement Month';
comment on column fs_fiadb.plotsnap.measday
  is 'Measurement Day';
comment on column fs_fiadb.plotsnap.remper
  is 'Remeasurement period';
comment on column fs_fiadb.plotsnap.kindcd
  is 'Plot Kind Code';
comment on column fs_fiadb.plotsnap.designcd
  is 'Plot Design Code';
comment on column fs_fiadb.plotsnap.rddistcd
  is 'Distance to improved road code';
comment on column fs_fiadb.plotsnap.watercd
  is 'Water on Plot Code';
comment on column fs_fiadb.plotsnap.lat
  is 'Fuzzed and swapped lat';
comment on column fs_fiadb.plotsnap.lon
  is 'Fuzzed and swapped lon';
comment on column fs_fiadb.plotsnap.elev
  is 'Elevation WGS84 datum';
comment on column fs_fiadb.plotsnap.grow_typ_cd
  is 'Type of annual volume growth code';
comment on column fs_fiadb.plotsnap.mort_typ_cd
  is 'Type of annual mortality volume code';
comment on column fs_fiadb.plotsnap.p2panel
  is 'Phase 2 panel number';
comment on column fs_fiadb.plotsnap.p3panel
  is 'Phase 3 panel number';
comment on column fs_fiadb.plotsnap.ecosubcd
  is 'Ecological subsection code';
comment on column fs_fiadb.plotsnap.congcd
  is 'Congressional district code';
comment on column fs_fiadb.plotsnap.manual
  is 'Field manual version';
comment on column fs_fiadb.plotsnap.manual_db
  is 'NA';
comment on column fs_fiadb.plotsnap.subpanel
  is 'Subpanel number';
comment on column fs_fiadb.plotsnap.kindcd_nc
  is 'Plot kind code for North Central';
comment on column fs_fiadb.plotsnap.qa_status
  is 'QA_STATUS';
comment on column fs_fiadb.plotsnap.created_date
  is 'Created Date';
comment on column fs_fiadb.plotsnap.modified_date
  is 'Modified Date';
comment on column fs_fiadb.plotsnap.microplot_loc
  is 'Microplot location';
comment on column fs_fiadb.plotsnap.declination
  is 'Declination';
comment on column fs_fiadb.plotsnap.emap_hex
  is 'EMAP hexagon';
comment on column fs_fiadb.plotsnap.samp_method_cd
  is 'Sample method code';
comment on column fs_fiadb.plotsnap.subp_examine_cd
  is 'Subplots examined code';
comment on column fs_fiadb.plotsnap.macro_breakpoint_dia
  is 'Macroplot breakpoint diameter';
comment on column fs_fiadb.plotsnap.intensity
  is 'Intensity';
comment on column fs_fiadb.plotsnap.cycle
  is 'Inventory cycle number';
comment on column fs_fiadb.plotsnap.subcycle
  is 'Inventory subcycle number';
comment on column fs_fiadb.plotsnap.eco_unit_pnw
  is 'Ecological unit used to identify PNW stockability algorithms';
comment on column fs_fiadb.plotsnap.topo_position_pnw
  is 'Topographic position';
comment on column fs_fiadb.plotsnap.eval_grp_cn
  is 'NA';
comment on column fs_fiadb.plotsnap.eval_grp
  is 'Reporting year followed by 4 more digits to make the statecd;eval_grp combo unique';
comment on column fs_fiadb.plotsnap.expall
  is 'Plot area expansion factor where all plots (sampled and unsampled) are used';
comment on column fs_fiadb.plotsnap.expcurr
  is 'Plot area expansion factor for sampled plots';
comment on column fs_fiadb.plotsnap.expvol
  is 'Plot expansion factor for volume';
comment on column fs_fiadb.plotsnap.expgrow
  is 'Plot expansion factor for growth';
comment on column fs_fiadb.plotsnap.expmort
  is 'Plot expansion factor for mortality';
comment on column fs_fiadb.plotsnap.expremv
  is 'Plot expansion factor for removals';
comment on column fs_fiadb.plotsnap.expchng
  is 'Plot expansion factor for area change';
comment on column fs_fiadb.plotsnap.expdwm
  is 'Plot expansion factor for down woody materials';
comment on column fs_fiadb.plotsnap.expregen
  is 'Plot expansion factor for regeneration';
comment on column fs_fiadb.plotsnap.expinv
  is 'Plot expansion factor for invasive species';
comment on column fs_fiadb.plotsnap.expp2veg
  is 'Plot expansion factor for Phase 2 plant profiles';
comment on column fs_fiadb.plotsnap.expsoil
  is 'Plot expansion factor for soils';
comment on column fs_fiadb.plotsnap.expcrwn
  is 'Plot expansion factor for crowns';
comment on column fs_fiadb.plotsnap.expgrndlyr
  is 'Plot expansion factor for ground layers';
comment on column fs_fiadb.plotsnap.adj_expall
  is 'Adjustment factor for EXPALL';
comment on column fs_fiadb.plotsnap.adj_expcurr
  is 'Adjustment factor for EXPCURR';
comment on column fs_fiadb.plotsnap.adj_expvol_macr
  is 'Adjustment factor for EXPVOL for trees measured on the macroplot';
comment on column fs_fiadb.plotsnap.adj_expvol_subp
  is 'Adjustment factor for EXPVOL for trees measured on the subplot';
comment on column fs_fiadb.plotsnap.adj_expvol_micr
  is 'Adjustment factor for EXPVOL for trees measured on the microplot';
comment on column fs_fiadb.plotsnap.adj_expgrow_macr
  is 'Adjustment factor for EXPGROW for trees measured on the macroplot';
comment on column fs_fiadb.plotsnap.adj_expgrow_subp
  is 'Adjustment factor for EXPGROW for trees measured on the subplot';
comment on column fs_fiadb.plotsnap.adj_expgrow_micr
  is 'Adjustment factor for EXPGROW for trees measured on the microplot';
comment on column fs_fiadb.plotsnap.adj_expmort_macr
  is 'Adjustment factor for EXPMORT for trees measured on the macroplot';
comment on column fs_fiadb.plotsnap.adj_expmort_subp
  is 'Adjustment factor for EXPMORT for trees measured on the subplot';
comment on column fs_fiadb.plotsnap.adj_expmort_micr
  is 'Adjustment factor for EXPMORT for trees measured on the microplot';
comment on column fs_fiadb.plotsnap.adj_expremv_macr
  is 'Adjustment factor for EXPCHNG for area measurements made on the macroplot';
comment on column fs_fiadb.plotsnap.adj_expremv_subp
  is 'Adjustment factor for EXPCHNG for area measurements made on the subplot';
comment on column fs_fiadb.plotsnap.adj_expremv_micr
  is 'Adjustment factor for EXPCHNG for area measurements made on the microplot';
comment on column fs_fiadb.plotsnap.adj_expchng_macr
  is 'NA';
comment on column fs_fiadb.plotsnap.adj_expchng_subp
  is 'NA';
comment on column fs_fiadb.plotsnap.adj_expchng_micr
  is 'NA';
comment on column fs_fiadb.plotsnap.adj_expdwm_cwd
  is 'Adjustment factor for EXPDWM for coarse woody materials measured on transects';
comment on column fs_fiadb.plotsnap.adj_expdwm_fwd_sm
  is 'Adjustment factors for EXPDWM for fine woody materials measured on small transects';
comment on column fs_fiadb.plotsnap.adj_expdwm_fwd_lg
  is 'Adjustment factors for EXPDWM for fine woody materials measured on large transects';
comment on column fs_fiadb.plotsnap.adj_expdwm_duff
  is 'Adjustment factors for EXPDWM for duff measured on points';
comment on column fs_fiadb.plotsnap.adj_expdwm_pile
  is 'Adjustment factors for EXPDWM for residue piles measured on either transects or fixed-area subplot according to the field protocol';
comment on column fs_fiadb.plotsnap.adj_expregen_micr
  is 'Adjustment factors for EXPREGEN for seedlings measured on microplots';
comment on column fs_fiadb.plotsnap.adj_expinv_subp
  is 'Adjustment factors for EXPINV for invasive species measured on subplots';
comment on column fs_fiadb.plotsnap.adj_expp2veg_subp
  is 'Adjustment factors for EXPP2VEG for Phase 2 vegetation profiles measured on subplots';
comment on column fs_fiadb.plotsnap.adj_expsoil
  is 'Adjustment factors for EXPSOIL soil protocols';
comment on column fs_fiadb.plotsnap.adj_expgrndlyr_microquad
  is 'Adjustment factors for EXPGRNDLYR for ground layer measurements made on microquads';