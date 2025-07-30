CREATE TABLE fs_fiadb.tree_grm_component
(
tre_cn                       VARCHAR(34) NOT NULL,
prev_tre_cn                  VARCHAR(34),
plt_cn                       VARCHAR(34) NOT NULL,
statecd                      DOUBLE PRECISION NOT NULL,
dia_begin                    DECIMAL(5,2),
dia_midpt                    DECIMAL(5,2),
dia_end                      DECIMAL(5,2),
ann_dia_growth               DECIMAL(5,2),
ann_ht_growth                DECIMAL(5,2),
subptyp_begin                INTEGER,
subptyp_midpt                INTEGER,
subptyp_end                  INTEGER,
micr_component_al_forest     VARCHAR(15),
micr_subptyp_grm_al_forest   INTEGER,
micr_tpagrow_unadj_al_forest DECIMAL(11,6),
micr_tparemv_unadj_al_forest DECIMAL(11,6),
micr_tpamort_unadj_al_forest DECIMAL(11,6),
subp_component_al_forest     VARCHAR(15),
subp_subptyp_grm_al_forest   INTEGER,
subp_tpagrow_unadj_al_forest DECIMAL(11,6),
subp_tparemv_unadj_al_forest DECIMAL(11,6),
subp_tpamort_unadj_al_forest DECIMAL(11,6),
subp_component_gs_forest     VARCHAR(15),
subp_subptyp_grm_gs_forest   INTEGER,
subp_tpagrow_unadj_gs_forest DECIMAL(11,6),
subp_tparemv_unadj_gs_forest DECIMAL(11,6),
subp_tpamort_unadj_gs_forest DECIMAL(11,6),
subp_component_sl_forest     VARCHAR(15),
subp_subptyp_grm_sl_forest   INTEGER,
subp_tpagrow_unadj_sl_forest DECIMAL(11,6),
subp_tparemv_unadj_sl_forest DECIMAL(11,6),
subp_tpamort_unadj_sl_forest DECIMAL(11,6),
micr_component_al_timber     VARCHAR(15),
micr_subptyp_grm_al_timber   INTEGER,
micr_tpagrow_unadj_al_timber DECIMAL(11,6),
micr_tparemv_unadj_al_timber DECIMAL(11,6),
micr_tpamort_unadj_al_timber DECIMAL(11,6),
subp_component_al_timber     VARCHAR(15),
subp_subptyp_grm_al_timber   INTEGER,
subp_tpagrow_unadj_al_timber DECIMAL(11,6),
subp_tparemv_unadj_al_timber DECIMAL(11,6),
subp_tpamort_unadj_al_timber DECIMAL(11,6),
subp_component_gs_timber     VARCHAR(15),
subp_subptyp_grm_gs_timber   INTEGER,
subp_tpagrow_unadj_gs_timber DECIMAL(11,6),
subp_tparemv_unadj_gs_timber DECIMAL(11,6),
subp_tpamort_unadj_gs_timber DECIMAL(11,6),
subp_component_sl_timber     VARCHAR(15),
subp_subptyp_grm_sl_timber   INTEGER,
subp_tpagrow_unadj_sl_timber DECIMAL(11,6),
subp_tparemv_unadj_sl_timber DECIMAL(11,6),
subp_tpamort_unadj_sl_timber DECIMAL(11,6),
growtsal_forest              DECIMAL(13,6),
growcfal_forest              DECIMAL(13,6),
growcfgs_forest              DECIMAL(13,6),
growbfsl_forest              DECIMAL(13,6),
remvtsal_forest              DECIMAL(13,6),
remvcfal_forest              DECIMAL(13,6),
remvcfgs_forest              DECIMAL(13,6),
remvbfsl_forest              DECIMAL(13,6),
morttsal_forest              DECIMAL(13,6),
mortcfal_forest              DECIMAL(13,6),
mortcfgs_forest              DECIMAL(13,6),
mortbfsl_forest              DECIMAL(13,6),
growtsal_timber              DECIMAL(13,6),
growcfal_timber              DECIMAL(13,6),
growcfgs_timber              DECIMAL(13,6),
growbfsl_timber              DECIMAL(13,6),
remvtsal_timber              DECIMAL(13,6),
remvcfal_timber              DECIMAL(13,6),
remvcfgs_timber              DECIMAL(13,6),
remvbfsl_timber              DECIMAL(13,6),
morttsal_timber              DECIMAL(13,6),
mortcfal_timber              DECIMAL(13,6),
mortcfgs_timber              DECIMAL(13,6),
mortbfsl_timber              DECIMAL(13,6),
created_date                 TIMESTAMP(0),
modified_date                TIMESTAMP(0)
);
comment on column fs_fiadb.tree_grm_component.tre_cn
  is 'Foreign key to TREE table CN';
