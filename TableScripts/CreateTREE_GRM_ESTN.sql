CREATE TABLE fs_fiadb.tree_grm_estn
(
cn               VARCHAR(34) NOT NULL,
statecd          DOUBLE PRECISION,
invyr            INTEGER NOT NULL,
plt_cn           VARCHAR(34) NOT NULL,
tre_cn           VARCHAR(34) NOT NULL,
land_basis       VARCHAR(10),
estimate         VARCHAR(20),
estn_type        VARCHAR(10),
estn_units       VARCHAR(3),
component        VARCHAR(15),
subptyp_grm      INTEGER,
remper           DECIMAL(3,1),
tpagrow_unadj    DECIMAL(11,6),
tparemv_unadj    DECIMAL(11,6),
tpamort_unadj    DECIMAL(11,6),
ann_net_growth   DECIMAL(13,6),
removals         DECIMAL(13,6),
mortality        DECIMAL(13,6),
est_begin        DECIMAL(13,6),
est_begin_recalc VARCHAR(1),
est_end          DECIMAL(13,6),
est_midpt        DECIMAL(13,6),
est_threshold    DECIMAL(13,6),
dia_begin        DECIMAL(5,2),
dia_begin_recalc VARCHAR(1),
dia_end          DECIMAL(5,2),
dia_midpt        DECIMAL(5,2),
dia_threshold    DECIMAL(5,2),
g_s              DECIMAL(13,6),
i                DECIMAL(13,6),
g_i              DECIMAL(13,6),
m                DECIMAL(13,6),
g_m              DECIMAL(13,6),
c                DECIMAL(13,6),
g_c              DECIMAL(13,6),
r                DECIMAL(13,6),
g_r              DECIMAL(13,6),
d                DECIMAL(13,6),
g_d              DECIMAL(13,6),
cd               DECIMAL(13,6),
g_cd             DECIMAL(13,6),
ci               DECIMAL(13,6),
g_ci             DECIMAL(13,6),
created_date     TIMESTAMP(0),
modified_date    TIMESTAMP(0)
);
comment on column fs_fiadb.tree_grm_estn.cn
  is 'Sequence number (surrogate primary key)';
comment on column fs_fiadb.tree_grm_estn.statecd
  is 'State code';
comment on column fs_fiadb.tree_grm_estn.invyr
  is 'Annual inventory year';
comment on column fs_fiadb.tree_grm_estn.plt_cn
  is 'Foreign key to plot table';
comment on column fs_fiadb.tree_grm_estn.tre_cn
  is 'Foreign key to tree table (CN from the tree table at time 2)';
comment on column fs_fiadb.tree_grm_estn.land_basis
  is 'Land basis for estimate. TIMBERLAND or FOREST';
comment on column fs_fiadb.tree_grm_estn.estimate
  is 'Base attribute that is being estimated.';
comment on column fs_fiadb.tree_grm_estn.estn_type
  is 'Estimation type of the tree. GS, AL, SL for growing stock, all live, sawlog';
comment on column fs_fiadb.tree_grm_estn.estn_units
  is 'Estimation units. CF, BF for cubic feet, board feet';
comment on column fs_fiadb.tree_grm_estn.component
  is 'Growth component type';
comment on column fs_fiadb.tree_grm_estn.subptyp_grm
  is 'Plot type used for GRM estimation, 1 = subplot, 2 = microplot, 3 = macroplot';
comment on column fs_fiadb.tree_grm_estn.remper
  is 'Remeasurement period';
comment on column fs_fiadb.tree_grm_estn.tpagrow_unadj
  is 'Trees per acre used for growth before adjusting for out of population conditions';
comment on column fs_fiadb.tree_grm_estn.tparemv_unadj
  is 'Annualized trees per acre used for removals before adjusting for out of population conditions';
comment on column fs_fiadb.tree_grm_estn.tpamort_unadj
  is 'Annualized trees per acre used for mortality before adjusting for out of population conditions';
comment on column fs_fiadb.tree_grm_estn.ann_net_growth
  is 'Average annual net growth estimate';
comment on column fs_fiadb.tree_grm_estn.removals
  is 'Removal estimate';
