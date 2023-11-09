-- Create table
create table FS_FIADB.TREE_GRM_COMPONENT
(
  tre_cn                       VARCHAR(34) not null,
  prev_tre_cn                  VARCHAR(34),
  plt_cn                       VARCHAR(34) not null,
  statecd                      DOUBLE PRECISION not null,
  dia_begin                    DECIMAL(5,2),
  dia_midpt                    DECIMAL(5,2),
  dia_end                      DECIMAL(5,2),
  ann_dia_growth               DECIMAL(5,2),
  ann_ht_growth                DECIMAL(5,2),
  subptyp_begin                SMALLINT,
  subptyp_midpt                SMALLINT,
  subptyp_end                  SMALLINT,
  micr_component_al_forest     VARCHAR(15),
  micr_subptyp_grm_al_forest   SMALLINT,
  micr_tpagrow_unadj_al_forest DECIMAL(11,6),
  micr_tparemv_unadj_al_forest DECIMAL(11,6),
  micr_tpamort_unadj_al_forest DECIMAL(11,6),
  subp_component_al_forest     VARCHAR(15),
  subp_subptyp_grm_al_forest   SMALLINT,
  subp_tpagrow_unadj_al_forest DECIMAL(11,6),
  subp_tparemv_unadj_al_forest DECIMAL(11,6),
  subp_tpamort_unadj_al_forest DECIMAL(11,6),
  subp_component_gs_forest     VARCHAR(15),
  subp_subptyp_grm_gs_forest   SMALLINT,
  subp_tpagrow_unadj_gs_forest DECIMAL(11,6),
  subp_tparemv_unadj_gs_forest DECIMAL(11,6),
  subp_tpamort_unadj_gs_forest DECIMAL(11,6),
  subp_component_sl_forest     VARCHAR(15),
  subp_subptyp_grm_sl_forest   SMALLINT,
  subp_tpagrow_unadj_sl_forest DECIMAL(11,6),
  subp_tparemv_unadj_sl_forest DECIMAL(11,6),
  subp_tpamort_unadj_sl_forest DECIMAL(11,6),
  micr_component_al_timber     VARCHAR(15),
  micr_subptyp_grm_al_timber   SMALLINT,
  micr_tpagrow_unadj_al_timber DECIMAL(11,6),
  micr_tparemv_unadj_al_timber DECIMAL(11,6),
  micr_tpamort_unadj_al_timber DECIMAL(11,6),
  subp_component_al_timber     VARCHAR(15),
  subp_subptyp_grm_al_timber   SMALLINT,
  subp_tpagrow_unadj_al_timber DECIMAL(11,6),
  subp_tparemv_unadj_al_timber DECIMAL(11,6),
  subp_tpamort_unadj_al_timber DECIMAL(11,6),
  subp_component_gs_timber     VARCHAR(15),
  subp_subptyp_grm_gs_timber   SMALLINT,
  subp_tpagrow_unadj_gs_timber DECIMAL(11,6),
  subp_tparemv_unadj_gs_timber DECIMAL(11,6),
  subp_tpamort_unadj_gs_timber DECIMAL(11,6),
  subp_component_sl_timber     VARCHAR(15),
  subp_subptyp_grm_sl_timber   SMALLINT,
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
  created_by                   VARCHAR(30),
  created_date                 TIMESTAMP(0),
  created_in_instance          VARCHAR(6),
  modified_by                  VARCHAR(30),
  modified_date                TIMESTAMP(0),
  modified_in_instance         VARCHAR(6)
)
;
-- Add comments to the columns 
comment on column FS_FIADB.TREE_GRM_COMPONENT.tre_cn
  is 'Foreign key to TREE table CN';
comment on column FS_FIADB.TREE_GRM_COMPONENT.prev_tre_cn
  is 'Foreign key to time 1 tree CN';
comment on column FS_FIADB.TREE_GRM_COMPONENT.plt_cn
  is 'Foreign key to NIMS_PLOT_TBL CN';
comment on column FS_FIADB.TREE_GRM_COMPONENT.statecd
  is 'State Code';
comment on column FS_FIADB.TREE_GRM_COMPONENT.dia_begin
  is 'Diameter at beginning of remeasurement period';
comment on column FS_FIADB.TREE_GRM_COMPONENT.dia_midpt
  is 'Diameter at end of remeasurement period';
comment on column FS_FIADB.TREE_GRM_COMPONENT.dia_end
  is 'Diameter at midpoint of remeasurement period';
comment on column FS_FIADB.TREE_GRM_COMPONENT.ann_dia_growth
  is 'Computed annual dia growth';
