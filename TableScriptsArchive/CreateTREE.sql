-- Create table
create table FS_FIADB.TREE
(
  cn                             VARCHAR(34) not null,
  plt_cn                         VARCHAR(34) not null,
  prev_tre_cn                    VARCHAR(34),
  invyr                          SMALLINT not null,
  statecd                        SMALLINT not null,
  unitcd                         SMALLINT not null,
  countycd                       SMALLINT not null,
  plot                           INT not null,
  subp                           SMALLINT not null,
  tree                           BIGINT not null,
  condid                         SMALLINT not null,
  azimuth                        SMALLINT,
  dist                           DECIMAL(4,1),
  prevcond                       SMALLINT,
  statuscd                       SMALLINT not null,
  spcd                           DOUBLE PRECISION,
  spgrpcd                        SMALLINT,
  dia                            DECIMAL(5,2),
  diahtcd                        SMALLINT,
  ht                             SMALLINT,
  htcd                           SMALLINT,
  actualht                       SMALLINT,
  treeclcd                       SMALLINT,
  cr                             SMALLINT,
  cclcd                          SMALLINT,
  treegrcd                       SMALLINT,
  agentcd                        SMALLINT,
  cull                           SMALLINT,
  damloc1                        SMALLINT,
  damtyp1                        SMALLINT,
  damsev1                        SMALLINT,
  damloc2                        SMALLINT,
  damtyp2                        SMALLINT,
  damsev2                        SMALLINT,
  decaycd                        SMALLINT,
  stocking                       DECIMAL(7,4),
  wdldstem                       SMALLINT,
  volcfnet                       DECIMAL(11,6),
  volcfgrs                       DECIMAL(11,6),
  volcsnet                       DECIMAL(11,6),
  volcsgrs                       DECIMAL(11,6),
  volbfnet                       DECIMAL(11,6),
  volbfgrs                       DECIMAL(11,6),
  volcfsnd                       DECIMAL(11,6),
  diacheck                       SMALLINT,
  mortyr                         SMALLINT,
  salvcd                         SMALLINT,
  uncrcd                         SMALLINT,
  cposcd                         SMALLINT,
  clightcd                       SMALLINT,
  cvigorcd                       SMALLINT,
  cdencd                         SMALLINT,
  cdiebkcd                       SMALLINT,
  transcd                        SMALLINT,
  treehistcd                     SMALLINT,
  bhage                          SMALLINT,
  totage                         SMALLINT,
  culldead                       SMALLINT,
  cullform                       SMALLINT,
  cullmstop                      SMALLINT,
  cullbf                         SMALLINT,
  cullcf                         SMALLINT,
  bfsnd                          SMALLINT,
  cfsnd                          SMALLINT,
  sawht                          SMALLINT,
  boleht                         SMALLINT,
  formcl                         SMALLINT,
  htcalc                         SMALLINT,
  hrdwd_clump_cd                 SMALLINT,
  sitree                         SMALLINT,
  created_by                     VARCHAR(30),
  created_date                   TIMESTAMP(0),
  created_in_instance            VARCHAR(6),
  modified_by                    VARCHAR(30),
  modified_date                  TIMESTAMP(0),
  modified_in_instance           VARCHAR(6),
  mortcd                         SMALLINT,
  htdmp                          DECIMAL(3,1),
  roughcull                      SMALLINT,
  mist_cl_cd                     SMALLINT,
  cull_fld                       SMALLINT,
  reconcilecd                    SMALLINT,
  prevdia                        DECIMAL(5,2),
  p2a_grm_flg                    VARCHAR(1),
  treeclcd_ners                  SMALLINT,
  treeclcd_srs                   SMALLINT,
  treeclcd_ncrs                  SMALLINT,
  treeclcd_rmrs                  SMALLINT,
  standing_dead_cd               SMALLINT,
  prev_status_cd                 SMALLINT,
  prev_wdldstem                  SMALLINT,
  tpa_unadj                      DECIMAL(11,6),
  drybio_bole                    DECIMAL(13,6),
  drybio_stump                   DECIMAL(13,6),
  drybio_bg                      DECIMAL(13,6),
  carbon_ag                      DECIMAL(13,6),
  carbon_bg                      DECIMAL(13,6),
  cycle                          SMALLINT,
  subcycle                       SMALLINT,
  bored_cd_pnwrs                 SMALLINT,
  damloc1_pnwrs                  SMALLINT,
  damloc2_pnwrs                  SMALLINT,
  diacheck_pnwrs                 SMALLINT,
  dmg_agent1_cd_pnwrs            SMALLINT,
  dmg_agent2_cd_pnwrs            SMALLINT,
  dmg_agent3_cd_pnwrs            SMALLINT,
  mist_cl_cd_pnwrs               SMALLINT,
  severity1_cd_pnwrs             SMALLINT,
  severity1a_cd_pnwrs            SMALLINT,
  severity1b_cd_pnwrs            SMALLINT,
  severity2_cd_pnwrs             SMALLINT,
  severity2a_cd_pnwrs            SMALLINT,
  severity2b_cd_pnwrs            SMALLINT,
  severity3_cd_pnwrs             SMALLINT,
  unknown_damtyp1_pnwrs          SMALLINT,
  unknown_damtyp2_pnwrs          SMALLINT,
  prev_pntn_srs                  SMALLINT,
  disease_srs                    SMALLINT,
  dieback_severity_srs           SMALLINT,
  damage_agent_cd1               INT,
  damage_agent_cd2               INT,
  damage_agent_cd3               INT,
  centroid_dia                   DECIMAL(4,1),
  centroid_dia_ht                DECIMAL(4,1),
  centroid_dia_ht_actual         DECIMAL(4,1),
  upper_dia                      DECIMAL(4,1),
  upper_dia_ht                   DECIMAL(4,1),
  volcssnd                       DECIMAL(11,6),
  drybio_sawlog                  DECIMAL(13,6),
  damage_agent_cd1_srs           INT,
  damage_agent_cd2_srs           INT,
  damage_agent_cd3_srs           INT,
  drybio_ag                      DECIMAL(13,6),
  actualht_calc                  SMALLINT,
  actualht_calc_cd               SMALLINT,
  cull_bf_rotten                 DECIMAL(12,9),
  cull_bf_rotten_cd              SMALLINT,
  cull_bf_rough                  DECIMAL(12,9),
  cull_bf_rough_cd               SMALLINT,
  prevdia_fld                    DOUBLE PRECISION,
  treeclcd_31_ncrs               SMALLINT,
  tree_grade_ncrs                SMALLINT,
  boughs_available_ncrs          SMALLINT,
  boughs_hrvst_ncrs              SMALLINT,
  treeclcd_31_ners               SMALLINT,
  agentcd_ners                   SMALLINT,
  bfsndcd_ners                   SMALLINT,
  agechkcd_rmrs                  SMALLINT,
  prev_actualht_rmrs             SMALLINT,
  prev_agechkcd_rmrs             SMALLINT,
  prev_bhage_rmrs                SMALLINT,
  prev_ht_rmrs                   SMALLINT,
  prev_totage_rmrs               SMALLINT,
  prev_treeclcd_rmrs             SMALLINT,
  radagecd_rmrs                  SMALLINT,
  radgrw_rmrs                    SMALLINT,
  volbsgrs                       DECIMAL(11,6),
  volbsnet                       DECIMAL(11,6),
  sapling_fusiform_srs           SMALLINT,
  epiphyte_pnwrs                 SMALLINT,
  root_ht_pnwrs                  SMALLINT,
  cavity_use_pnwrs               VARCHAR(1),
  core_length_pnwrs              DECIMAL(4,1),
  culturally_killed_pnwrs        SMALLINT,
  dia_est_pnwrs                  DECIMAL(4,1),
  gst_pnwrs                      VARCHAR(1),
  inc10yr_pnwrs                  SMALLINT,
  inc5yrht_pnwrs                 DECIMAL(3,1),
  inc5yr_pnwrs                   SMALLINT,
  ring_count_inner_2inches_pnwrs SMALLINT,
  ring_count_pnwrs               SMALLINT,
  snag_dis_cd_pnwrs              SMALLINT,
  coneprescd1                    SMALLINT,
  coneprescd2                    SMALLINT,
  coneprescd3                    SMALLINT,
  mastcd                         SMALLINT,
  voltsgrs                       DECIMAL(13,6),
  voltsgrs_bark                  DECIMAL(13,6),
  voltssnd                       DECIMAL(13,6),
  voltssnd_bark                  DECIMAL(13,6),
  volcfgrs_stump                 DECIMAL(13,6),
  volcfgrs_stump_bark            DECIMAL(13,6),
  volcfsnd_stump                 DECIMAL(13,6),
  volcfsnd_stump_bark            DECIMAL(13,6),
  volcfgrs_bark                  DECIMAL(13,6),
  volcfgrs_top                   DECIMAL(13,6),
  volcfgrs_top_bark              DECIMAL(13,6),
  volcfsnd_bark                  DECIMAL(13,6),
  volcfsnd_top                   DECIMAL(13,6),
  volcfsnd_top_bark              DECIMAL(13,6),
  volcfnet_bark                  DECIMAL(13,6),
  volcsgrs_bark                  DECIMAL(13,6),
  volcssnd_bark                  DECIMAL(13,6),
  volcsnet_bark                  DECIMAL(13,6),
  drybio_stem                    DECIMAL(13,6),
  drybio_stem_bark               DECIMAL(13,6),
  drybio_stump_bark              DECIMAL(13,6),
  drybio_bole_bark               DECIMAL(13,6),
  drybio_branch                  DECIMAL(13,6),
  drybio_foliage                 DECIMAL(13,6),
  drybio_sawlog_bark             DECIMAL(13,6)
);
-- Add comments to the table
comment on table FS_FIADB.TREE
  is '6.0';