comment on column fs_fiadb.tree_grm_estn.mortality
  is 'Mortality estimate';
comment on column fs_fiadb.tree_grm_estn.est_begin
  is 'Estimate derived from original field observations at time 1, modeled time 1 values for missing trees, or recomputed time 1 variables based on time 2 observations';
comment on column fs_fiadb.tree_grm_estn.est_begin_recalc
  is 'Y when est_begin is recalculated. N when est_begin is derived from time 1 field observations or from modeled time 1 values';
comment on column fs_fiadb.tree_grm_estn.est_end
  is 'Estimate at time 2';
comment on column fs_fiadb.tree_grm_estn.est_midpt
  is 'Estimate at midpoint of remeasurement period';
comment on column fs_fiadb.tree_grm_estn.est_threshold
  is 'Estimate at threshold size';
comment on column fs_fiadb.tree_grm_estn.dia_begin
  is 'Diameter from original field observations at time 1, modeled time 1 diameter for missing trees, or recomputed time 1 diameter based on time 2 observations';
comment on column fs_fiadb.tree_grm_estn.dia_begin_recalc
  is 'Y when dia_begin is recalculated, N when the dia_begin is derived from time 1 field diameter, or from modeled time 1 diameter';
comment on column fs_fiadb.tree_grm_estn.dia_end
  is 'Diameter at time 2';
comment on column fs_fiadb.tree_grm_estn.dia_midpt
  is 'Diameter at midpoint of remeasurement period';
comment on column fs_fiadb.tree_grm_estn.dia_threshold
  is 'Diameter at threshold size';
comment on column fs_fiadb.tree_grm_estn.g_s
  is 'Survivor growth';
comment on column fs_fiadb.tree_grm_estn.i
  is 'Ingrowth';
comment on column fs_fiadb.tree_grm_estn.g_i
  is 'Growth on ingrowth';
comment on column fs_fiadb.tree_grm_estn.m
  is 'Mortality';
comment on column fs_fiadb.tree_grm_estn.g_m
  is 'Mortality growth';
comment on column fs_fiadb.tree_grm_estn.c
  is 'Cut';
comment on column fs_fiadb.tree_grm_estn.g_c
  is 'Cut growth';
comment on column fs_fiadb.tree_grm_estn.r
  is 'Reversion';
comment on column fs_fiadb.tree_grm_estn.g_r
  is 'Reversion growth';
comment on column fs_fiadb.tree_grm_estn.d
  is 'Diversion';
comment on column fs_fiadb.tree_grm_estn.g_d
  is 'Diversion growth';
comment on column fs_fiadb.tree_grm_estn.cd
  is 'Cull decrement';
comment on column fs_fiadb.tree_grm_estn.g_cd
  is 'Cull decrement growth';
comment on column fs_fiadb.tree_grm_estn.ci
  is 'Cull increment';
comment on column fs_fiadb.tree_grm_estn.g_ci
  is 'Cull increment growth';
comment on column fs_fiadb.tree_grm_estn.created_date
  is 'Created Date';
comment on column fs_fiadb.tree_grm_estn.modified_date
  is 'Modified Date';
create index TGE_STATECD_INVYR_I on FS_FIADB.TREE_GRM_ESTN (STATECD, INVYR);
create index TGE_TRE_FK_I on FS_FIADB.TREE_GRM_ESTN (TRE_CN);
create index TGE_PLT_FK_I on FS_FIADB.TREE_GRM_ESTN (PLT_CN);
alter table FS_FIADB.TREE_GRM_ESTN add constraint TGE_PK primary key (CN);
alter table FS_FIADB.TREE_GRM_ESTN add constraint TGE_UK unique (ESTN_UNITS, TRE_CN, LAND_BASIS, ESTIMATE, ESTN_TYPE);
alter table FS_FIADB.TREE_GRM_ESTN add constraint TGE_PLT_FK foreign key (PLT_CN) references FS_FIADB.PLOT (CN);
alter table FS_FIADB.TREE_GRM_ESTN add constraint TGE_TRE_FK foreign key (TRE_CN) references FS_FIADB.TREE (CN);