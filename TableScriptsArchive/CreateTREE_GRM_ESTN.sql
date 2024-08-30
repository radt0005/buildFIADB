-- Create table
create table FS_FIADB.TREE_GRM_ESTN
(
  cn                   VARCHAR(34) not null,
  statecd              DOUBLE PRECISION,
  invyr                SMALLINT not null,
  plt_cn               VARCHAR(34) not null,
  tre_cn               VARCHAR(34) not null,
  land_basis           VARCHAR(10),
  estimate             VARCHAR(20),
  estn_type            VARCHAR(10),
  estn_units           VARCHAR(3),
  component            VARCHAR(15),
  subptyp_grm          SMALLINT,
  remper               DECIMAL(3,1),
  tpagrow_unadj        DECIMAL(11,6),
  tparemv_unadj        DECIMAL(11,6),
  tpamort_unadj        DECIMAL(11,6),
  ann_net_growth       DECIMAL(13,6),
  removals             DECIMAL(13,6),
  mortality            DECIMAL(13,6),
  est_begin            DECIMAL(13,6),
  est_begin_recalc     VARCHAR(1),
  est_end              DECIMAL(13,6),
  est_midpt            DECIMAL(13,6),
  est_threshold        DECIMAL(13,6),
  dia_begin            DECIMAL(5,2),
  dia_begin_recalc     VARCHAR(1),
  dia_end              DECIMAL(5,2),
  dia_midpt            DECIMAL(5,2),
  dia_threshold        DECIMAL(5,2),
  g_s                  DECIMAL(13,6),
  i                    DECIMAL(13,6),
  g_i                  DECIMAL(13,6),
  m                    DECIMAL(13,6),
  g_m                  DECIMAL(13,6),
  c                    DECIMAL(13,6),
  g_c                  DECIMAL(13,6),
  r                    DECIMAL(13,6),
  g_r                  DECIMAL(13,6),
  d                    DECIMAL(13,6),
  g_d                  DECIMAL(13,6),
  cd                   DECIMAL(13,6),
  g_cd                 DECIMAL(13,6),
  ci                   DECIMAL(13,6),
  g_ci                 DECIMAL(13,6),
  created_by           VARCHAR(30),
  created_date         TIMESTAMP(0),
  created_in_instance  VARCHAR(6),
  modified_by          VARCHAR(30),
  modified_date        TIMESTAMP(0),
  modified_in_instance VARCHAR(6)
);
-- Add comments to the table 
comment on table FS_FIADB.TREE_GRM_ESTN
  is '6.0';
-- Add comments to the columns 
comment on column FS_FIADB.TREE_GRM_ESTN.cn
  is 'Sequence number (surrogate primary key)';
comment on column FS_FIADB.TREE_GRM_ESTN.statecd
  is 'State code';
comment on column FS_FIADB.TREE_GRM_ESTN.invyr
  is 'Annual inventory year';
comment on column FS_FIADB.TREE_GRM_ESTN.plt_cn
  is 'Foreign key to plot table';
comment on column FS_FIADB.TREE_GRM_ESTN.tre_cn
  is 'Foreign key to tree table (CN from the tree table at time 2)';
comment on column FS_FIADB.TREE_GRM_ESTN.land_basis
  is 'Land basis for estimate. TIMBERLAND or FOREST';
comment on column FS_FIADB.TREE_GRM_ESTN.estimate
  is 'Base attribute that is being estimated.';
comment on column FS_FIADB.TREE_GRM_ESTN.estn_type
  is 'Estimation type of the tree. GS, AL, SL for growing stock, all live, sawlog';
comment on column FS_FIADB.TREE_GRM_ESTN.estn_units
  is 'Estimation units. CF, BF for cubic feet, board feet';
comment on column FS_FIADB.TREE_GRM_ESTN.component
  is 'Growth component type';
comment on column FS_FIADB.TREE_GRM_ESTN.subptyp_grm
  is 'Plot type used for GRM estimation, 1 = subplot, 2 = microplot, 3 = macroplot';
comment on column FS_FIADB.TREE_GRM_ESTN.remper
  is 'Remeasurement period';
comment on column FS_FIADB.TREE_GRM_ESTN.tpagrow_unadj
  is 'Trees per acre used for growth before adjusting for out of population conditions';
comment on column FS_FIADB.TREE_GRM_ESTN.tparemv_unadj
  is 'Annualized trees per acre used for removals before adjusting for out of population conditions';
comment on column FS_FIADB.TREE_GRM_ESTN.tpamort_unadj
  is 'Annualized trees per acre used for mortality before adjusting for out of population conditions';
comment on column FS_FIADB.TREE_GRM_ESTN.ann_net_growth
  is 'Average annual net growth estimate';
comment on column FS_FIADB.TREE_GRM_ESTN.removals
  is 'Removal estimate';