-- Add comments to the columns
comment on column FS_FIADB.TREE.cn
  is 'Unique index';
comment on column FS_FIADB.TREE.plt_cn
  is 'Unique index';
comment on column FS_FIADB.TREE.prev_tre_cn
  is 'Unique index';
comment on column FS_FIADB.TREE.statecd
  is 'State code';
comment on column FS_FIADB.TREE.unitcd
  is 'Survey unit code';
comment on column FS_FIADB.TREE.countycd
  is 'County code';
comment on column FS_FIADB.TREE.plot
  is 'Plot number';
comment on column FS_FIADB.TREE.subp
  is 'Subplot number';
comment on column FS_FIADB.TREE.tree
  is 'Tree number';
comment on column FS_FIADB.TREE.condid
  is 'Condition number';
comment on column FS_FIADB.TREE.azimuth
  is 'Azimuth';
comment on column FS_FIADB.TREE.dist
  is 'Horizontal distance';
comment on column FS_FIADB.TREE.prevcond
  is 'Previous condition number';
comment on column FS_FIADB.TREE.statuscd
  is 'Tree status code';
comment on column FS_FIADB.TREE.spcd
  is 'Species code';
comment on column FS_FIADB.TREE.spgrpcd
  is 'Species group code';
comment on column FS_FIADB.TREE.dia
  is 'Current diameter';