comment on column fs_fiadb.tree_grm_component.prev_tre_cn
  is 'Foreign key to time 1 tree CN';
comment on column fs_fiadb.tree_grm_component.plt_cn
  is 'Foreign key to NIMS_PLOT_TBL CN';
comment on column fs_fiadb.tree_grm_component.statecd
  is 'State Code';
comment on column fs_fiadb.tree_grm_component.dia_begin
  is 'Diameter at beginning of remeasurement period';
comment on column fs_fiadb.tree_grm_component.dia_midpt
  is 'Diameter at end of remeasurement period';
comment on column fs_fiadb.tree_grm_component.dia_end
  is 'Diameter at midpoint of remeasurement period';
comment on column fs_fiadb.tree_grm_component.ann_dia_growth
  is 'Computed annual dia growth';
comment on column fs_fiadb.tree_grm_component.ann_ht_growth
  is 'Computed annual ht growth';
comment on column fs_fiadb.tree_grm_component.subptyp_begin
  is 'Subplot type code at beginning of remeasurement period';
comment on column fs_fiadb.tree_grm_component.subptyp_midpt
  is 'Subplot type code at mid-point of remeasurement period';
comment on column fs_fiadb.tree_grm_component.subptyp_end
  is 'Subplot type code at end of remeasurement period';
comment on column fs_fiadb.tree_grm_component.micr_component_al_forest
  is 'Microplot growth component for all live trees on forest land';
comment on column fs_fiadb.tree_grm_component.micr_subptyp_grm_al_forest
  is 'Plot type used for GRM estimates that include the microplot, all live trees on forest land';
comment on column fs_fiadb.tree_grm_component.micr_tpagrow_unadj_al_forest
  is 'Trees per acre used for growth of all live trees on forest land, for estimates that include the microplot, before adjusting for out of population conditions';
comment on column fs_fiadb.tree_grm_component.micr_tparemv_unadj_al_forest
  is 'Trees per acre used for removals of all live trees on forest land, for estimates that include the microplot, before adjusting for out of population conditions';
comment on column fs_fiadb.tree_grm_component.micr_tpamort_unadj_al_forest
  is 'Trees per acre used for mortality of all live trees on forest land, for estimates that include the microplot, before adjusting for out of population conditions';
comment on column fs_fiadb.tree_grm_component.subp_component_al_forest
  is 'Subplot growth component for all live trees on forest land';
comment on column fs_fiadb.tree_grm_component.subp_subptyp_grm_al_forest
  is 'Plot type used for GRM estimates that exclude the microplot, all live trees on forest land';
comment on column fs_fiadb.tree_grm_component.subp_tpagrow_unadj_al_forest
  is 'Trees per acre used for growth of all live trees on forest land, for estimates that exclude the microplot, before adjusting for out of population conditions';
comment on column fs_fiadb.tree_grm_component.subp_tparemv_unadj_al_forest
  is 'Trees per acre used for removals of all live trees on forest land, for estimates that exclude the microplot, before adjusting for out of population conditions';
comment on column fs_fiadb.tree_grm_component.subp_tpamort_unadj_al_forest
  is 'Trees per acre used for mortality of all live trees on forest land, for estimates that exclude the microplot, before adjusting for out of population conditions';
comment on column fs_fiadb.tree_grm_component.subp_component_gs_forest
  is 'Subplot growth component for growing-stock trees on forest land';
comment on column fs_fiadb.tree_grm_component.subp_subptyp_grm_gs_forest
  is 'Plot type used for GRM estimates that exclude the microplot, growing-stock trees on forest land';
comment on column fs_fiadb.tree_grm_component.subp_tpagrow_unadj_gs_forest
  is 'Trees per acre used for growth of growing-stock trees on forest land, for estimates that exclude the microplot, before adjusting for out of population conditions';
comment on column fs_fiadb.tree_grm_component.subp_tparemv_unadj_gs_forest
  is 'Trees per acre used for removals of grwoing-stock trees on forest land, for estimates that exclude the microplot, before adjusting for out of population conditions';
comment on column fs_fiadb.tree_grm_component.subp_tpamort_unadj_gs_forest
  is 'Trees per acre used for mortality of growing-stock trees on forest land, for estimates that exclude the microplot, before adjusting for out of population conditions';
comment on column fs_fiadb.tree_grm_component.subp_component_sl_forest
  is 'Subplot growth component for sawtimber trees on forest land';
comment on column fs_fiadb.tree_grm_component.subp_subptyp_grm_sl_forest
  is 'Plot type used for GRM estimates that exclude the microplot, sawtimber trees on forest land';
