-- Create table
create table FS_FIADB.COND_DWM_CALC
(
  cn                     VARCHAR(34) not null,
  statecd                SMALLINT not null,
  countycd               SMALLINT not null,
  plot                   DOUBLE PRECISION not null,
  measyear               SMALLINT not null,
  invyr                  SMALLINT not null,
  condid                 SMALLINT not null,
  evalid                 INT not null,
  plt_cn                 VARCHAR(34) not null,
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
  created_by             VARCHAR(30) not null,
  created_date           TIMESTAMP(0) not null,
  created_in_instance    VARCHAR(6) not null,
  modified_by            VARCHAR(30),
  modified_date          TIMESTAMP(0),
  modified_in_instance   VARCHAR(6),
  cycle                  SMALLINT not null,
  subcycle               SMALLINT not null,
  unitcd                 SMALLINT not null,
  rscd                   SMALLINT,
  pile_tl_cond           DECIMAL(13,10),
  pile_tl_unadj          DECIMAL(13,10),
  pile_tl_adj            DECIMAL(13,10),
  condprop_pile          DECIMAL(13,12)
);
-- Add comments to the table 
comment on table FS_FIADB.COND_DWM_CALC
  is '6.0';
-- Add comments to the columns 
comment on column FS_FIADB.COND_DWM_CALC.cn
  is 'Sequence number (surrogate primary key';
comment on column FS_FIADB.COND_DWM_CALC.statecd
  is 'State Code';
comment on column FS_FIADB.COND_DWM_CALC.countycd
  is 'County Code';
comment on column FS_FIADB.COND_DWM_CALC.plot
  is 'P2 Plot Number';
comment on column FS_FIADB.COND_DWM_CALC.measyear
  is 'Measurement Year';
comment on column FS_FIADB.COND_DWM_CALC.invyr
  is 'Annual Inventory Year';
comment on column FS_FIADB.COND_DWM_CALC.condid
  is 'Condition number';
comment on column FS_FIADB.COND_DWM_CALC.plt_cn
  is 'Foreign key to Plot table CN';
comment on column FS_FIADB.COND_DWM_CALC.cnd_cn
  is 'Link to same condition record CN in NIMS_COND_TBL table.';
comment on column FS_FIADB.COND_DWM_CALC.stratum_cn
  is 'Stratum sequence number';
comment on column FS_FIADB.COND_DWM_CALC.phase
  is 'P2, P3 or P23';
comment on column FS_FIADB.COND_DWM_CALC.condprop_cwd
  is 'Condition proportion based on the CWD transects';
comment on column FS_FIADB.COND_DWM_CALC.condprop_fwd_sm
  is 'Condition proportion based on the FWD small transects';
comment on column FS_FIADB.COND_DWM_CALC.condprop_fwd_md
  is 'Condition proportion based on the FWD medium transects';
comment on column FS_FIADB.COND_DWM_CALC.condprop_fwd_lg
  is 'Condition proportion based on the FWD large transects';
comment on column FS_FIADB.COND_DWM_CALC.condprop_duff
  is 'Condition proportion based on the duff, litter, fuelbed points';
comment on column FS_FIADB.COND_DWM_CALC.cwd_tl_cond
  is 'Hoizontal transect length measured for CWD on the condition';
comment on column FS_FIADB.COND_DWM_CALC.cwd_tl_unadj
  is 'Sum of CWD transect hoizontal lengths in all conditions including unmeasured on target plot design.';
comment on column FS_FIADB.COND_DWM_CALC.cwd_tl_adj
  is 'Sum of CWD transect hoizontal lengths in all conditions including unmeasured on target plot design adjusted to account for partially unmeasured plots in stratum.';
comment on column FS_FIADB.COND_DWM_CALC.cwd_lpa_cond
  is 'Number of CWD peices per acre on the condition';
comment on column FS_FIADB.COND_DWM_CALC.cwd_lpa_unadj
  is 'Sum of CWD peices per acre on condition based on target plot transect length.';
comment on column FS_FIADB.COND_DWM_CALC.cwd_lpa_adj
  is 'Sum of CWD peices per acre on condition based on target plot transect length adjusted to account for partially unmeasured plots in stratum.';
