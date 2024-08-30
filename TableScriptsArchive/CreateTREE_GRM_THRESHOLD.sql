-- Create table
create table FS_FIADB.TREE_GRM_THRESHOLD
(
  tre_cn               VARCHAR(34) not null,
  prev_tre_cn          VARCHAR(34),
  plt_cn               VARCHAR(34),
  statecd              SMALLINT,
  threshold_type       VARCHAR(10),
  subptyp              DOUBLE PRECISION,
  spcd                 DOUBLE PRECISION,
  statuscd             SMALLINT,
  dia                  DECIMAL(5,2),
  ht                   SMALLINT,
  actualht             SMALLINT,
  cr                   SMALLINT,
  standing_dead_cd     SMALLINT,
  diahtcd              SMALLINT,
  cull                 SMALLINT,
  roughcull            SMALLINT,
  cullform             SMALLINT,
  cullmstop            SMALLINT,
  decaycd              SMALLINT,
  treeclcd             SMALLINT,
  htdmp                DECIMAL(3,1),
  wdldstem             SMALLINT,
  stdorgcd             SMALLINT,
  sitree               SMALLINT,
  balive               DECIMAL(9,4),
  VOLTSGRS             DOUBLE PRECISION,
  VOLTSGRS_BARK        DOUBLE PRECISION,
  VOLTSSND             DOUBLE PRECISION,
  VOLTSSND_BARK        DOUBLE PRECISION,
  VOLCFGRS_STUMP       DOUBLE PRECISION,
  VOLCFGRS_STUMP_BARK  DOUBLE PRECISION,
  VOLCFSND_STUMP       DOUBLE PRECISION,
  VOLCFSND_STUMP_BARK  DOUBLE PRECISION,
  VOLCFGRS             DOUBLE PRECISION,
  VOLCFGRS_BARK        DOUBLE PRECISION,
  VOLCFGRS_TOP         DOUBLE PRECISION,
  VOLCFGRS_TOP_BARK    DOUBLE PRECISION,
  VOLCFSND             DOUBLE PRECISION,
  VOLCFSND_BARK        DOUBLE PRECISION,
  VOLCFSND_TOP         DOUBLE PRECISION,
  VOLCFSND_TOP_BARK    DOUBLE PRECISION,
  VOLCFNET             DOUBLE PRECISION,
  VOLCFNET_BARK        DOUBLE PRECISION,
  VOLCSGRS             DOUBLE PRECISION,
  VOLCSGRS_BARK        DOUBLE PRECISION,
  VOLCSSND             DOUBLE PRECISION,
  VOLCSSND_BARK        DOUBLE PRECISION,
  VOLCSNET             DOUBLE PRECISION,
  VOLCSNET_BARK        DOUBLE PRECISION,
  VOLBFGRS             DOUBLE PRECISION,
  VOLBFNET             DOUBLE PRECISION,
  VOLBSGRS             DOUBLE PRECISION,
  VOLBSNET             DOUBLE PRECISION,
  DRYBIO_STEM          DOUBLE PRECISION,
  DRYBIO_STEM_BARK     DOUBLE PRECISION,
  DRYBIO_STUMP         DOUBLE PRECISION,
  DRYBIO_STUMP_BARK    DOUBLE PRECISION,
  DRYBIO_BOLE          DOUBLE PRECISION,
  DRYBIO_BOLE_BARK     DOUBLE PRECISION,
  DRYBIO_BRANCH        DOUBLE PRECISION,
  DRYBIO_FOLIAGE       DOUBLE PRECISION,
  DRYBIO_AG            DOUBLE PRECISION,
  DRYBIO_BG            DOUBLE PRECISION,
  CARBON_AG            DOUBLE PRECISION,
  CARBON_BG            DOUBLE PRECISION,
  DRYBIO_SAWLOG        DOUBLE PRECISION,
  DRYBIO_SAWLOG_BARK   DOUBLE PRECISION,
  created_by           VARCHAR(30),
  created_date         TIMESTAMP(0),
  created_in_instance  VARCHAR(6),
  modified_by          VARCHAR(30),
  modified_date        TIMESTAMP(0),
  modified_in_instance VARCHAR(6)
);
-- Add comments to the columns
comment on column FS_FIADB.TREE_GRM_THRESHOLD.tre_cn
  is 'Foreign key to TREE table CN';