comment on column FS_FIADB.TREE_GRM_ESTN.mortality
  is 'Mortality estimate';
comment on column FS_FIADB.TREE_GRM_ESTN.est_begin
  is 'Estimate derived from original field observations at time 1, modeled time 1 values for missing trees, or recomputed time 1 variables based on time 2 observations';
comment on column FS_FIADB.TREE_GRM_ESTN.est_begin_recalc
  is 'Y when est_begin is recalculated. N when est_begin is derived from time 1 field observations or from modeled time 1 values';
comment on column FS_FIADB.TREE_GRM_ESTN.est_end
  is 'Estimate at time 2';
comment on column FS_FIADB.TREE_GRM_ESTN.est_midpt
  is 'Estimate at midpoint of remeasurement period';
comment on column FS_FIADB.TREE_GRM_ESTN.est_threshold
  is 'Estimate at threshold size';
comment on column FS_FIADB.TREE_GRM_ESTN.dia_begin
  is 'Diameter from original field observations at time 1, modeled time 1 diameter for missing trees, or recomputed time 1 diameter based on time 2 observations';
comment on column FS_FIADB.TREE_GRM_ESTN.dia_begin_recalc
  is 'Y when dia_begin is recalculated, N when the dia_begin is derived from time 1 field diameter, or from modeled time 1 diameter';
comment on column FS_FIADB.TREE_GRM_ESTN.dia_end
  is 'Diameter at time 2';
comment on column FS_FIADB.TREE_GRM_ESTN.dia_midpt
  is 'Diameter at midpoint of remeasurement period';
comment on column FS_FIADB.TREE_GRM_ESTN.dia_threshold
  is 'Diameter at threshold size';
comment on column FS_FIADB.TREE_GRM_ESTN.g_s
  is 'Survivor growth';
comment on column FS_FIADB.TREE_GRM_ESTN.i
  is 'Ingrowth';
comment on column FS_FIADB.TREE_GRM_ESTN.g_i
  is 'Growth on ingrowth';
comment on column FS_FIADB.TREE_GRM_ESTN.m
  is 'Mortality';
comment on column FS_FIADB.TREE_GRM_ESTN.g_m
  is 'Mortality growth';
comment on column FS_FIADB.TREE_GRM_ESTN.c
  is 'Cut';
comment on column FS_FIADB.TREE_GRM_ESTN.g_c
  is 'Cut growth';
comment on column FS_FIADB.TREE_GRM_ESTN.r
  is 'Reversion';
comment on column FS_FIADB.TREE_GRM_ESTN.g_r
  is 'Reversion growth';
comment on column FS_FIADB.TREE_GRM_ESTN.d
  is 'Diversion';
comment on column FS_FIADB.TREE_GRM_ESTN.g_d
  is 'Diversion growth';
comment on column FS_FIADB.TREE_GRM_ESTN.cd
  is 'Cull decrement';
comment on column FS_FIADB.TREE_GRM_ESTN.g_cd
  is 'Cull decrement growth';
comment on column FS_FIADB.TREE_GRM_ESTN.ci
  is 'Cull increment';
comment on column FS_FIADB.TREE_GRM_ESTN.g_ci
  is 'Cull increment growth';
comment on column FS_FIADB.TREE_GRM_ESTN.created_by
  is 'Created by';
comment on column FS_FIADB.TREE_GRM_ESTN.created_date
  is 'Created Date';
comment on column FS_FIADB.TREE_GRM_ESTN.created_in_instance
  is 'Created in Instance';
comment on column FS_FIADB.TREE_GRM_ESTN.modified_by
  is 'Modified by';
comment on column FS_FIADB.TREE_GRM_ESTN.modified_date
  is 'Modified Date';
comment on column FS_FIADB.TREE_GRM_ESTN.modified_in_instance
  is 'Modified in Instance';
-- Create/Recreate indexes 
create index TGE_PLT_FK_I on FS_FIADB.TREE_GRM_ESTN (PLT_CN);
create index TGE_STATECD_INVYR_I on FS_FIADB.TREE_GRM_ESTN (STATECD, INVYR);
create index TGE_TRE_FK_I on FS_FIADB.TREE_GRM_ESTN (TRE_CN);
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.TREE_GRM_ESTN
  add constraint TGE_PK primary key (CN);
alter table FS_FIADB.TREE_GRM_ESTN
  add constraint TGE_UK unique (TRE_CN, LAND_BASIS, ESTIMATE, ESTN_TYPE, ESTN_UNITS);
alter table FS_FIADB.TREE_GRM_ESTN
  add constraint TGE_PLT_FK foreign key (PLT_CN)
  references FS_FIADB.PLOT (CN);
alter table FS_FIADB.TREE_GRM_ESTN
  add constraint TGE_TRE_FK foreign key (TRE_CN)
  references FS_FIADB.TREE (CN);