comment on column FS_FIADB.COND_DWM_CALC.cwd_volcf_cond
  is 'Cubic foot volume per acre of CWD on the condition';
comment on column FS_FIADB.COND_DWM_CALC.cwd_volcf_unadj
  is 'Sum of CWD cubic foot volume per acre on condition based on target plot transect length.';
comment on column FS_FIADB.COND_DWM_CALC.cwd_volcf_adj
  is 'Sum of CWD cubic foot volume per acre on condition based on target plot transect length adjusted to account for partially unmeasured plots in stratum.';
comment on column FS_FIADB.COND_DWM_CALC.cwd_drybio_cond
  is 'Weight in pounds per arce of CWD on the condition';
comment on column FS_FIADB.COND_DWM_CALC.cwd_drybio_unadj
  is 'Sum of CWD weight in pounds per arce on condition based on target plot transect length.';
comment on column FS_FIADB.COND_DWM_CALC.cwd_drybio_adj
  is 'Sum of CWD weight in pounds per arce on condition based on target plot transect length adjusted to account for partially unmeasured plots in stratum.';
comment on column FS_FIADB.COND_DWM_CALC.cwd_carbon_cond
  is 'Carbon weight in pounds per arce of CWD on the condition';
comment on column FS_FIADB.COND_DWM_CALC.cwd_carbon_unadj
  is 'Sum of CWD carbon weight in pounds per arce on condition based on target plot transect length.';
comment on column FS_FIADB.COND_DWM_CALC.cwd_carbon_adj
  is 'Sum of CWD carbon weight in pounds per arce on condition based on target plot transect length adjusted to account for partially unmeasured plots in stratum.';
comment on column FS_FIADB.COND_DWM_CALC.fwd_sm_tl_cond
  is 'Hoizontal transect length measured for small FWD on the condition';
comment on column FS_FIADB.COND_DWM_CALC.fwd_sm_tl_unadj
  is 'Sum of small FWD transect hoizontal lengths in all conditions including unmeasured on target plot design.';
comment on column FS_FIADB.COND_DWM_CALC.fwd_sm_tl_adj
  is 'Sum of small FWD transect hoizontal lengths in all conditions including unmeasured on target plot design adjusted to account for partially unmeasured plots in stratum.';
comment on column FS_FIADB.COND_DWM_CALC.fwd_sm_cnt_cond
  is 'Number of small FWD peices per acre on the condition';
comment on column FS_FIADB.COND_DWM_CALC.fwd_sm_volcf_cond
  is 'Cubic foot volume per acre of small FWD on the condition';
comment on column FS_FIADB.COND_DWM_CALC.fwd_sm_volcf_unadj
  is 'Sum of small FWD cubic foot volume per acre on condition based on target plot transect length.';
comment on column FS_FIADB.COND_DWM_CALC.fwd_sm_volcf_adj
  is 'Sum of small FWD cubic foot volume per acre on condition based on target plot transect length adjusted to account for partially unmeasured plots in stratum.';
comment on column FS_FIADB.COND_DWM_CALC.fwd_sm_drybio_cond
  is 'Weight in pounds per arce of small FWD on the condition';
comment on column FS_FIADB.COND_DWM_CALC.fwd_sm_drybio_unadj
  is 'Sum of small FWD weight in pounds per arce on condition based on target plot transect length.';
comment on column FS_FIADB.COND_DWM_CALC.fwd_sm_drybio_adj
  is 'Sum of small FWD weight in pounds per arce on condition based on target plot transect length adjusted to account for partially unmeasured plots in stratum.';
comment on column FS_FIADB.COND_DWM_CALC.fwd_sm_carbon_cond
  is 'Carbon weight in pounds per arce of small FWD on the condition';
comment on column FS_FIADB.COND_DWM_CALC.fwd_sm_carbon_unadj
  is 'Sum of small FWD carbon weight in pounds per arce on condition based on target plot transect length.';