comment on column FS_FIADB.TREE_GRM_COMPONENT.ann_ht_growth
  is 'Computed annual ht growth';
comment on column FS_FIADB.TREE_GRM_COMPONENT.subptyp_begin
  is 'Subplot type code at beginning of remeasurement period';
comment on column FS_FIADB.TREE_GRM_COMPONENT.subptyp_midpt
  is 'Subplot type code at mid-point of remeasurement period';
comment on column FS_FIADB.TREE_GRM_COMPONENT.subptyp_end
  is 'Subplot type code at end of remeasurement period';
comment on column FS_FIADB.TREE_GRM_COMPONENT.micr_component_al_forest
  is 'Microplot growth component for all live trees on forest land';
comment on column FS_FIADB.TREE_GRM_COMPONENT.micr_subptyp_grm_al_forest
  is 'Plot type used for GRM estimates that include the microplot, all live trees on forest land';
comment on column FS_FIADB.TREE_GRM_COMPONENT.micr_tpagrow_unadj_al_forest
  is 'Trees per acre used for growth of all live trees on forest land, for estimates that include the microplot, before adjusting for out of population conditions';
comment on column FS_FIADB.TREE_GRM_COMPONENT.micr_tparemv_unadj_al_forest
  is 'Trees per acre used for removals of all live trees on forest land, for estimates that include the microplot, before adjusting for out of population conditions';
comment on column FS_FIADB.TREE_GRM_COMPONENT.micr_tpamort_unadj_al_forest
  is 'Trees per acre used for mortality of all live trees on forest land, for estimates that include the microplot, before adjusting for out of population conditions';
comment on column FS_FIADB.TREE_GRM_COMPONENT.subp_component_al_forest
  is 'Subplot growth component for all live trees on forest land';
comment on column FS_FIADB.TREE_GRM_COMPONENT.subp_subptyp_grm_al_forest
  is 'Plot type used for GRM estimates that exclude the microplot, all live trees on forest land';
comment on column FS_FIADB.TREE_GRM_COMPONENT.subp_tpagrow_unadj_al_forest
  is 'Trees per acre used for growth of all live trees on forest land, for estimates that exclude the microplot, before adjusting for out of population conditions';
comment on column FS_FIADB.TREE_GRM_COMPONENT.subp_tparemv_unadj_al_forest
  is 'Trees per acre used for removals of all live trees on forest land, for estimates that exclude the microplot, before adjusting for out of population conditions';
comment on column FS_FIADB.TREE_GRM_COMPONENT.subp_tpamort_unadj_al_forest
  is 'Trees per acre used for mortality of all live trees on forest land, for estimates that exclude the microplot, before adjusting for out of population conditions';
comment on column FS_FIADB.TREE_GRM_COMPONENT.subp_component_gs_forest
  is 'Subplot growth component for growing-stock trees on forest land';
comment on column FS_FIADB.TREE_GRM_COMPONENT.subp_subptyp_grm_gs_forest
  is 'Plot type used for GRM estimates that exclude the microplot, growing-stock trees on forest land';
comment on column FS_FIADB.TREE_GRM_COMPONENT.subp_tpagrow_unadj_gs_forest
  is 'Trees per acre used for growth of growing-stock trees on forest land, for estimates that exclude the microplot, before adjusting for out of population conditions';
comment on column FS_FIADB.TREE_GRM_COMPONENT.subp_tparemv_unadj_gs_forest
  is 'Trees per acre used for removals of grwoing-stock trees on forest land, for estimates that exclude the microplot, before adjusting for out of population conditions';
comment on column FS_FIADB.TREE_GRM_COMPONENT.subp_tpamort_unadj_gs_forest
  is 'Trees per acre used for mortality of growing-stock trees on forest land, for estimates that exclude the microplot, before adjusting for out of population conditions';
comment on column FS_FIADB.TREE_GRM_COMPONENT.subp_component_sl_forest
  is 'Subplot growth component for sawtimber trees on forest land';
comment on column FS_FIADB.TREE_GRM_COMPONENT.subp_subptyp_grm_sl_forest
  is 'Plot type used for GRM estimates that exclude the microplot, sawtimber trees on forest land';
comment on column FS_FIADB.TREE_GRM_COMPONENT.subp_tpagrow_unadj_sl_forest
  is 'Trees per acre used for growth of sawtimber trees on forest land, for estimates that exclude the microplot, before adjusting for out of population conditions';
comment on column FS_FIADB.TREE_GRM_COMPONENT.subp_tparemv_unadj_sl_forest
  is 'Trees per acre used for removals of sawtimber trees on forest land, for estimates that exclude the microplot, before adjusting for out of population conditions';
