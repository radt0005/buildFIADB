CREATE TABLE fs_fiadb.tree_grm_midpt
(
tre_cn               VARCHAR(34) NOT NULL,
prev_tre_cn          VARCHAR(34),
plt_cn               VARCHAR(34),
statecd              INTEGER,
subptyp              INTEGER,
spcd                 INTEGER,
statuscd             INTEGER,
dia                  DECIMAL(5,2),
ht                   INTEGER,
actualht             INTEGER,
cr                   INTEGER,
standing_dead_cd     INTEGER,
diahtcd              INTEGER,
cull                 INTEGER,
roughcull            INTEGER,
cullform             INTEGER,
cullmstop            INTEGER,
decaycd              INTEGER,
treeclcd             INTEGER,
htdmp                DECIMAL(3,1),
wdldstem             INTEGER,
stdorgcd             INTEGER,
sitree               INTEGER,
balive               DECIMAL(9,4),
voltsgrs             DECIMAL(13,6),
voltsgrs_bark        DECIMAL(13,6),
voltssnd             DECIMAL(13,6),
voltssnd_bark        DECIMAL(13,6),
volcfgrs_stump       DECIMAL(13,6),
volcfgrs_stump_bark  DECIMAL(13,6),
volcfsnd_stump       DECIMAL(13,6),
volcfsnd_stump_bark  DECIMAL(13,6),
volcfgrs             DECIMAL(13,6),
volcfgrs_bark        DECIMAL(13,6),
volcfgrs_top         DECIMAL(13,6),
volcfgrs_top_bark    DECIMAL(13,6),
volcfsnd             DECIMAL(13,6),
volcfsnd_bark        DECIMAL(13,6),
volcfsnd_top         DECIMAL(13,6),
volcfsnd_top_bark    DECIMAL(13,6),
volcfnet             DECIMAL(13,6),
volcfnet_bark        DECIMAL(13,6),
volcsgrs             DECIMAL(13,6),
volcsgrs_bark        DECIMAL(13,6),
volcssnd             DECIMAL(13,6),
volcssnd_bark        DECIMAL(13,6),
volcsnet             DECIMAL(13,6),
volcsnet_bark        DECIMAL(13,6),
volbfgrs             DECIMAL(13,6),
volbfnet             DECIMAL(13,6),
volbsgrs             DECIMAL(13,6),
volbsnet             DECIMAL(13,6),
drybio_stem          DECIMAL(13,6),
drybio_stem_bark     DECIMAL(13,6),
drybio_stump         DECIMAL(13,6),
drybio_stump_bark    DECIMAL(13,6),
drybio_bole          DECIMAL(13,6),
drybio_bole_bark     DECIMAL(13,6),
drybio_branch        DECIMAL(13,6),
drybio_foliage       DECIMAL(13,6),
drybio_ag            DECIMAL(13,6),
drybio_bg            DECIMAL(13,6),
carbon_ag            DECIMAL(13,6),
carbon_bg            DECIMAL(13,6),
drybio_sawlog        DECIMAL(13,6),
drybio_sawlog_bark   DECIMAL(13,6),
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6)
);
comment on column fs_fiadb.tree_grm_midpt.tre_cn
  is 'Foreign key to TREE table CN';
comment on column fs_fiadb.tree_grm_midpt.prev_tre_cn
  is 'Foreign key to time 1 tree CN';
comment on column fs_fiadb.tree_grm_midpt.plt_cn
  is 'Foreign key to NIMS_PLOT_TBL CN';
comment on column fs_fiadb.tree_grm_midpt.statecd
  is 'State Code';
comment on column fs_fiadb.tree_grm_midpt.subptyp
  is 'Subplot type code';
comment on column fs_fiadb.tree_grm_midpt.spcd
  is 'Species code';
comment on column fs_fiadb.tree_grm_midpt.statuscd
  is 'Tree status code';
comment on column fs_fiadb.tree_grm_midpt.dia
  is 'Diameter ';
comment on column fs_fiadb.tree_grm_midpt.ht
  is 'NA';
comment on column fs_fiadb.tree_grm_midpt.actualht
  is 'NA';
comment on column fs_fiadb.tree_grm_midpt.cr
  is 'Compacted crown ratio';
comment on column fs_fiadb.tree_grm_midpt.standing_dead_cd
  is 'NA';