comment on column FS_FIADB.TREE.diahtcd
  is 'Height of diameter measurement code';
comment on column FS_FIADB.TREE.ht
  is 'Height';
comment on column FS_FIADB.TREE.htcd
  is 'Height type code';
comment on column FS_FIADB.TREE.actualht
  is 'Actual height of tree';
comment on column FS_FIADB.TREE.treeclcd
  is 'Tree class code';
comment on column FS_FIADB.TREE.cr
  is 'Compacted crown ratio';
comment on column FS_FIADB.TREE.cclcd
  is 'Crown class code';
comment on column FS_FIADB.TREE.treegrcd
  is 'Tree grade code';
comment on column FS_FIADB.TREE.agentcd
  is 'Damaging agent code';
comment on column FS_FIADB.TREE.cull
  is 'Rotten and missing cull percent - computed and includes percent missing top';
comment on column FS_FIADB.TREE.damloc1
  is 'Damage location 1 code';
comment on column FS_FIADB.TREE.damtyp1
  is 'Damage type 1 code';
comment on column FS_FIADB.TREE.damsev1
  is 'Damage severity 1 code';
comment on column FS_FIADB.TREE.damloc2
  is 'Damage location 2 code';
comment on column FS_FIADB.TREE.damtyp2
  is 'Damage type 2 code';
comment on column FS_FIADB.TREE.damsev2
  is 'Damage severity 2 code';
comment on column FS_FIADB.TREE.decaycd
  is 'Dead tree decay code';
comment on column FS_FIADB.TREE.stocking
  is 'Tree stocking percent';
comment on column FS_FIADB.TREE.wdldstem
  is 'Woodland tree species current stem count';
comment on column FS_FIADB.TREE.volcfnet
  is 'Net cubic-foot volume';
comment on column FS_FIADB.TREE.volcfgrs
  is 'Gross cubic-foot volume';
comment on column FS_FIADB.TREE.volcsnet
  is 'Net cubic-foot volume in the saw-log portion';
comment on column FS_FIADB.TREE.volcsgrs
  is 'Gross cubic-foot volume in the saw-log portion';