comment on column fs_fiadb.tree_grm_component.subp_tpagrow_unadj_sl_forest
  is 'Trees per acre used for growth of sawtimber trees on forest land, for estimates that exclude the microplot, before adjusting for out of population conditions';
comment on column fs_fiadb.tree_grm_component.subp_tparemv_unadj_sl_forest
  is 'Trees per acre used for removals of sawtimber trees on forest land, for estimates that exclude the microplot, before adjusting for out of population conditions';
comment on column fs_fiadb.tree_grm_component.subp_tpamort_unadj_sl_forest
  is 'Trees per acre used for mortality of sawtimber trees on forest land, for estimates that exclude the microplot, before adjusting for out of population conditions';
comment on column fs_fiadb.tree_grm_component.micr_component_al_timber
  is 'Microplot growth component for all live trees on timberland';
comment on column fs_fiadb.tree_grm_component.micr_subptyp_grm_al_timber
  is 'Plot type used for GRM estimates that include the microplot, all live trees on timberland';
comment on column fs_fiadb.tree_grm_component.micr_tpagrow_unadj_al_timber
  is 'Trees per acre used for growth of all live trees on timberland, for estimates that include the microplot, before adjusting for out of population conditions';
comment on column fs_fiadb.tree_grm_component.micr_tparemv_unadj_al_timber
  is 'Trees per acre used for removals of all live trees on timberland, for estimates that include the microplot, before adjusting for out of population conditions';
comment on column fs_fiadb.tree_grm_component.micr_tpamort_unadj_al_timber
  is 'Trees per acre used for mortality of all live trees on timberland, for estimates that include the microplot, before adjusting for out of population conditions';
comment on column fs_fiadb.tree_grm_component.subp_component_al_timber
  is 'Subplot growth component for all live trees on timberland';
comment on column fs_fiadb.tree_grm_component.subp_subptyp_grm_al_timber
  is 'Plot type used for GRM estimates that exclude the microplot, all live trees on timberland';
comment on column fs_fiadb.tree_grm_component.subp_tpagrow_unadj_al_timber
  is 'Trees per acre used for growth of all live trees on timberland, for estimates that exclude the microplot, before adjusting for out of population conditions';
comment on column fs_fiadb.tree_grm_component.subp_tparemv_unadj_al_timber
  is 'Trees per acre used for removals of all live trees on timberland, for estimates that exclude the microplot, before adjusting for out of population conditions';
comment on column fs_fiadb.tree_grm_component.subp_tpamort_unadj_al_timber
  is 'Trees per acre used for mortality of all live trees on timberland, for estimates that exclude the microplot, before adjusting for out of population conditions';
comment on column fs_fiadb.tree_grm_component.subp_component_gs_timber
  is 'Subplot growth component for growing-stock trees on timberland';
comment on column fs_fiadb.tree_grm_component.subp_subptyp_grm_gs_timber
  is 'Plot type used for GRM estimates that exclude the microplot, growing-stock trees on timberland';
comment on column fs_fiadb.tree_grm_component.subp_tpagrow_unadj_gs_timber
  is 'Trees per acre used for growth of growing-stock trees on timberland, for estimates that exclude the microplot, before adjusting for out of population conditions';
comment on column fs_fiadb.tree_grm_component.subp_tparemv_unadj_gs_timber
  is 'Trees per acre used for removals of growing-stock trees on timberland, for estimates that exclude the microplot, before adjusting for out of population conditions';
comment on column fs_fiadb.tree_grm_component.subp_tpamort_unadj_gs_timber
  is 'Trees per acre used for mortality of growing-stock trees on timberland, for estimates that exclude the microplot, before adjusting for out of population conditions';
comment on column fs_fiadb.tree_grm_component.subp_component_sl_timber
  is 'Subplot growth component for sawtimber trees on timberland';
comment on column fs_fiadb.tree_grm_component.subp_subptyp_grm_sl_timber
  is 'Plot type used for GRM estimates that exclude the microplot, sawtimber trees on timberland';
comment on column fs_fiadb.tree_grm_component.subp_tpagrow_unadj_sl_timber
  is 'Trees per acre used for growth of sawtimber trees on timberland, for estimates that exclude the microplot, before adjusting for out of population conditions';
comment on column fs_fiadb.tree_grm_component.subp_tparemv_unadj_sl_timber
  is 'Trees per acre used for removals of sawtimber trees on timberland, for estimates that exclude the microplot, before adjusting for out of population conditions';
comment on column fs_fiadb.tree_grm_component.subp_tpamort_unadj_sl_timber
  is 'Trees per acre used for mortality of sawtimber trees on timberland, for estimates that exclude the microplot, before adjusting for out of population conditions';