comment on column fs_fiadb.tree_grm_midpt.diahtcd
  is 'Height of diameter measurement code';
comment on column fs_fiadb.tree_grm_midpt.cull
  is 'Rotten and missing cull percent';
comment on column fs_fiadb.tree_grm_midpt.roughcull
  is 'Rough cull percentage';
comment on column fs_fiadb.tree_grm_midpt.cullform
  is 'Form cull';
comment on column fs_fiadb.tree_grm_midpt.cullmstop
  is 'Missing top cull';
comment on column fs_fiadb.tree_grm_midpt.decaycd
  is 'NA';
comment on column fs_fiadb.tree_grm_midpt.treeclcd
  is 'Tree class code';
comment on column fs_fiadb.tree_grm_midpt.htdmp
  is 'NA';
comment on column fs_fiadb.tree_grm_midpt.wdldstem
  is 'NA';
comment on column fs_fiadb.tree_grm_midpt.stdorgcd
  is 'NA';
comment on column fs_fiadb.tree_grm_midpt.sitree
  is 'Calculated site index';
comment on column fs_fiadb.tree_grm_midpt.balive
  is 'Basal area of all live trees';
comment on column fs_fiadb.tree_grm_midpt.voltsgrs
  is 'Gross total stem wood cubic foot volume.';
comment on column fs_fiadb.tree_grm_midpt.voltsgrs_bark
  is 'Gross total stem bark cubic foot volume.';
comment on column fs_fiadb.tree_grm_midpt.voltssnd
  is 'Sound total stem wood cubic foot volume.';
comment on column fs_fiadb.tree_grm_midpt.voltssnd_bark
  is 'Sound total stem bark cubic foot volume.';
comment on column fs_fiadb.tree_grm_midpt.volcfgrs_stump
  is 'Gross stump wood cubic foot volume for trees 5 inches and larger.';
comment on column fs_fiadb.tree_grm_midpt.volcfgrs_stump_bark
  is 'Gross stump bark cubic foot volume for trees 5 inches and larger.';
comment on column fs_fiadb.tree_grm_midpt.volcfsnd_stump
  is 'Sound stump wood cubic foot volume for trees 5 inches and larger.';
comment on column fs_fiadb.tree_grm_midpt.volcfsnd_stump_bark
  is 'Sound stump bark cubic foot volume for trees 5 inches and larger.';
comment on column fs_fiadb.tree_grm_midpt.volcfgrs
  is 'NA';
comment on column fs_fiadb.tree_grm_midpt.volcfgrs_bark
  is 'Gross cubic-foot bark volume';
comment on column fs_fiadb.tree_grm_midpt.volcfgrs_top
  is 'Gross cubic-foot wood volume in the 4-inch dob to top for trees 5 inches and larger.';
comment on column fs_fiadb.tree_grm_midpt.volcfgrs_top_bark
  is 'Gross cubic-foot bark volume in the 4-inch dob to top for trees 5 inches and larger.';
comment on column fs_fiadb.tree_grm_midpt.volcfsnd
  is 'Sound cubic-foot volume ';
comment on column fs_fiadb.tree_grm_midpt.volcfsnd_bark
  is 'Sound cubic-foot bark volume';
comment on column fs_fiadb.tree_grm_midpt.volcfsnd_top
  is 'Sound cubic-foot wood volume in the 4-inch dob to top for trees 5 inches and larger.';
comment on column fs_fiadb.tree_grm_midpt.volcfsnd_top_bark
  is 'Sound cubic-foot wood volume in the 4-inch dob to top for trees 5 inches and larger.';
comment on column fs_fiadb.tree_grm_midpt.volcfnet
  is 'Net cubic-foot volume ';
comment on column fs_fiadb.tree_grm_midpt.volcfnet_bark
  is 'Net cubic-foot wood volume';
comment on column fs_fiadb.tree_grm_midpt.volcsgrs
  is 'Gross cubic-foot wood volume in the saw-log portion';
comment on column fs_fiadb.tree_grm_midpt.volcsgrs_bark
  is 'Gross cubic-foot wood volume in the saw-log portion';
comment on column fs_fiadb.tree_grm_midpt.volcssnd
  is 'Sound cubic-foot wood volume in the saw-log portion';
