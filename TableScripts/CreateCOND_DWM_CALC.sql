CREATE TABLE fs_fiadb.cond_dwm_calc
(
cn                     VARCHAR(34) NOT NULL,
statecd                INTEGER NOT NULL,
countycd               INTEGER NOT NULL,
plot                   INTEGER NOT NULL,
measyear               INTEGER NOT NULL,
invyr                  INTEGER NOT NULL,
condid                 INTEGER NOT NULL,
evalid                 INTEGER NOT NULL,
plt_cn                 VARCHAR(34) NOT NULL,
cnd_cn                 VARCHAR(34),
stratum_cn             VARCHAR(34),
phase                  VARCHAR(3),
condprop_cwd           DECIMAL(13,12),
condprop_fwd_sm        DECIMAL(13,12),
condprop_fwd_md        DECIMAL(13,12),
condprop_fwd_lg        DECIMAL(13,12),
condprop_duff          DECIMAL(13,12),
cwd_tl_cond            DECIMAL(13,10),
cwd_tl_unadj           DECIMAL(13,10),
cwd_tl_adj             DECIMAL(13,10),
cwd_lpa_cond           DOUBLE PRECISION,
cwd_lpa_unadj          DOUBLE PRECISION,
cwd_lpa_adj            DOUBLE PRECISION,
cwd_volcf_cond         DOUBLE PRECISION,
cwd_volcf_unadj        DOUBLE PRECISION,
cwd_volcf_adj          DOUBLE PRECISION,
cwd_drybio_cond        DOUBLE PRECISION,
cwd_drybio_unadj       DOUBLE PRECISION,
cwd_drybio_adj         DOUBLE PRECISION,
cwd_carbon_cond        DOUBLE PRECISION,
cwd_carbon_unadj       DOUBLE PRECISION,
cwd_carbon_adj         DOUBLE PRECISION,
fwd_sm_tl_cond         DECIMAL(13,10),
fwd_sm_tl_unadj        DECIMAL(13,10),
fwd_sm_tl_adj          DECIMAL(13,10),
fwd_sm_cnt_cond        DOUBLE PRECISION,
fwd_sm_volcf_cond      DOUBLE PRECISION,
fwd_sm_volcf_unadj     DOUBLE PRECISION,
fwd_sm_volcf_adj       DOUBLE PRECISION,
fwd_sm_drybio_cond     DOUBLE PRECISION,
fwd_sm_drybio_unadj    DOUBLE PRECISION,
fwd_sm_drybio_adj      DOUBLE PRECISION,
fwd_sm_carbon_cond     DOUBLE PRECISION,
fwd_sm_carbon_unadj    DOUBLE PRECISION,
fwd_sm_carbon_adj      DOUBLE PRECISION,
fwd_md_tl_cond         DECIMAL(13,10),
fwd_md_tl_unadj        DECIMAL(13,10),
fwd_md_tl_adj          DECIMAL(13,10),
fwd_md_cnt_cond        DOUBLE PRECISION,
fwd_md_volcf_cond      DOUBLE PRECISION,
fwd_md_volcf_unadj     DOUBLE PRECISION,
fwd_md_volcf_adj       DOUBLE PRECISION,
fwd_md_drybio_cond     DOUBLE PRECISION,
fwd_md_drybio_unadj    DOUBLE PRECISION,
fwd_md_drybio_adj      DOUBLE PRECISION,
fwd_md_carbon_cond     DOUBLE PRECISION,
fwd_md_carbon_unadj    DOUBLE PRECISION,
fwd_md_carbon_adj      DOUBLE PRECISION,
fwd_lg_tl_cond         DECIMAL(13,10),
fwd_lg_tl_unadj        DECIMAL(13,10),
fwd_lg_tl_adj          DECIMAL(13,10),
fwd_lg_cnt_cond        DOUBLE PRECISION,
fwd_lg_volcf_cond      DOUBLE PRECISION,
fwd_lg_volcf_unadj     DOUBLE PRECISION,
fwd_lg_volcf_adj       DOUBLE PRECISION,
fwd_lg_drybio_cond     DOUBLE PRECISION,
fwd_lg_drybio_unadj    DOUBLE PRECISION,
fwd_lg_drybio_adj      DOUBLE PRECISION,
fwd_lg_carbon_cond     DOUBLE PRECISION,
fwd_lg_carbon_unadj    DOUBLE PRECISION,
fwd_lg_carbon_adj      DOUBLE PRECISION,
pile_sample_area_cond  DECIMAL(13,12),
pile_sample_area_unadj DECIMAL(13,12),
pile_sample_area_adj   DECIMAL(13,12),
pile_volcf_cond        DOUBLE PRECISION,
pile_volcf_unadj       DOUBLE PRECISION,
pile_volcf_adj         DOUBLE PRECISION,
pile_drybio_cond       DOUBLE PRECISION,
pile_drybio_unadj      DOUBLE PRECISION,
pile_drybio_adj        DOUBLE PRECISION,
pile_carbon_cond       DOUBLE PRECISION,
pile_carbon_unadj      DOUBLE PRECISION,
pile_carbon_adj        DOUBLE PRECISION,
fuel_depth             DOUBLE PRECISION,
fuel_biomass           DOUBLE PRECISION,
fuel_carbon            DOUBLE PRECISION,
duff_depth             DOUBLE PRECISION,
duff_biomass           DOUBLE PRECISION,
duff_carbon            DOUBLE PRECISION,
litter_depth           DOUBLE PRECISION,
litter_biomass         DOUBLE PRECISION,
litter_carbon          DOUBLE PRECISION,
duff_tc_cond           DECIMAL(14,12),
duff_tc_unadj          DECIMAL(14,12),
duff_tc_adj            DECIMAL(14,12),
avg_wood_density       DECIMAL(12,10),
created_date           TIMESTAMP(0) NOT NULL,
modified_date          TIMESTAMP(0),
cycle                  INTEGER NOT NULL,
subcycle               INTEGER NOT NULL,
unitcd                 INTEGER NOT NULL,
rscd                   INTEGER,
pile_tl_cond           DECIMAL(13,10),
pile_tl_unadj          DECIMAL(13,10),
pile_tl_adj            DECIMAL(13,10),
condprop_pile          DECIMAL(13,12)
);
comment on column fs_fiadb.cond_dwm_calc.cn
  is 'Sequence number (surrogate primary key';