comment on column FS_FIADB.TREE_GRM_COMPONENT.subp_tpamort_unadj_sl_forest
  is 'Trees per acre used for mortality of sawtimber trees on forest land, for estimates that exclude the microplot, before adjusting for out of population conditions';
comment on column FS_FIADB.TREE_GRM_COMPONENT.micr_component_al_timber
  is 'Microplot growth component for all live trees on timberland';
comment on column FS_FIADB.TREE_GRM_COMPONENT.micr_subptyp_grm_al_timber
  is 'Plot type used for GRM estimates that include the microplot, all live trees on timberland';
comment on column FS_FIADB.TREE_GRM_COMPONENT.micr_tpagrow_unadj_al_timber
  is 'Trees per acre used for growth of all live trees on timberland, for estimates that include the microplot, before adjusting for out of population conditions';
comment on column FS_FIADB.TREE_GRM_COMPONENT.micr_tparemv_unadj_al_timber
  is 'Trees per acre used for removals of all live trees on timberland, for estimates that include the microplot, before adjusting for out of population conditions';
comment on column FS_FIADB.TREE_GRM_COMPONENT.micr_tpamort_unadj_al_timber
  is 'Trees per acre used for mortality of all live trees on timberland, for estimates that include the microplot, before adjusting for out of population conditions';
comment on column FS_FIADB.TREE_GRM_COMPONENT.subp_component_al_timber
  is 'Subplot growth component for all live trees on timberland';
comment on column FS_FIADB.TREE_GRM_COMPONENT.subp_subptyp_grm_al_timber
  is 'Plot type used for GRM estimates that exclude the microplot, all live trees on timberland';
comment on column FS_FIADB.TREE_GRM_COMPONENT.subp_tpagrow_unadj_al_timber
  is 'Trees per acre used for growth of all live trees on timberland, for estimates that exclude the microplot, before adjusting for out of population conditions';
comment on column FS_FIADB.TREE_GRM_COMPONENT.subp_tparemv_unadj_al_timber
  is 'Trees per acre used for removals of all live trees on timberland, for estimates that exclude the microplot, before adjusting for out of population conditions';
comment on column FS_FIADB.TREE_GRM_COMPONENT.subp_tpamort_unadj_al_timber
  is 'Trees per acre used for mortality of all live trees on timberland, for estimates that exclude the microplot, before adjusting for out of population conditions';
comment on column FS_FIADB.TREE_GRM_COMPONENT.subp_component_gs_timber
  is 'Subplot growth component for growing-stock trees on timberland';
comment on column FS_FIADB.TREE_GRM_COMPONENT.subp_subptyp_grm_gs_timber
  is 'Plot type used for GRM estimates that exclude the microplot, growing-stock trees on timberland';
comment on column FS_FIADB.TREE_GRM_COMPONENT.subp_tpagrow_unadj_gs_timber
  is 'Trees per acre used for growth of growing-stock trees on timberland, for estimates that exclude the microplot, before adjusting for out of population conditions';
comment on column FS_FIADB.TREE_GRM_COMPONENT.subp_tparemv_unadj_gs_timber
  is 'Trees per acre used for removals of growing-stock trees on timberland, for estimates that exclude the microplot, before adjusting for out of population conditions';
comment on column FS_FIADB.TREE_GRM_COMPONENT.subp_tpamort_unadj_gs_timber
  is 'Trees per acre used for mortality of growing-stock trees on timberland, for estimates that exclude the microplot, before adjusting for out of population conditions';
comment on column FS_FIADB.TREE_GRM_COMPONENT.subp_component_sl_timber
  is 'Subplot growth component for sawtimber trees on timberland';
comment on column FS_FIADB.TREE_GRM_COMPONENT.subp_subptyp_grm_sl_timber
  is 'Plot type used for GRM estimates that exclude the microplot, sawtimber trees on timberland';
comment on column FS_FIADB.TREE_GRM_COMPONENT.subp_tpagrow_unadj_sl_timber
  is 'Trees per acre used for growth of sawtimber trees on timberland, for estimates that exclude the microplot, before adjusting for out of population conditions';
comment on column FS_FIADB.TREE_GRM_COMPONENT.subp_tparemv_unadj_sl_timber
  is 'Trees per acre used for removals of sawtimber trees on timberland, for estimates that exclude the microplot, before adjusting for out of population conditions';
comment on column FS_FIADB.TREE_GRM_COMPONENT.subp_tpamort_unadj_sl_timber
  is 'Trees per acre used for mortality of sawtimber trees on timberland, for estimates that exclude the microplot, before adjusting for out of population conditions';