comment on column FS_FIADB.COND_DWM_CALC.fwd_sm_carbon_adj
  is 'Sum of small FWD carbon weight in pounds per arce on condition based on target plot transect length adjusted to account for partially unmeasured plots in stratum.';
comment on column FS_FIADB.COND_DWM_CALC.fwd_md_tl_cond
  is 'Hoizontal transect length measured for medium FWD on the condition';
comment on column FS_FIADB.COND_DWM_CALC.fwd_md_tl_unadj
  is 'Sum of medium FWD transect hoizontal lengths in all conditions including unmeasured on target plot design.';
comment on column FS_FIADB.COND_DWM_CALC.fwd_md_tl_adj
  is 'Sum of medium FWD transect hoizontal lengths in all conditions including unmeasured on target plot design adjusted to account for partially unmeasured plots in stratum.';
comment on column FS_FIADB.COND_DWM_CALC.fwd_md_cnt_cond
  is 'Number of medium FWD peices per acre on the condition';
comment on column FS_FIADB.COND_DWM_CALC.fwd_md_volcf_cond
  is 'Cubic foot volume per acre of medium FWD on the condition';
comment on column FS_FIADB.COND_DWM_CALC.fwd_md_volcf_unadj
  is 'Sum of medium FWD cubic foot volume per acre on condition based on target plot transect length.';
comment on column FS_FIADB.COND_DWM_CALC.fwd_md_volcf_adj
  is 'Sum of medium FWD cubic foot volume per acre on condition based on target plot transect length adjusted to account for partially unmeasured plots in stratum.';
comment on column FS_FIADB.COND_DWM_CALC.fwd_md_drybio_cond
  is 'Weight in pounds per arce of medium FWD on the condition';
comment on column FS_FIADB.COND_DWM_CALC.fwd_md_drybio_unadj
  is 'Sum of medium FWD weight in pounds per arce on condition based on target plot transect length.';
comment on column FS_FIADB.COND_DWM_CALC.fwd_md_drybio_adj
  is 'Sum of medium FWD weight in pounds per arce on condition based on target plot transect length adjusted to account for partially unmeasured plots in stratum.';
comment on column FS_FIADB.COND_DWM_CALC.fwd_md_carbon_cond
  is 'Carbon weight in pounds per arce of medium FWD on the condition';
comment on column FS_FIADB.COND_DWM_CALC.fwd_md_carbon_unadj
  is 'Sum of medium FWD carbon weight in pounds per arce on condition based on target plot transect length.';
comment on column FS_FIADB.COND_DWM_CALC.fwd_md_carbon_adj
  is 'Sum of medium FWD carbon weight in pounds per arce on condition based on target plot transect length adjusted to account for partially unmeasured plots in stratum.';
comment on column FS_FIADB.COND_DWM_CALC.fwd_lg_tl_cond
  is 'Hoizontal transect length measured for large FWD on the condition';
comment on column FS_FIADB.COND_DWM_CALC.fwd_lg_tl_unadj
  is 'Sum of large FWD transect hoizontal lengths in all conditions including unmeasured on target plot design.';
comment on column FS_FIADB.COND_DWM_CALC.fwd_lg_tl_adj
  is 'Sum of large FWD transect hoizontal lengths in all conditions including unmeasured on target plot design adjusted to account for partially unmeasured plots in stratum.';
comment on column FS_FIADB.COND_DWM_CALC.fwd_lg_cnt_cond
  is 'Number of large FWD peices per acre on the condition';
comment on column FS_FIADB.COND_DWM_CALC.fwd_lg_volcf_cond
  is 'Cubic foot volume per acre of large FWD on the condition';
comment on column FS_FIADB.COND_DWM_CALC.fwd_lg_volcf_unadj
  is 'Sum of large FWD cubic foot volume per acre on condition based on target plot transect length.';
comment on column FS_FIADB.COND_DWM_CALC.fwd_lg_volcf_adj
  is 'Sum of large FWD cubic foot volume per acre on condition based on target plot transect length adjusted to account for partially unmeasured plots in stratum.';
comment on column FS_FIADB.COND_DWM_CALC.fwd_lg_drybio_cond
  is 'Weight in pounds per arce of large FWD on the condition';