comment on column FS_FIADB.TREE.volbfnet
  is 'Net board-foot volume in the saw-log portion';
comment on column FS_FIADB.TREE.volbfgrs
  is 'Gross board-foot volume in the saw-log portion';
comment on column FS_FIADB.TREE.volcfsnd
  is 'Sound cubic-foot volume';
comment on column FS_FIADB.TREE.diacheck
  is 'Diameter check code';
comment on column FS_FIADB.TREE.mortyr
  is 'Mortality year';
comment on column FS_FIADB.TREE.salvcd
  is 'Salvable dead code';
comment on column FS_FIADB.TREE.uncrcd
  is 'Uncompacted live crown ratio';
comment on column FS_FIADB.TREE.cposcd
  is 'Crown position code';
comment on column FS_FIADB.TREE.clightcd
  is 'Crown light exposure code';
comment on column FS_FIADB.TREE.cvigorcd
  is 'Sapling vigor class code';
comment on column FS_FIADB.TREE.cdencd
  is 'Crown density code';
comment on column FS_FIADB.TREE.cdiebkcd
  is 'Crown dieback code';
comment on column FS_FIADB.TREE.transcd
  is 'Foliage transparency code';
comment on column FS_FIADB.TREE.treehistcd
  is 'Tree history code';
comment on column FS_FIADB.TREE.bhage
  is 'Breast height age';
comment on column FS_FIADB.TREE.totage
  is 'Total tree age';
comment on column FS_FIADB.TREE.culldead
  is 'Dead cull';
comment on column FS_FIADB.TREE.cullform
  is 'Form cull';
comment on column FS_FIADB.TREE.cullmstop
  is 'Missing top cull';
comment on column FS_FIADB.TREE.cullbf
  is 'Board-foot cull';
comment on column FS_FIADB.TREE.cullcf
  is 'Cubic-foot cull';
comment on column FS_FIADB.TREE.bfsnd
  is 'Board-foot-cull soundness';
comment on column FS_FIADB.TREE.cfsnd
  is 'Cubic-foot-cull soundness';
comment on column FS_FIADB.TREE.sawht
  is 'Sawlog height';
comment on column FS_FIADB.TREE.boleht
  is 'Bole height';
comment on column FS_FIADB.TREE.formcl
  is 'Form class';
comment on column FS_FIADB.TREE.htcalc
  is 'Calculated total height';
comment on column FS_FIADB.TREE.hrdwd_clump_cd
  is 'Hardwood clump code';
comment on column FS_FIADB.TREE.sitree
  is 'Calculated site index';
comment on column FS_FIADB.TREE.created_by
  is 'Created by';
comment on column FS_FIADB.TREE.created_date
  is 'Created date';
comment on column FS_FIADB.TREE.created_in_instance
  is 'Created in instance';
comment on column FS_FIADB.TREE.modified_by
  is 'Modified by';
comment on column FS_FIADB.TREE.modified_date
  is 'Modified date';
comment on column FS_FIADB.TREE.modified_in_instance
  is 'Modified in instance';
comment on column FS_FIADB.TREE.mortcd
  is 'Mortality Code:  tree was live within past five years, but has died.';
comment on column FS_FIADB.TREE.htdmp
  is 'Length (height) to diameter measurement point.';
comment on column FS_FIADB.TREE.roughcull
  is 'Rough cull percentage';
comment on column FS_FIADB.TREE.mist_cl_cd
  is 'Mistletoe class code';
comment on column FS_FIADB.TREE.cull_fld
  is 'Rotten and missing cull percent recorded by the field crew';
comment on column FS_FIADB.TREE.reconcilecd
  is ' NEW TREE RECONCILEFor remeasurement locations only, record a NEW TREE RECONCILE for any new tally tree that was not tallied in the previous inventory; this code is used to identify the reason a new tree appeared in the inventory.  This information is needed to correctly assign volume information to the proper component of volume change.When Collected: On SAMPLE KIND 2; all new live tally trees = 1.0 inch DBH/DRC (TREE STATUS=1), all new dead tally trees = 5.0 in (TREE STATUS=2)Field width:  1 digitTolerance:  No errorsMQO:  At least 95% of the timeValues:1 Ingrowth - new tally tree not qualifying as through growth (includes reversions).2 Through growth - new tally tree 5 inches DBH/DRC and larger, within the microplot.3 Missed live - a live tree missed at previous inventory and that is live, dead or removed now.4 Missed dead - a dead tree missed at previous inventory and that is dead or removed now. ';