comment on column FS_FIADB.TREE_GRM_COMPONENT.growcfal_forest
  is 'Net annual merchantable sound cubic-foot growth of live tree on forest land.';
comment on column FS_FIADB.TREE_GRM_COMPONENT.growcfgs_forest
  is 'Net annual merchantable cubic-foot growth of growing-stock trees on forest land.';
comment on column FS_FIADB.TREE_GRM_COMPONENT.growbfsl_forest
  is 'Net annual merchantable board-foot growth of sawtimber tree on forest land.';
comment on column FS_FIADB.TREE_GRM_COMPONENT.remvcfal_forest
  is 'Sound merchantble cubic-foot volume of the tree for removal purposes on all forest land.';
comment on column FS_FIADB.TREE_GRM_COMPONENT.remvcfgs_forest
  is 'Net merchantable cubic-foot volume of a growing-stock tree for removal purposes on all forest land.';
comment on column FS_FIADB.TREE_GRM_COMPONENT.remvbfsl_forest
  is 'Board-foot volume of a sawtimber tree for removal purposes on forest land.';
comment on column FS_FIADB.TREE_GRM_COMPONENT.mortcfal_forest
  is 'Sound merchantable cubic-foot volume of a tree for mortality purposes on forest land.';
comment on column FS_FIADB.TREE_GRM_COMPONENT.mortcfgs_forest
  is 'Net merchantable cubic-foot volume of a growing-stock tree for mortality purposes on forest land.';
comment on column FS_FIADB.TREE_GRM_COMPONENT.mortbfsl_forest
  is 'Board-foot volume of a sawtimber tree for mortality purposes on forest land.';
comment on column FS_FIADB.TREE_GRM_COMPONENT.growcfal_timber
  is 'Net annual merchantable sound cubic-foot growth of live tree on timberland.';
comment on column FS_FIADB.TREE_GRM_COMPONENT.growcfgs_timber
  is 'Net annual merchantable cubic-foot growth of growing-stock trees on timberland.';
comment on column FS_FIADB.TREE_GRM_COMPONENT.growbfsl_timber
  is 'Net annual merchantable board-foot growth of sawtimber tree on timberland';
comment on column FS_FIADB.TREE_GRM_COMPONENT.remvcfal_timber
  is 'Sound merchantble cubic-foot volume of the tree for removal purposes on all timberland.';
comment on column FS_FIADB.TREE_GRM_COMPONENT.remvcfgs_timber
  is 'Net merchantable cubic-foot volume of a growing-stock tree for removal purposes on all timberland.';
comment on column FS_FIADB.TREE_GRM_COMPONENT.remvbfsl_timber
  is 'Board-foot volume of a sawtimber tree for removal purposes on timberland.';
comment on column FS_FIADB.TREE_GRM_COMPONENT.mortcfal_timber
  is 'Sound merchantable cubic-foot volume of a tree for mortality purposes on timberland.';
comment on column FS_FIADB.TREE_GRM_COMPONENT.mortcfgs_timber
  is 'Net merchantable cubic-foot volume of a growing-stock tree for mortality purposes on timberland';
comment on column FS_FIADB.TREE_GRM_COMPONENT.mortbfsl_timber
  is 'Board-foot volume of a sawtimber tree for mortality purposes on timberland.';
comment on column FS_FIADB.TREE_GRM_COMPONENT.created_by
  is 'Created by';
comment on column FS_FIADB.TREE_GRM_COMPONENT.created_date
  is 'Created Date';
comment on column FS_FIADB.TREE_GRM_COMPONENT.created_in_instance
  is 'Created in Instance';
comment on column FS_FIADB.TREE_GRM_COMPONENT.modified_by
  is 'Modified by';
comment on column FS_FIADB.TREE_GRM_COMPONENT.modified_date
  is 'Modified Date';
comment on column FS_FIADB.TREE_GRM_COMPONENT.modified_in_instance
  is 'Modified in Instance';
-- Create/Recreate indexes 
create index TRE_GRM_CMP_IND1 on FS_FIADB.TREE_GRM_COMPONENT (PLT_CN);
create index TRE_GRM_CMP_IND2 on FS_FIADB.TREE_GRM_COMPONENT (PREV_TRE_CN);
create index TRE_GRM_CMP_IND3 on FS_FIADB.TREE_GRM_COMPONENT (STATECD);
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.TREE_GRM_COMPONENT
  add constraint TRE_GRM_CMP_PK primary key (TRE_CN);
alter table FS_FIADB.TREE_GRM_COMPONENT
  add constraint TRE_GRM_CMP_FK foreign key (TRE_CN)
  references FS_FIADB.TREE (CN) on delete cascade;