comment on column FS_FIADB.COND_DWM_CALC.fwd_lg_drybio_unadj
  is 'Sum of large FWD weight in pounds per arce on condition based on target plot transect length.';
comment on column FS_FIADB.COND_DWM_CALC.fwd_lg_drybio_adj
  is 'Sum of large FWD weight in pounds per arce on condition based on target plot transect length adjusted to account for partially unmeasured plots in stratum.';
comment on column FS_FIADB.COND_DWM_CALC.fwd_lg_carbon_cond
  is 'Carbon weight in pounds per arce of large FWD on the condition';
comment on column FS_FIADB.COND_DWM_CALC.fwd_lg_carbon_unadj
  is 'Sum of large FWD carbon weight in pounds per arce on condition based on target plot transect length.';
comment on column FS_FIADB.COND_DWM_CALC.fwd_lg_carbon_adj
  is 'Sum of large FWD carbon weight in pounds per arce on condition based on target plot transect length adjusted to account for partially unmeasured plots in stratum.';
comment on column FS_FIADB.COND_DWM_CALC.pile_sample_area_cond
  is 'Area in acres of condition being sampled for piles';
comment on column FS_FIADB.COND_DWM_CALC.pile_sample_area_unadj
  is 'Sum of pile sample area in acres in all conditions including unmeasured on target plot design.';
comment on column FS_FIADB.COND_DWM_CALC.pile_sample_area_adj
  is 'Sum of pile sample area in acres in all conditions including unmeasured on target plot design adjusted to account for partially unmeasured plots in stratum.';
comment on column FS_FIADB.COND_DWM_CALC.pile_volcf_cond
  is 'Cubic foot volume per acre of DWM piles';
comment on column FS_FIADB.COND_DWM_CALC.pile_volcf_unadj
  is 'Sum of pile cubic foot volume per acre on condition based on target plot area.';
comment on column FS_FIADB.COND_DWM_CALC.pile_volcf_adj
  is 'Sum of pile cubic foot volume per acre on condition based on target plot area adjusted to account for partially unmeasured plots in stratum.';
comment on column FS_FIADB.COND_DWM_CALC.pile_drybio_cond
  is 'Weight in pound per acre of DWM piles';
comment on column FS_FIADB.COND_DWM_CALC.pile_drybio_unadj
  is 'Sum of pile weight in pounds per arce on condition based on target plot area.';
comment on column FS_FIADB.COND_DWM_CALC.pile_drybio_adj
  is 'Sum of pile weight in pounds per arce on condition based on target plot area adjusted to account for partially unmeasured plots in stratum.';
comment on column FS_FIADB.COND_DWM_CALC.pile_carbon_cond
  is 'Carbon weight in pound per acre of DWM piles';
comment on column FS_FIADB.COND_DWM_CALC.pile_carbon_unadj
  is 'Sum of pile carbon weight in pounds per arce on condition based on target plot area.';
comment on column FS_FIADB.COND_DWM_CALC.pile_carbon_adj
  is 'Sum of pile carbon weight in pounds per arce on condition based on target plot area adjusted to account for partially unmeasured plots in stratum.';
comment on column FS_FIADB.COND_DWM_CALC.fuel_depth
  is 'Average fuel depth. Null if no sample points land in condition.';
comment on column FS_FIADB.COND_DWM_CALC.fuel_biomass
  is 'Average fuel biomass. Null if no sample points land in condition.';
comment on column FS_FIADB.COND_DWM_CALC.fuel_carbon
  is 'Average fuel carbon. Null if no sample points land in condition.';
comment on column FS_FIADB.COND_DWM_CALC.duff_depth
  is 'Average duff depth. Null if no sample points land in condition.';
comment on column FS_FIADB.COND_DWM_CALC.duff_biomass
  is 'Average fuel biomass in pounds per acre. Null if no sample points land in condition.';
comment on column FS_FIADB.COND_DWM_CALC.duff_carbon
  is 'Average fuel carbon in pounds per acre. Null if no sample points land in condition.';
comment on column FS_FIADB.COND_DWM_CALC.litter_depth
  is 'Average litter depth. Null if no sample points land in condition.';