comment on column FS_FIADB.TREE_GRM_THRESHOLD.threshold_type
  is 'Diameter threshold type: MICROPLOT, SUBPLOT, MACROPLOT, or SAWLOG';
comment on column FS_FIADB.TREE_GRM_THRESHOLD.plt_cn
  is 'Foreign key to NIMS_PLOT_TBL CN';
comment on column FS_FIADB.TREE_GRM_THRESHOLD.statecd
  is 'State Code';
comment on column FS_FIADB.TREE_GRM_THRESHOLD.dia
  is 'Diameter';
comment on column FS_FIADB.TREE_GRM_THRESHOLD.diahtcd
  is 'Height of diameter measurement code';
comment on column FS_FIADB.TREE_GRM_THRESHOLD.treeclcd
  is 'Tree class code';
comment on column FS_FIADB.TREE_GRM_THRESHOLD.subptyp
  is 'Subplot type code';
comment on column FS_FIADB.TREE_GRM_THRESHOLD.ht
  is 'Height';
comment on column FS_FIADB.TREE_GRM_THRESHOLD.actualht
  is 'Actual height of tree';
comment on column FS_FIADB.TREE_GRM_THRESHOLD.volcfsnd
  is 'Sound cubic-foot volume';
comment on column FS_FIADB.TREE_GRM_THRESHOLD.volcfnet
  is 'Net cubic-foot volume';
comment on column FS_FIADB.TREE_GRM_THRESHOLD.volcsnet
  is 'Net cubic-foot volume in the saw-log portion';
comment on column FS_FIADB.TREE_GRM_THRESHOLD.volbfnet
  is 'Net board-foot volume in the saw-log portion';
comment on column FS_FIADB.TREE_GRM_THRESHOLD.drybio_bg
  is 'Below ground dry biomass (pounds)';
comment on column FS_FIADB.TREE_GRM_THRESHOLD.drybio_ag
  is 'Above ground dry biomass (pounds)';
comment on column FS_FIADB.TREE_GRM_THRESHOLD.drybio_stump
  is 'Dry biomass in the stump of trees 5 inches or larger in diameter (pounds)';
comment on column FS_FIADB.TREE_GRM_THRESHOLD.drybio_bole
  is 'Dry biomass in the bole of trees 5 inches or larger in diameter (pounds)';
comment on column FS_FIADB.TREE_GRM_THRESHOLD.drybio_sawlog
  is 'Dry biomass in the sawlog portion (pounds)';
comment on column FS_FIADB.TREE_GRM_THRESHOLD.created_by
  is 'Created by';
comment on column FS_FIADB.TREE_GRM_THRESHOLD.created_date
  is 'Created Date';
comment on column FS_FIADB.TREE_GRM_THRESHOLD.created_in_instance
  is 'Created in Instance';
comment on column FS_FIADB.TREE_GRM_THRESHOLD.modified_by
  is 'Modified by';
comment on column FS_FIADB.TREE_GRM_THRESHOLD.modified_date
  is 'Modified Date';
comment on column FS_FIADB.TREE_GRM_THRESHOLD.modified_in_instance
  is 'Modified in Instance';
comment on column FS_FIADB.TREE_GRM_THRESHOLD.VOLBSNET
  is 'Net board-foot volume in the sawlog portion of a sawtimber tree at the threshold (Scribner Rule)';
-- Create/Recreate indexes
create index TRE_GRM_THRSHLD_IND1 on FS_FIADB.TREE_GRM_THRESHOLD (PLT_CN);
create index TRE_GRM_THRSHLD_IND3 on FS_FIADB.TREE_GRM_THRESHOLD (STATECD);
-- Create/Recreate primary, unique and foreign key constraints
alter table FS_FIADB.TREE_GRM_THRESHOLD
  add constraint TRE_GRM_THRSHLD_PK primary key (TRE_CN, THRESHOLD_TYPE);
alter table FS_FIADB.TREE_GRM_THRESHOLD
  add constraint TRE_GRM_THRSHLD_UK unique (TRE_CN, THRESHOLD_TYPE);
alter table FS_FIADB.TREE_GRM_THRESHOLD
  add constraint TRE_GRM_THRSHLD_FK foreign key (TRE_CN)
  references FS_FIADB.TREE (CN);