comment on column FS_FIADB.TREE.prevdia
  is 'Previous diameter';
comment on column FS_FIADB.TREE.p2a_grm_flg
  is 'Periodic to annual growth, removal, and mortality flag. The flag is set to Y for those trees that are needed for estimation and otherwise is left blank (null).';
comment on column FS_FIADB.TREE.treeclcd_ners
  is 'Tree class code NERS';
comment on column FS_FIADB.TREE.treeclcd_srs
  is 'Tree class code SRS';
comment on column FS_FIADB.TREE.treeclcd_ncrs
  is 'Tree class code NCRS';
comment on column FS_FIADB.TREE.treeclcd_rmrs
  is 'Tree class code RMRS';
comment on column FS_FIADB.TREE.prev_wdldstem
  is 'Woodland tree species previous stem count';
comment on column FS_FIADB.TREE.drybio_bole
  is 'Dry biomass in the bole of trees 5 inches or larger in diameter (pounds)';
comment on column FS_FIADB.TREE.drybio_stump
  is 'Dry biomass in the stump of trees 5 inches or larger in diameter (pounds)';
comment on column FS_FIADB.TREE.drybio_bg
  is 'Dry biomass in the roots of trees 1 inch and larger in diameter (pounds)';
comment on column FS_FIADB.TREE.carbon_ag
  is 'Carbon above ground of trees 1 inch and larger in diameter (pounds)';
comment on column FS_FIADB.TREE.carbon_bg
  is 'Carbon below ground of trees 1 inch and larger in diameter (pounds)';
comment on column FS_FIADB.TREE.cycle
  is 'Inventory cycle number';
comment on column FS_FIADB.TREE.subcycle
  is 'Inventory subcycle number';
comment on column FS_FIADB.TREE.prev_pntn_srs
  is 'SRS is probably going to add past periodic prism trees into NIMS and FIADB. In some older SE states, the prism point, tree number (PNTN) of the current cycle did not match the previous cycle''s prism point, tree number. To be able to join the current and the previous prism plot trees, we need to have the PREV_PNTN_SRS assigned to the current tree record.';
comment on column FS_FIADB.TREE.disease_srs
  is 'Regional Disease Code';
comment on column FS_FIADB.TREE.dieback_severity_srs
  is 'Regional tree Dieback Severity';
comment on column FS_FIADB.TREE.damage_agent_cd1
  is 'Code designating an agent affecting the survival, health, or marketability of the tree';
comment on column FS_FIADB.TREE.damage_agent_cd2
  is 'Code designating an agent affecting the survival, health, or marketability of the tree';
comment on column FS_FIADB.TREE.damage_agent_cd3
  is 'Code designating an agent affecting the survival, health, or marketability of the tree';
comment on column FS_FIADB.TREE.centroid_dia
  is 'Outside bark diameter at stem centroid';
comment on column FS_FIADB.TREE.centroid_dia_ht
  is 'Height to stem centroid';
comment on column FS_FIADB.TREE.centroid_dia_ht_actual
  is 'Height to where stem centroid diameter was actually measured';
comment on column FS_FIADB.TREE.upper_dia
  is 'Outside bark upper stem diameter';
comment on column FS_FIADB.TREE.upper_dia_ht
  is 'Height to where upper stem diameter was measured';
comment on column FS_FIADB.TREE.volcssnd
  is 'Sound cubic-foot volume in the saw-log portion';
comment on column FS_FIADB.TREE.drybio_sawlog
  is 'Dry biomass in the sawlog portion (pounds)';
comment on column FS_FIADB.TREE.drybio_ag
  is 'Dry biomass aboveground of trees 1 inch and larger in diameter (pounds)';
comment on column FS_FIADB.TREE.actualht_calc
  is 'Actual height of tree, calculated';
comment on column FS_FIADB.TREE.actualht_calc_cd
  is 'Code indicating how ACTUALHT_CALC was derived';
comment on column FS_FIADB.TREE.cull_bf_rotten
  is 'rotten/missing board foot cull of the sawlog';
comment on column FS_FIADB.TREE.cull_bf_rotten_cd
  is 'cull_bf_rotten code';
comment on column FS_FIADB.TREE.cull_bf_rough
  is 'rough board foot cull of the sawlog';
comment on column FS_FIADB.TREE.cull_bf_rough_cd
  is 'cull_bf_rough code';
comment on column FS_FIADB.TREE.prevdia_fld
  is 'Previous diameter taken in the field';