comment on column FS_FIADB.COND_DWM_CALC.litter_biomass
  is 'Average litter biomass in pounds per acre. Null if no sample points land in condition.';
comment on column FS_FIADB.COND_DWM_CALC.litter_carbon
  is 'Average litter carbon in pounds per acre. Null if no sample points land in condition.';
comment on column FS_FIADB.COND_DWM_CALC.duff_tc_cond
  is 'The number of duff, litter, fuelbed sampling points on the condition';
comment on column FS_FIADB.COND_DWM_CALC.duff_tc_unadj
  is 'The number of duff, litter, fuelbed sampling points on all conditions including unmeasured on the target plot design';
comment on column FS_FIADB.COND_DWM_CALC.duff_tc_adj
  is 'The number of duff, litter, fuelbed sampling points on all conditions including unmeasured on the target plot design adjusted for partially measured plots in the stratum';
comment on column FS_FIADB.COND_DWM_CALC.avg_wood_density
  is 'Average bulk density of wood on condition weighted by species volume';
comment on column FS_FIADB.COND_DWM_CALC.created_by
  is 'Created by';
comment on column FS_FIADB.COND_DWM_CALC.created_date
  is 'Created Date';
comment on column FS_FIADB.COND_DWM_CALC.created_in_instance
  is 'Created in Instance';
comment on column FS_FIADB.COND_DWM_CALC.modified_by
  is 'Modified by';
comment on column FS_FIADB.COND_DWM_CALC.modified_date
  is 'Modified Date';
comment on column FS_FIADB.COND_DWM_CALC.modified_in_instance
  is 'Modified in Instance';
comment on column FS_FIADB.COND_DWM_CALC.cycle
  is 'Inventory cycle number';
comment on column FS_FIADB.COND_DWM_CALC.subcycle
  is 'Inventory subcycle number';
comment on column FS_FIADB.COND_DWM_CALC.unitcd
  is 'Survey unit code';
comment on column FS_FIADB.COND_DWM_CALC.rscd
  is 'Region or Station Code';
comment on column FS_FIADB.COND_DWM_CALC.pile_tl_cond
  is 'Condition transect length.';
comment on column FS_FIADB.COND_DWM_CALC.pile_tl_unadj
  is 'Target plot transect length for piles.';
comment on column FS_FIADB.COND_DWM_CALC.pile_tl_adj
  is 'Plot transect length actually measured for piles.';
comment on column FS_FIADB.COND_DWM_CALC.condprop_pile
  is 'Proportion of plot area or transect length in condition.';
-- Create/Recreate indexes 
create index CDC_CND_FK_I on FS_FIADB.COND_DWM_CALC (CND_CN);
create index CDC_PLT_FK_I on FS_FIADB.COND_DWM_CALC (PLT_CN);
create index CDC_PSM_FK_I on FS_FIADB.COND_DWM_CALC (STRATUM_CN);
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.COND_DWM_CALC
  add constraint CDC_PK primary key (CN);
alter table FS_FIADB.COND_DWM_CALC
  add constraint CDC_UK unique (PLT_CN, CONDID, EVALID, RSCD);
alter table FS_FIADB.COND_DWM_CALC
  add constraint CDC_UK2 unique (STATECD, COUNTYCD, PLOT, INVYR, CONDID, EVALID, RSCD);
alter table FS_FIADB.COND_DWM_CALC
  add constraint CDC_UK3 unique (STATECD, CYCLE, SUBCYCLE, COUNTYCD, PLOT, CONDID, EVALID, RSCD);
alter table FS_FIADB.COND_DWM_CALC
  add constraint CDC_CND_FK foreign key (CND_CN)
  references FS_FIADB.COND (CN);
alter table FS_FIADB.COND_DWM_CALC
  add constraint CDC_PLT_FK foreign key (PLT_CN)
  references FS_FIADB.PLOT (CN);
alter table FS_FIADB.COND_DWM_CALC
  add constraint CDC_PSM_FK foreign key (STRATUM_CN)
  references FS_FIADB.POP_STRATUM (CN);