comment on column fs_fiadb.cond_dwm_calc.statecd
  is 'State Code';
comment on column fs_fiadb.cond_dwm_calc.countycd
  is 'County Code';
comment on column fs_fiadb.cond_dwm_calc.plot
  is 'P2 Plot Number';
comment on column fs_fiadb.cond_dwm_calc.measyear
  is 'Measurement Year';
comment on column fs_fiadb.cond_dwm_calc.invyr
  is 'Annual Inventory Year';
comment on column fs_fiadb.cond_dwm_calc.condid
  is 'Condition number';
comment on column fs_fiadb.cond_dwm_calc.evalid
  is 'NA';
comment on column fs_fiadb.cond_dwm_calc.plt_cn
  is 'Foreign key to Plot table CN';
comment on column fs_fiadb.cond_dwm_calc.cnd_cn
  is 'Link to same condition record CN in NIMS_COND_TBL table.';
comment on column fs_fiadb.cond_dwm_calc.stratum_cn
  is 'Stratum sequence number';
comment on column fs_fiadb.cond_dwm_calc.phase
  is 'P2, P3 or P23';
comment on column fs_fiadb.cond_dwm_calc.condprop_cwd
  is 'Condition proportion based on the CWD transects';
comment on column fs_fiadb.cond_dwm_calc.condprop_fwd_sm
  is 'Condition proportion based on the FWD small transects';
comment on column fs_fiadb.cond_dwm_calc.condprop_fwd_md
  is 'Condition proportion based on the FWD medium transects';
comment on column fs_fiadb.cond_dwm_calc.condprop_fwd_lg
  is 'Condition proportion based on the FWD large transects';
comment on column fs_fiadb.cond_dwm_calc.condprop_duff
  is 'Condition proportion based on the duff, litter, fuelbed points';
comment on column fs_fiadb.cond_dwm_calc.cwd_tl_cond
  is 'Hoizontal transect length measured for CWD on the condition';