comment on column FS_FIADB.TREE.treeclcd_31_ncrs
  is 'tree class taken new in field guide version 31';
comment on column FS_FIADB.TREE.tree_grade_ncrs
  is 'tree grade code';
comment on column FS_FIADB.TREE.boughs_available_ncrs
  is 'balsam fir boughs available code';
comment on column FS_FIADB.TREE.boughs_hrvst_ncrs
  is 'balsam fir boughs harvested code';
comment on column FS_FIADB.TREE.treeclcd_31_ners
  is 'tree class taken new in field guide version 31';
comment on column FS_FIADB.TREE.agentcd_ners
  is 'cause of death: national with regional collection violation';
comment on column FS_FIADB.TREE.bfsndcd_ners
  is 'board foot soundness code';
comment on column FS_FIADB.TREE.agechkcd_rmrs
  is 'age check code';
comment on column FS_FIADB.TREE.prev_actualht_rmrs
  is 'previous actual height/length, downloaded from previous plot visit';
comment on column FS_FIADB.TREE.prev_agechkcd_rmrs
  is 'previous age check code';
comment on column FS_FIADB.TREE.prev_bhage_rmrs
  is 'previous breast height age';
comment on column FS_FIADB.TREE.prev_ht_rmrs
  is 'previous inventory height';
comment on column FS_FIADB.TREE.prev_totage_rmrs
  is 'previous total tree age';
comment on column FS_FIADB.TREE.prev_treeclcd_rmrs
  is 'previous inventory tree class code';
comment on column FS_FIADB.TREE.radagecd_rmrs
  is 'radial growth/age code';
comment on column FS_FIADB.TREE.radgrw_rmrs
  is '10 yr radial increment in 20th" (=10 yr dia in 10th")';
comment on column FS_FIADB.TREE.volbsgrs
  is 'gross scribner board-foot volume in the saw-log portion';
comment on column FS_FIADB.TREE.volbsnet
  is 'net scribner board-foot volume in the saw-log portion';
comment on column FS_FIADB.TREE.sapling_fusiform_srs
  is 'incidence of fusiform occurring on the main stem or on a live branch within 12 inches of the main stem';
comment on column FS_FIADB.TREE.cavity_use_pnwrs
  is 'cavity presence code';
comment on column FS_FIADB.TREE.core_length_pnwrs
  is 'Length of measured core (Portland FSL), PNWRS';
comment on column FS_FIADB.TREE.culturally_killed_pnwrs
  is 'A code to identify cut trees that have been killed by direct human intervention (Anchorage FSL, Portland FSL), PNWRS';
comment on column FS_FIADB.TREE.dia_est_pnwrs
  is 'Snag estimated diameter (Anchorage FSL, Portland FSL), PNWRS';
comment on column FS_FIADB.TREE.gst_pnwrs
  is 'growth sample tree';
comment on column FS_FIADB.TREE.inc10yr_pnwrs
  is '10-year increment';
comment on column FS_FIADB.TREE.inc5yrht_pnwrs
  is '5-year height growth';
comment on column FS_FIADB.TREE.inc5yr_pnwrs
  is '5-year increment';
comment on column FS_FIADB.TREE.ring_count_inner_2inches_pnwrs
  is 'Number of rings in inner 2 inches in the core (Portland FSL), PNWRS';
comment on column FS_FIADB.TREE.ring_count_pnwrs
  is 'Number of rings in the core (Portland FSL), PNWRS';
comment on column FS_FIADB.TREE.snag_dis_cd_pnwrs
  is 'snag reason for disappearance';
-- Create/Recreate indexes
create index TRE_NAT_I on FS_FIADB.TREE (STATECD, INVYR, UNITCD, COUNTYCD, PLOT, SUBP, TREE);
create index TRE_PLT_CN_CONDID on FS_FIADB.TREE (PLT_CN, CONDID);
create index TRE_PLT_FK_I on FS_FIADB.TREE (PLT_CN);
create index TRE_SPCD on FS_FIADB.TREE (SPCD);
create index TRE_SPGRPCD on FS_FIADB.TREE (SPGRPCD);
-- Create/Recreate primary, unique and foreign key constraints
alter table FS_FIADB.TREE
  add constraint TRE_PK primary key (CN);
alter table FS_FIADB.TREE
  add constraint TRE_UK unique (PLT_CN, SUBP, TREE);
alter table FS_FIADB.TREE
  add constraint TRE_PLT_FK foreign key (PLT_CN)
  references FS_FIADB.PLOT (CN);