comment on column fs_fiadb.tree_grm_midpt.volcssnd_bark
  is 'Sound cubic-foot wood volume in the saw-log portion';
comment on column fs_fiadb.tree_grm_midpt.volcsnet
  is 'Net cubic-foot volume in the saw-log portion ';
comment on column fs_fiadb.tree_grm_midpt.volcsnet_bark
  is 'Net cubic-foot wood volume in the saw-log portion';
comment on column fs_fiadb.tree_grm_midpt.volbfgrs
  is 'Gross board-foot volume in the saw-log portion';
comment on column fs_fiadb.tree_grm_midpt.volbfnet
  is 'Net board-foot volume in the saw-log portion ';
comment on column fs_fiadb.tree_grm_midpt.volbsgrs
  is 'NA';
comment on column fs_fiadb.tree_grm_midpt.volbsnet
  is 'Net Scribner board foot volume.';
comment on column fs_fiadb.tree_grm_midpt.drybio_stem
  is 'NA';
comment on column fs_fiadb.tree_grm_midpt.drybio_stem_bark
  is 'Bark dry biomass for the total stem of trees 5 inches or larger in diameter (pounds)';
comment on column fs_fiadb.tree_grm_midpt.drybio_stump
  is 'Dry biomass in the stump of trees 5 inches or larger in diameter (pounds)';
comment on column fs_fiadb.tree_grm_midpt.drybio_stump_bark
  is 'Bark dry biomass in the stump of trees 5 inches or larger in diameter (pounds)';
comment on column fs_fiadb.tree_grm_midpt.drybio_bole
  is 'Dry biomass in the bole of trees 5 inches or larger in diameter (pounds)';
comment on column fs_fiadb.tree_grm_midpt.drybio_bole_bark
  is 'Bark dry biomass in the bole of trees 5 inches or larger in diameter (pounds)';
comment on column fs_fiadb.tree_grm_midpt.drybio_branch
  is 'Dry biomass in the branches of trees 1 inches or larger in diameter (pounds)';
comment on column fs_fiadb.tree_grm_midpt.drybio_foliage
  is 'Foliage biomass in trees 1 inches or larger in diameter (pounds)';
comment on column fs_fiadb.tree_grm_midpt.drybio_ag
  is 'Dry biomass aboveground of trees 1 inch and larger in diameter (pounds)';
comment on column fs_fiadb.tree_grm_midpt.drybio_bg
  is 'Dry biomass in the roots of trees 1 inch and larger in diameter (pounds)';
comment on column fs_fiadb.tree_grm_midpt.carbon_ag
  is 'NA';
comment on column fs_fiadb.tree_grm_midpt.carbon_bg
  is 'NA';
comment on column fs_fiadb.tree_grm_midpt.drybio_sawlog
  is 'Dry biomass in the sawlog portion (pounds)';
comment on column fs_fiadb.tree_grm_midpt.drybio_sawlog_bark
  is 'Bark dry biomass in the sawlog portion (pounds)';
comment on column fs_fiadb.tree_grm_midpt.created_by
  is 'Created by';
comment on column fs_fiadb.tree_grm_midpt.created_date
  is 'Created Date';
comment on column fs_fiadb.tree_grm_midpt.created_in_instance
  is 'Created in Instance';
comment on column fs_fiadb.tree_grm_midpt.modified_by
  is 'Modified by';
comment on column fs_fiadb.tree_grm_midpt.modified_date
  is 'Modified Date';
comment on column fs_fiadb.tree_grm_midpt.modified_in_instance
  is 'Modified in Instance';
create index TRE_GRM_MIDPT_IND1 on FS_FIADB.TREE_GRM_MIDPT (PLT_CN);
create index TRE_GRM_MIDPT_IND2 on FS_FIADB.TREE_GRM_MIDPT (PREV_TRE_CN);
create index TRE_GRM_MIDPT_IND3 on FS_FIADB.TREE_GRM_MIDPT (STATECD);
alter table FS_FIADB.TREE_GRM_MIDPT add constraint TRE_GRM_MIDPT_PK primary key (TRE_CN);
alter table FS_FIADB.TREE_GRM_MIDPT add constraint TRE_GRM_MIDPT_FK foreign key (TRE_CN) references FS_FIADB.TREE (CN);