comment on column fs_fiadb.cond_dwm_calc.cwd_tl_unadj
  is 'Sum of CWD transect hoizontal lengths in all conditions including unmeasured on target plot design.';
comment on column fs_fiadb.cond_dwm_calc.cwd_tl_adj
  is 'Sum of CWD transect hoizontal lengths in all conditions including unmeasured on target plot design adjusted to account for partially unmeasured plots in stratum.';
comment on column fs_fiadb.cond_dwm_calc.cwd_lpa_cond
  is 'Number of CWD peices per acre on the condition';
comment on column fs_fiadb.cond_dwm_calc.cwd_lpa_unadj
  is 'Sum of CWD peices per acre on condition based on target plot transect length.';
comment on column fs_fiadb.cond_dwm_calc.cwd_lpa_adj
  is 'Sum of CWD peices per acre on condition based on target plot transect length adjusted to account for partially unmeasured plots in stratum.';
comment on column fs_fiadb.cond_dwm_calc.cwd_volcf_cond
  is 'Cubic foot volume per acre of CWD on the condition';
comment on column fs_fiadb.cond_dwm_calc.cwd_volcf_unadj
  is 'Sum of CWD cubic foot volume per acre on condition based on target plot transect length.';
comment on column fs_fiadb.cond_dwm_calc.cwd_volcf_adj
  is 'Sum of CWD cubic foot volume per acre on condition based on target plot transect length adjusted to account for partially unmeasured plots in stratum.';
comment on column fs_fiadb.cond_dwm_calc.cwd_drybio_cond
  is 'Weight in pounds per arce of CWD on the condition';
comment on column fs_fiadb.cond_dwm_calc.cwd_drybio_unadj
  is 'Sum of CWD weight in pounds per arce on condition based on target plot transect length.';
comment on column fs_fiadb.cond_dwm_calc.cwd_drybio_adj
  is 'Sum of CWD weight in pounds per arce on condition based on target plot transect length adjusted to account for partially unmeasured plots in stratum.';
comment on column fs_fiadb.cond_dwm_calc.cwd_carbon_cond
  is 'Carbon weight in pounds per arce of CWD on the condition';
comment on column fs_fiadb.cond_dwm_calc.cwd_carbon_unadj
  is 'Sum of CWD carbon weight in pounds per arce on condition based on target plot transect length.';
comment on column fs_fiadb.cond_dwm_calc.cwd_carbon_adj
  is 'Sum of CWD carbon weight in pounds per arce on condition based on target plot transect length adjusted to account for partially unmeasured plots in stratum.';
comment on column fs_fiadb.cond_dwm_calc.fwd_sm_tl_cond
  is 'Hoizontal transect length measured for small FWD on the condition';
comment on column fs_fiadb.cond_dwm_calc.fwd_sm_tl_unadj
  is 'Sum of small FWD transect hoizontal lengths in all conditions including unmeasured on target plot design.';
comment on column fs_fiadb.cond_dwm_calc.fwd_sm_tl_adj
  is 'Sum of small FWD transect hoizontal lengths in all conditions including unmeasured on target plot design adjusted to account for partially unmeasured plots in stratum.';
comment on column fs_fiadb.cond_dwm_calc.fwd_sm_cnt_cond
  is 'Number of small FWD peices per acre on the condition';
comment on column fs_fiadb.cond_dwm_calc.fwd_sm_volcf_cond
  is 'Cubic foot volume per acre of small FWD on the condition';
comment on column fs_fiadb.cond_dwm_calc.fwd_sm_volcf_unadj
  is 'Sum of small FWD cubic foot volume per acre on condition based on target plot transect length.';
comment on column fs_fiadb.cond_dwm_calc.fwd_sm_volcf_adj
  is 'Sum of small FWD cubic foot volume per acre on condition based on target plot transect length adjusted to account for partially unmeasured plots in stratum.';
comment on column fs_fiadb.cond_dwm_calc.fwd_sm_drybio_cond
  is 'Weight in pounds per arce of small FWD on the condition';