comment on column fs_fiadb.tree_grm_component.growtsal_forest
  is 'Net annual total stem sound cubic-foot growth of live tree on forest land.';
comment on column fs_fiadb.tree_grm_component.growcfal_forest
  is 'Net annual merchantable sound cubic-foot growth of live tree on forest land.';
comment on column fs_fiadb.tree_grm_component.growcfgs_forest
  is 'Net annual merchantable cubic-foot growth of growing-stock trees on forest land.';
comment on column fs_fiadb.tree_grm_component.growbfsl_forest
  is 'Net annual merchantable board-foot growth of sawtimber tree on forest land.';
comment on column fs_fiadb.tree_grm_component.remvtsal_forest
  is 'Sound total stem cubic-foot volume of the tree for removal purposes on all forest land.';
comment on column fs_fiadb.tree_grm_component.remvcfal_forest
  is 'Sound merchantble cubic-foot volume of the tree for removal purposes on all forest land.';
comment on column fs_fiadb.tree_grm_component.remvcfgs_forest
  is 'Net merchantable cubic-foot volume of a growing-stock tree for removal purposes on all forest land.';
comment on column fs_fiadb.tree_grm_component.remvbfsl_forest
  is 'Board-foot volume of a sawtimber tree for removal purposes on forest land.';
comment on column fs_fiadb.tree_grm_component.morttsal_forest
  is 'Sound total stem cubic-foot volume of a tree for mortality purposes on forest land.';
comment on column fs_fiadb.tree_grm_component.mortcfal_forest
  is 'Sound merchantable cubic-foot volume of a tree for mortality purposes on forest land.';
comment on column fs_fiadb.tree_grm_component.mortcfgs_forest
  is 'Net merchantable cubic-foot volume of a growing-stock tree for mortality purposes on forest land.';
comment on column fs_fiadb.tree_grm_component.mortbfsl_forest
  is 'Board-foot volume of a sawtimber tree for mortality purposes on forest land.';
comment on column fs_fiadb.tree_grm_component.growtsal_timber
  is 'Net annual total stem sound cubic-foot growth of live tree on timberland.';
comment on column fs_fiadb.tree_grm_component.growcfal_timber
  is 'Net annual merchantable sound cubic-foot growth of live tree on timberland.';
comment on column fs_fiadb.tree_grm_component.growcfgs_timber
  is 'Net annual merchantable cubic-foot growth of growing-stock trees on timberland.';
comment on column fs_fiadb.tree_grm_component.growbfsl_timber
  is 'Net annual merchantable board-foot growth of sawtimber tree on timberland';
comment on column fs_fiadb.tree_grm_component.remvtsal_timber
  is 'Sound total stem cubic-foot volume of the tree for removal purposes on all timberland.';
comment on column fs_fiadb.tree_grm_component.remvcfal_timber
  is 'Sound merchantble cubic-foot volume of the tree for removal purposes on all timberland.';
comment on column fs_fiadb.tree_grm_component.remvcfgs_timber
  is 'Net merchantable cubic-foot volume of a growing-stock tree for removal purposes on all timberland.';
comment on column fs_fiadb.tree_grm_component.remvbfsl_timber
  is 'Board-foot volume of a sawtimber tree for removal purposes on timberland.';
comment on column fs_fiadb.tree_grm_component.morttsal_timber
  is 'Sound total stem cubic-foot volume of a tree for mortality purposes on timberland.';
comment on column fs_fiadb.tree_grm_component.mortcfal_timber
  is 'Sound merchantable cubic-foot volume of a tree for mortality purposes on timberland.';
comment on column fs_fiadb.tree_grm_component.mortcfgs_timber
  is 'Net merchantable cubic-foot volume of a growing-stock tree for mortality purposes on timberland';
comment on column fs_fiadb.tree_grm_component.mortbfsl_timber
  is 'Board-foot volume of a sawtimber tree for mortality purposes on timberland.';
comment on column fs_fiadb.tree_grm_component.created_date
  is 'Created Date';
comment on column fs_fiadb.tree_grm_component.modified_date
  is 'Modified Date';
create index TRE_GRM_CMP_IND1 on FS_FIADB.TREE_GRM_COMPONENT (PLT_CN);
create index TRE_GRM_CMP_IND3 on FS_FIADB.TREE_GRM_COMPONENT (STATECD);
create index TRE_GRM_CMP_IND2 on FS_FIADB.TREE_GRM_COMPONENT (PREV_TRE_CN);
alter table FS_FIADB.TREE_GRM_COMPONENT add constraint TRE_GRM_CMP_PK primary key (TRE_CN);
alter table FS_FIADB.TREE_GRM_COMPONENT add constraint TRE_GRM_CMP_FK foreign key (TRE_CN) references FS_FIADB.TREE (CN);