comment on column fs_fiadb.cond_dwm_calc.fwd_sm_drybio_unadj
  is 'Sum of small FWD weight in pounds per arce on condition based on target plot transect length.';
comment on column fs_fiadb.cond_dwm_calc.fwd_sm_drybio_adj
  is 'Sum of small FWD weight in pounds per arce on condition based on target plot transect length adjusted to account for partially unmeasured plots in stratum.';
comment on column fs_fiadb.cond_dwm_calc.fwd_sm_carbon_cond
  is 'Carbon weight in pounds per arce of small FWD on the condition';
comment on column fs_fiadb.cond_dwm_calc.fwd_sm_carbon_unadj
  is 'Sum of small FWD carbon weight in pounds per arce on condition based on target plot transect length.';
comment on column fs_fiadb.cond_dwm_calc.fwd_sm_carbon_adj
  is 'Sum of small FWD carbon weight in pounds per arce on condition based on target plot transect length adjusted to account for partially unmeasured plots in stratum.';
comment on column fs_fiadb.cond_dwm_calc.fwd_md_tl_cond
  is 'Hoizontal transect length measured for medium FWD on the condition';
comment on column fs_fiadb.cond_dwm_calc.fwd_md_tl_unadj
  is 'Sum of medium FWD transect hoizontal lengths in all conditions including unmeasured on target plot design.';
comment on column fs_fiadb.cond_dwm_calc.fwd_md_tl_adj
  is 'Sum of medium FWD transect hoizontal lengths in all conditions including unmeasured on target plot design adjusted to account for partially unmeasured plots in stratum.';
comment on column fs_fiadb.cond_dwm_calc.fwd_md_cnt_cond
  is 'Number of medium FWD peices per acre on the condition';
comment on column fs_fiadb.cond_dwm_calc.fwd_md_volcf_cond
  is 'Cubic foot volume per acre of medium FWD on the condition';
comment on column fs_fiadb.cond_dwm_calc.fwd_md_volcf_unadj
  is 'Sum of medium FWD cubic foot volume per acre on condition based on target plot transect length.';
comment on column fs_fiadb.cond_dwm_calc.fwd_md_volcf_adj
  is 'Sum of medium FWD cubic foot volume per acre on condition based on target plot transect length adjusted to account for partially unmeasured plots in stratum.';
comment on column fs_fiadb.cond_dwm_calc.fwd_md_drybio_cond
  is 'Weight in pounds per arce of medium FWD on the condition';
comment on column fs_fiadb.cond_dwm_calc.fwd_md_drybio_unadj
  is 'Sum of medium FWD weight in pounds per arce on condition based on target plot transect length.';
comment on column fs_fiadb.cond_dwm_calc.fwd_md_drybio_adj
  is 'Sum of medium FWD weight in pounds per arce on condition based on target plot transect length adjusted to account for partially unmeasured plots in stratum.';
comment on column fs_fiadb.cond_dwm_calc.fwd_md_carbon_cond
  is 'Carbon weight in pounds per arce of medium FWD on the condition';
comment on column fs_fiadb.cond_dwm_calc.fwd_md_carbon_unadj
  is 'Sum of medium FWD carbon weight in pounds per arce on condition based on target plot transect length.';
comment on column fs_fiadb.cond_dwm_calc.fwd_md_carbon_adj
  is 'Sum of medium FWD carbon weight in pounds per arce on condition based on target plot transect length adjusted to account for partially unmeasured plots in stratum.';
comment on column fs_fiadb.cond_dwm_calc.fwd_lg_tl_cond
  is 'Hoizontal transect length measured for large FWD on the condition';
comment on column fs_fiadb.cond_dwm_calc.fwd_lg_tl_unadj
  is 'Sum of large FWD transect hoizontal lengths in all conditions including unmeasured on target plot design.';
comment on column fs_fiadb.cond_dwm_calc.fwd_lg_tl_adj
  is 'Sum of large FWD transect hoizontal lengths in all conditions including unmeasured on target plot design adjusted to account for partially unmeasured plots in stratum.';
comment on column fs_fiadb.cond_dwm_calc.fwd_lg_cnt_cond
  is 'Number of large FWD peices per acre on the condition';
comment on column fs_fiadb.cond_dwm_calc.fwd_lg_volcf_cond
  is 'Cubic foot volume per acre of large FWD on the condition';
comment on column fs_fiadb.cond_dwm_calc.fwd_lg_volcf_unadj
  is 'Sum of large FWD cubic foot volume per acre on condition based on target plot transect length.';
comment on column fs_fiadb.cond_dwm_calc.fwd_lg_volcf_adj
  is 'Sum of large FWD cubic foot volume per acre on condition based on target plot transect length adjusted to account for partially unmeasured plots in stratum.';
comment on column fs_fiadb.cond_dwm_calc.fwd_lg_drybio_cond
  is 'Weight in pounds per arce of large FWD on the condition';
comment on column fs_fiadb.cond_dwm_calc.fwd_lg_drybio_unadj
  is 'Sum of large FWD weight in pounds per arce on condition based on target plot transect length.';
comment on column fs_fiadb.cond_dwm_calc.fwd_lg_drybio_adj
  is 'Sum of large FWD weight in pounds per arce on condition based on target plot transect length adjusted to account for partially unmeasured plots in stratum.';
comment on column fs_fiadb.cond_dwm_calc.fwd_lg_carbon_cond
  is 'Carbon weight in pounds per arce of large FWD on the condition';
comment on column fs_fiadb.cond_dwm_calc.fwd_lg_carbon_unadj
  is 'Sum of large FWD carbon weight in pounds per arce on condition based on target plot transect length.';
comment on column fs_fiadb.cond_dwm_calc.fwd_lg_carbon_adj
  is 'Sum of large FWD carbon weight in pounds per arce on condition based on target plot transect length adjusted to account for partially unmeasured plots in stratum.';
comment on column fs_fiadb.cond_dwm_calc.pile_sample_area_cond
  is 'Area in acres of condition being sampled for piles';
comment on column fs_fiadb.cond_dwm_calc.pile_sample_area_unadj
  is 'Sum of pile sample area in acres in all conditions including unmeasured on target plot design.';
comment on column fs_fiadb.cond_dwm_calc.pile_sample_area_adj
  is 'Sum of pile sample area in acres in all conditions including unmeasured on target plot design adjusted to account for partially unmeasured plots in stratum.';
comment on column fs_fiadb.cond_dwm_calc.pile_volcf_cond
  is 'Cubic foot volume per acre of DWM piles';
comment on column fs_fiadb.cond_dwm_calc.pile_volcf_unadj
  is 'Sum of pile cubic foot volume per acre on condition based on target plot area.';
comment on column fs_fiadb.cond_dwm_calc.pile_volcf_adj
  is 'Sum of pile cubic foot volume per acre on condition based on target plot area adjusted to account for partially unmeasured plots in stratum.';
comment on column fs_fiadb.cond_dwm_calc.pile_drybio_cond
  is 'Weight in pound per acre of DWM piles';
comment on column fs_fiadb.cond_dwm_calc.pile_drybio_unadj
  is 'Sum of pile weight in pounds per arce on condition based on target plot area.';
comment on column fs_fiadb.cond_dwm_calc.pile_drybio_adj
  is 'Sum of pile weight in pounds per arce on condition based on target plot area adjusted to account for partially unmeasured plots in stratum.';
comment on column fs_fiadb.cond_dwm_calc.pile_carbon_cond
  is 'Carbon weight in pound per acre of DWM piles';
comment on column fs_fiadb.cond_dwm_calc.pile_carbon_unadj
  is 'Sum of pile carbon weight in pounds per arce on condition based on target plot area.';
comment on column fs_fiadb.cond_dwm_calc.pile_carbon_adj
  is 'Sum of pile carbon weight in pounds per arce on condition based on target plot area adjusted to account for partially unmeasured plots in stratum.';
comment on column fs_fiadb.cond_dwm_calc.fuel_depth
  is 'Average fuel depth. Null if no sample points land in condition.';
comment on column fs_fiadb.cond_dwm_calc.fuel_biomass
  is 'Average fuel biomass. Null if no sample points land in condition.';
comment on column fs_fiadb.cond_dwm_calc.fuel_carbon
  is 'Average fuel carbon. Null if no sample points land in condition.';
comment on column fs_fiadb.cond_dwm_calc.duff_depth
  is 'Average duff depth. Null if no sample points land in condition.';
comment on column fs_fiadb.cond_dwm_calc.duff_biomass
  is 'Average fuel biomass in pounds per acre. Null if no sample points land in condition.';
comment on column fs_fiadb.cond_dwm_calc.duff_carbon
  is 'Average fuel carbon in pounds per acre. Null if no sample points land in condition.';
comment on column fs_fiadb.cond_dwm_calc.litter_depth
  is 'Average litter depth. Null if no sample points land in condition.';
comment on column fs_fiadb.cond_dwm_calc.litter_biomass
  is 'Average litter biomass in pounds per acre. Null if no sample points land in condition.';
comment on column fs_fiadb.cond_dwm_calc.litter_carbon
  is 'Average litter carbon in pounds per acre. Null if no sample points land in condition.';
comment on column fs_fiadb.cond_dwm_calc.duff_tc_cond
  is 'The number of duff, litter, fuelbed sampling points on the condition';
comment on column fs_fiadb.cond_dwm_calc.duff_tc_unadj
  is 'The number of duff, litter, fuelbed sampling points on all conditions including unmeasured on the target plot design';
comment on column fs_fiadb.cond_dwm_calc.duff_tc_adj
  is 'The number of duff, litter, fuelbed sampling points on all conditions including unmeasured on the target plot design adjusted for partially measured plots in the stratum';
comment on column fs_fiadb.cond_dwm_calc.avg_wood_density
  is 'Average bulk density of wood on condition weighted by species volume';
comment on column fs_fiadb.cond_dwm_calc.created_date
  is 'Created Date';
comment on column fs_fiadb.cond_dwm_calc.modified_date
  is 'Modified Date';
comment on column fs_fiadb.cond_dwm_calc.cycle
  is 'Inventory cycle number';
comment on column fs_fiadb.cond_dwm_calc.subcycle
  is 'Inventory subcycle number';
comment on column fs_fiadb.cond_dwm_calc.unitcd
  is 'Survey unit code';
comment on column fs_fiadb.cond_dwm_calc.rscd
  is 'Region or Station Code';
comment on column fs_fiadb.cond_dwm_calc.pile_tl_cond
  is 'Condition transect length.';
comment on column fs_fiadb.cond_dwm_calc.pile_tl_unadj
  is 'Target plot transect length for piles.';
comment on column fs_fiadb.cond_dwm_calc.pile_tl_adj
  is 'Plot transect length actually measured for piles.';
comment on column fs_fiadb.cond_dwm_calc.condprop_pile
  is 'Proportion of plot area or transect length in condition.';
create index CDC_CND_FK_I on FS_FIADB.COND_DWM_CALC (CND_CN);
create index CDC_PSM_FK_I on FS_FIADB.COND_DWM_CALC (STRATUM_CN);
create index CDC_PLT_FK_I on FS_FIADB.COND_DWM_CALC (PLT_CN);
alter table FS_FIADB.COND_DWM_CALC add constraint CDC_PK primary key (CN);
alter table FS_FIADB.COND_DWM_CALC add constraint CDC_UK3 unique (RSCD, EVALID, COUNTYCD, CONDID, PLOT, CYCLE, SUBCYCLE, STATECD);
alter table FS_FIADB.COND_DWM_CALC add constraint CDC_UK2 unique (PLOT, INVYR, RSCD, COUNTYCD, CONDID, EVALID, STATECD);
alter table FS_FIADB.COND_DWM_CALC add constraint CDC_UK unique (PLT_CN, EVALID, RSCD, CONDID);
alter table FS_FIADB.COND_DWM_CALC add constraint CDC_CND_FK foreign key (CND_CN) references FS_FIADB.COND (CN);
alter table FS_FIADB.COND_DWM_CALC add constraint CDC_PSM_FK foreign key (STRATUM_CN) references FS_FIADB.POP_STRATUM (CN);
alter table FS_FIADB.COND_DWM_CALC add constraint CDC_PLT_FK foreign key (PLT_CN) references FS_FIADB.PLOT (CN);