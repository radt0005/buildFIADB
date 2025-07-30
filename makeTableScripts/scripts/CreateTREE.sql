CREATE TABLE fs_fiadb.tree
(
cn                             VARCHAR(34) NOT NULL,
plt_cn                         VARCHAR(34) NOT NULL,
prev_tre_cn                    VARCHAR(34),
invyr                          INTEGER NOT NULL,
statecd                        INTEGER NOT NULL,
unitcd                         INTEGER NOT NULL,
countycd                       INTEGER NOT NULL,
plot                           INTEGER NOT NULL,
subp                           INTEGER NOT NULL,
tree                           INTEGER NOT NULL,
condid                         INTEGER NOT NULL,
azimuth                        INTEGER,
dist                           DECIMAL(4,1),
prevcond                       INTEGER,
statuscd                       INTEGER NOT NULL,
spcd                           DOUBLE PRECISION,
spgrpcd                        INTEGER,
dia                            DECIMAL(5,2),
diahtcd                        INTEGER,
ht                             INTEGER,
htcd                           INTEGER,
actualht                       INTEGER,
treeclcd                       INTEGER,
cr                             INTEGER,
cclcd                          INTEGER,
treegrcd                       INTEGER,
agentcd                        INTEGER,
cull                           INTEGER,
damloc1                        INTEGER,
damtyp1                        INTEGER,
damsev1                        INTEGER,
damloc2                        INTEGER,
damtyp2                        INTEGER,
damsev2                        INTEGER,
decaycd                        INTEGER,
stocking                       DECIMAL(7,4),
wdldstem                       INTEGER,
volcfnet                       DECIMAL(11,6),
volcfgrs                       DECIMAL(11,6),
volcsnet                       DECIMAL(11,6),
volcsgrs                       DECIMAL(11,6),
volbfnet                       DECIMAL(11,6),
volbfgrs                       DECIMAL(11,6),
volcfsnd                       DECIMAL(11,6),
diacheck                       INTEGER,
mortyr                         INTEGER,
salvcd                         INTEGER,
uncrcd                         INTEGER,
cposcd                         INTEGER,
clightcd                       INTEGER,
cvigorcd                       INTEGER,
cdencd                         INTEGER,
cdiebkcd                       INTEGER,
transcd                        INTEGER,
treehistcd                     INTEGER,
bhage                          INTEGER,
totage                         INTEGER,
culldead                       INTEGER,
cullform                       INTEGER,
cullmstop                      INTEGER,
cullbf                         INTEGER,
cullcf                         INTEGER,
bfsnd                          INTEGER,
cfsnd                          INTEGER,
sawht                          INTEGER,
boleht                         INTEGER,
formcl                         INTEGER,
htcalc                         INTEGER,
hrdwd_clump_cd                 INTEGER,
sitree                         INTEGER,
created_by                     VARCHAR(30),
created_date                   TIMESTAMP(0),
created_in_instance            VARCHAR(6),
modified_by                    VARCHAR(30),
modified_date                  TIMESTAMP(0),
modified_in_instance           VARCHAR(6),
mortcd                         INTEGER,
htdmp                          DECIMAL(3,1),
roughcull                      INTEGER,
mist_cl_cd                     INTEGER,
cull_fld                       INTEGER,
reconcilecd                    INTEGER,
prevdia                        DECIMAL(5,2),
p2a_grm_flg                    VARCHAR(1),
treeclcd_ners                  INTEGER,
treeclcd_srs                   INTEGER,
treeclcd_ncrs                  INTEGER,
treeclcd_rmrs                  INTEGER,
standing_dead_cd               INTEGER,
prev_status_cd                 INTEGER,
prev_wdldstem                  INTEGER,
tpa_unadj                      DECIMAL(11,6),
drybio_bole                    DECIMAL(13,6),
drybio_stump                   DECIMAL(13,6),
drybio_bg                      DECIMAL(13,6),
carbon_ag                      DECIMAL(13,6),
carbon_bg                      DECIMAL(13,6),
cycle                          INTEGER,
subcycle                       INTEGER,
bored_cd_pnwrs                 INTEGER,
damloc1_pnwrs                  INTEGER,
damloc2_pnwrs                  INTEGER,
diacheck_pnwrs                 INTEGER,
dmg_agent1_cd_pnwrs            INTEGER,
dmg_agent2_cd_pnwrs            INTEGER,
dmg_agent3_cd_pnwrs            INTEGER,
mist_cl_cd_pnwrs               INTEGER,
severity1_cd_pnwrs             INTEGER,
severity1a_cd_pnwrs            INTEGER,
severity1b_cd_pnwrs            INTEGER,
severity2_cd_pnwrs             INTEGER,
severity2a_cd_pnwrs            INTEGER,
severity2b_cd_pnwrs            INTEGER,
severity3_cd_pnwrs             INTEGER,
unknown_damtyp1_pnwrs          INTEGER,
unknown_damtyp2_pnwrs          INTEGER,
prev_pntn_srs                  INTEGER,
disease_srs                    INTEGER,
dieback_severity_srs           INTEGER,
damage_agent_cd1               INTEGER,
damage_agent_cd2               INTEGER,
damage_agent_cd3               INTEGER,
centroid_dia                   DECIMAL(4,1),
centroid_dia_ht                DECIMAL(4,1),
centroid_dia_ht_actual         DECIMAL(4,1),
upper_dia                      DECIMAL(4,1),
upper_dia_ht                   DECIMAL(4,1),
volcssnd                       DECIMAL(11,6),
drybio_sawlog                  DECIMAL(13,6),
damage_agent_cd1_srs           INTEGER,
damage_agent_cd2_srs           INTEGER,
damage_agent_cd3_srs           INTEGER,
drybio_ag                      DECIMAL(13,6),
actualht_calc                  INTEGER,
actualht_calc_cd               INTEGER,
cull_bf_rotten                 DECIMAL(12,9),
cull_bf_rotten_cd              INTEGER,
cull_bf_rough                  DECIMAL(12,9),
cull_bf_rough_cd               INTEGER,
prevdia_fld                    DOUBLE PRECISION,
treeclcd_31_ncrs               INTEGER,
tree_grade_ncrs                INTEGER,
boughs_available_ncrs          INTEGER,
boughs_hrvst_ncrs              INTEGER,
treeclcd_31_ners               INTEGER,
agentcd_ners                   INTEGER,
bfsndcd_ners                   INTEGER,
agechkcd_rmrs                  INTEGER,
prev_agechkcd_rmrs             INTEGER,
prev_bhage_rmrs                INTEGER,
prev_totage_rmrs               INTEGER,
prev_treeclcd_rmrs             INTEGER,
radagecd_rmrs                  INTEGER,
radgrw_rmrs                    INTEGER,
volbsgrs                       DECIMAL(11,6),
volbsnet                       DECIMAL(11,6),
sapling_fusiform_srs           INTEGER,
epiphyte_pnwrs                 INTEGER,
root_ht_pnwrs                  INTEGER,
cavity_use_pnwrs               VARCHAR(1),
core_length_pnwrs              DECIMAL(4,1),
culturally_killed_pnwrs        INTEGER,
dia_est_pnwrs                  DECIMAL(4,1),
gst_pnwrs                      VARCHAR(1),
inc10yr_pnwrs                  INTEGER,
inc5yrht_pnwrs                 DECIMAL(3,1),
inc5yr_pnwrs                   INTEGER,
ring_count_inner_2inches_pnwrs INTEGER,
ring_count_pnwrs               INTEGER,
snag_dis_cd_pnwrs              INTEGER,
coneprescd1                    INTEGER,
coneprescd2                    INTEGER,
coneprescd3                    INTEGER,
mastcd                         INTEGER,
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
drybio_sawlog_bark             DECIMAL(13,6),
prev_actualht_fld              INTEGER,
prev_ht_fld                    INTEGER,
utilclcd                       INTEGER
);
comment on column fs_fiadb.tree.cn
  is 'Unique index';
comment on column fs_fiadb.tree.plt_cn
  is 'Unique index';
comment on column fs_fiadb.tree.prev_tre_cn
  is 'Unique index';
comment on column fs_fiadb.tree.invyr
  is 'NA';
comment on column fs_fiadb.tree.statecd
  is 'State code';
comment on column fs_fiadb.tree.unitcd
  is 'Survey unit code';
comment on column fs_fiadb.tree.countycd
  is 'County code';
comment on column fs_fiadb.tree.plot
  is 'Plot number';
comment on column fs_fiadb.tree.subp
  is 'Subplot number';
comment on column fs_fiadb.tree.tree
  is 'Tree number';
comment on column fs_fiadb.tree.condid
  is 'Condition number';
comment on column fs_fiadb.tree.azimuth
  is 'Azimuth';
comment on column fs_fiadb.tree.dist
  is 'Horizontal distance';
comment on column fs_fiadb.tree.prevcond
  is 'Previous condition number';
comment on column fs_fiadb.tree.statuscd
  is 'Tree status code';
comment on column fs_fiadb.tree.spcd
  is 'Species code';
comment on column fs_fiadb.tree.spgrpcd
  is 'Species group code';
comment on column fs_fiadb.tree.dia
  is 'Current diameter';
comment on column fs_fiadb.tree.diahtcd
  is 'Height of diameter measurement code';
comment on column fs_fiadb.tree.ht
  is 'Height';
comment on column fs_fiadb.tree.htcd
  is 'Height type code';
comment on column fs_fiadb.tree.actualht
  is 'Actual height of tree';
comment on column fs_fiadb.tree.treeclcd
  is 'Tree class code';
comment on column fs_fiadb.tree.cr
  is 'Compacted crown ratio';
comment on column fs_fiadb.tree.cclcd
  is 'Crown class code';
comment on column fs_fiadb.tree.treegrcd
  is 'Tree grade code';
comment on column fs_fiadb.tree.agentcd
  is 'Damaging agent code';
comment on column fs_fiadb.tree.cull
  is 'Rotten and missing cull percent - computed and includes percent missing top';
comment on column fs_fiadb.tree.damloc1
  is 'Damage location 1 code';
comment on column fs_fiadb.tree.damtyp1
  is 'Damage type 1 code';
comment on column fs_fiadb.tree.damsev1
  is 'Damage severity 1 code';
comment on column fs_fiadb.tree.damloc2
  is 'Damage location 2 code';
comment on column fs_fiadb.tree.damtyp2
  is 'Damage type 2 code';
comment on column fs_fiadb.tree.damsev2
  is 'Damage severity 2 code';
comment on column fs_fiadb.tree.decaycd
  is 'Dead tree decay code';
comment on column fs_fiadb.tree.stocking
  is 'Tree stocking percent';
comment on column fs_fiadb.tree.wdldstem
  is 'Woodland tree species current stem count';
comment on column fs_fiadb.tree.volcfnet
  is 'Net cubic-foot volume';
comment on column fs_fiadb.tree.volcfgrs
  is 'Gross cubic-foot volume';
comment on column fs_fiadb.tree.volcsnet
  is 'Net cubic-foot volume in the saw-log portion';
comment on column fs_fiadb.tree.volcsgrs
  is 'Gross cubic-foot volume in the saw-log portion';
comment on column fs_fiadb.tree.volbfnet
  is 'Net board-foot volume in the saw-log portion';
comment on column fs_fiadb.tree.volbfgrs
  is 'Gross board-foot volume in the saw-log portion';
comment on column fs_fiadb.tree.volcfsnd
  is 'Sound cubic-foot volume';
comment on column fs_fiadb.tree.diacheck
  is 'Diameter check code';
comment on column fs_fiadb.tree.mortyr
  is 'Mortality year';
comment on column fs_fiadb.tree.salvcd
  is 'Salvable dead code';
comment on column fs_fiadb.tree.uncrcd
  is 'Uncompacted live crown ratio';
comment on column fs_fiadb.tree.cposcd
  is 'Crown position code';
comment on column fs_fiadb.tree.clightcd
  is 'Crown light exposure code';
comment on column fs_fiadb.tree.cvigorcd
  is 'Sapling vigor class code';
comment on column fs_fiadb.tree.cdencd
  is 'Crown density code';
comment on column fs_fiadb.tree.cdiebkcd
  is 'Crown dieback code';
comment on column fs_fiadb.tree.transcd
  is 'Foliage transparency code';
comment on column fs_fiadb.tree.treehistcd
  is 'Tree history code';
comment on column fs_fiadb.tree.bhage
  is 'Breast height age';
comment on column fs_fiadb.tree.totage
  is 'Total tree age';
comment on column fs_fiadb.tree.culldead
  is 'Dead cull';
comment on column fs_fiadb.tree.cullform
  is 'Form cull';
comment on column fs_fiadb.tree.cullmstop
  is 'Missing top cull';
comment on column fs_fiadb.tree.cullbf
  is 'Board-foot cull';
comment on column fs_fiadb.tree.cullcf
  is 'Cubic-foot cull';
comment on column fs_fiadb.tree.bfsnd
  is 'Board-foot-cull soundness';
comment on column fs_fiadb.tree.cfsnd
  is 'Cubic-foot-cull soundness';
comment on column fs_fiadb.tree.sawht
  is 'Sawlog height';
comment on column fs_fiadb.tree.boleht
  is 'Bole height';
comment on column fs_fiadb.tree.formcl
  is 'Form class';
comment on column fs_fiadb.tree.htcalc
  is 'Calculated total height';
comment on column fs_fiadb.tree.hrdwd_clump_cd
  is 'Hardwood clump code';
comment on column fs_fiadb.tree.sitree
  is 'Calculated site index';
comment on column fs_fiadb.tree.created_by
  is 'Created by';
comment on column fs_fiadb.tree.created_date
  is 'Created date';
comment on column fs_fiadb.tree.created_in_instance
  is 'Created in instance';
comment on column fs_fiadb.tree.modified_by
  is 'Modified by';
comment on column fs_fiadb.tree.modified_date
  is 'Modified date';
comment on column fs_fiadb.tree.modified_in_instance
  is 'Modified in instance';
comment on column fs_fiadb.tree.mortcd
  is 'Mortality Code:  tree was live within past five years, but has died.';
comment on column fs_fiadb.tree.htdmp
  is 'Length (height) to diameter measurement point.';
comment on column fs_fiadb.tree.roughcull
  is 'Rough cull percentage';
comment on column fs_fiadb.tree.mist_cl_cd
  is 'Mistletoe class code';
comment on column fs_fiadb.tree.cull_fld
  is 'Rotten and missing cull percent recorded by the field crew';
comment on column fs_fiadb.tree.reconcilecd
  is ' NEW TREE RECONCILEFor remeasurement locations only, record a NEW TREE RECONCILE for any new tally tree that was not tallied in the previous inventory; this code is used to identify the reason a new tree appeared in the inventory.  This information is needed to correctly assign volume information to the proper component of volume change.When Collected: On SAMPLE KIND 2; all new live tally trees = 1.0 inch DBH/DRC (TREE STATUS=1), all new dead tally trees = 5.0 in (TREE STATUS=2)Field width:  1 digitTolerance:  No errorsMQO:  At least 95% of the timeValues:1 Ingrowth - new tally tree not qualifying as through growth (includes reversions).2 Through growth - new tally tree 5 inches DBH/DRC and larger, within the microplot.3 Missed live - a live tree missed at previous inventory and that is live, dead or removed now.4 Missed dead - a dead tree missed at previous inventory and that is dead or removed now. ';
comment on column fs_fiadb.tree.prevdia
  is 'Previous diameter';
comment on column fs_fiadb.tree.p2a_grm_flg
  is 'Periodic to annual growth, removal, and mortality flag. The flag is set to Y for those trees that are needed for estimation and otherwise is left blank (null).';
comment on column fs_fiadb.tree.treeclcd_ners
  is 'Tree class code NERS';
comment on column fs_fiadb.tree.treeclcd_srs
  is 'Tree class code SRS';
comment on column fs_fiadb.tree.treeclcd_ncrs
  is 'Tree class code NCRS';
comment on column fs_fiadb.tree.treeclcd_rmrs
  is 'Tree class code RMRS';
comment on column fs_fiadb.tree.standing_dead_cd
  is 'NA';
comment on column fs_fiadb.tree.prev_status_cd
  is 'NA';
comment on column fs_fiadb.tree.prev_wdldstem
  is 'Woodland tree species previous stem count';
comment on column fs_fiadb.tree.tpa_unadj
  is 'NA';
comment on column fs_fiadb.tree.drybio_bole
  is 'Dry biomass in the bole of trees 5 inches or larger in diameter (pounds)';
comment on column fs_fiadb.tree.drybio_stump
  is 'Dry biomass in the stump of trees 5 inches or larger in diameter (pounds)';
comment on column fs_fiadb.tree.drybio_bg
  is 'Dry biomass in the roots of trees 1 inch and larger in diameter (pounds)';
comment on column fs_fiadb.tree.carbon_ag
  is 'Carbon above ground of trees 1 inch and larger in diameter (pounds)';
comment on column fs_fiadb.tree.carbon_bg
  is 'Carbon below ground of trees 1 inch and larger in diameter (pounds)';
comment on column fs_fiadb.tree.cycle
  is 'Inventory cycle number';
comment on column fs_fiadb.tree.subcycle
  is 'Inventory subcycle number';
comment on column fs_fiadb.tree.bored_cd_pnwrs
  is 'NA';
comment on column fs_fiadb.tree.damloc1_pnwrs
  is 'NA';
comment on column fs_fiadb.tree.damloc2_pnwrs
  is 'NA';
comment on column fs_fiadb.tree.diacheck_pnwrs
  is 'NA';
comment on column fs_fiadb.tree.dmg_agent1_cd_pnwrs
  is 'NA';
comment on column fs_fiadb.tree.dmg_agent2_cd_pnwrs
  is 'NA';
comment on column fs_fiadb.tree.dmg_agent3_cd_pnwrs
  is 'NA';
comment on column fs_fiadb.tree.mist_cl_cd_pnwrs
  is 'NA';
comment on column fs_fiadb.tree.severity1_cd_pnwrs
  is 'NA';
comment on column fs_fiadb.tree.severity1a_cd_pnwrs
  is 'NA';
comment on column fs_fiadb.tree.severity1b_cd_pnwrs
  is 'NA';
comment on column fs_fiadb.tree.severity2_cd_pnwrs
  is 'NA';
comment on column fs_fiadb.tree.severity2a_cd_pnwrs
  is 'NA';
comment on column fs_fiadb.tree.severity2b_cd_pnwrs
  is 'NA';
comment on column fs_fiadb.tree.severity3_cd_pnwrs
  is 'NA';
comment on column fs_fiadb.tree.unknown_damtyp1_pnwrs
  is 'NA';
comment on column fs_fiadb.tree.unknown_damtyp2_pnwrs
  is 'NA';
comment on column fs_fiadb.tree.prev_pntn_srs
  is 'SRS is probably going to add past periodic prism trees into NIMS and FIADB. In some older SE states, the prism point, tree number (PNTN) of the current cycle did not match the previous cycle's prism point, tree number. To be able to join the current and the previous prism plot trees, we need to have the PREV_PNTN_SRS assigned to the current tree record.';
comment on column fs_fiadb.tree.disease_srs
  is 'Regional Disease Code';
comment on column fs_fiadb.tree.dieback_severity_srs
  is 'Regional tree Dieback Severity';
comment on column fs_fiadb.tree.damage_agent_cd1
  is 'Code designating an agent affecting the survival, health, or marketability of the tree';
comment on column fs_fiadb.tree.damage_agent_cd2
  is 'Code designating an agent affecting the survival, health, or marketability of the tree';
comment on column fs_fiadb.tree.damage_agent_cd3
  is 'Code designating an agent affecting the survival, health, or marketability of the tree';
comment on column fs_fiadb.tree.centroid_dia
  is 'Outside bark diameter at stem centroid';
comment on column fs_fiadb.tree.centroid_dia_ht
  is 'Height to stem centroid';
comment on column fs_fiadb.tree.centroid_dia_ht_actual
  is 'Height to where stem centroid diameter was actually measured';
comment on column fs_fiadb.tree.upper_dia
  is 'Outside bark upper stem diameter';
comment on column fs_fiadb.tree.upper_dia_ht
  is 'Height to where upper stem diameter was measured';
comment on column fs_fiadb.tree.volcssnd
  is 'Sound cubic-foot volume in the saw-log portion';
comment on column fs_fiadb.tree.drybio_sawlog
  is 'Dry biomass in the sawlog portion (pounds)';
comment on column fs_fiadb.tree.damage_agent_cd1_srs
  is 'NA';
comment on column fs_fiadb.tree.damage_agent_cd2_srs
  is 'NA';
comment on column fs_fiadb.tree.damage_agent_cd3_srs
  is 'NA';
comment on column fs_fiadb.tree.drybio_ag
  is 'Dry biomass aboveground of trees 1 inch and larger in diameter (pounds)';
comment on column fs_fiadb.tree.actualht_calc
  is 'Actual height of tree, calculated';
comment on column fs_fiadb.tree.actualht_calc_cd
  is 'Code indicating how ACTUALHT_CALC was derived';
comment on column fs_fiadb.tree.cull_bf_rotten
  is 'rotten/missing board foot cull of the sawlog';
comment on column fs_fiadb.tree.cull_bf_rotten_cd
  is 'cull_bf_rotten code';
comment on column fs_fiadb.tree.cull_bf_rough
  is 'rough board foot cull of the sawlog';
comment on column fs_fiadb.tree.cull_bf_rough_cd
  is 'cull_bf_rough code';
comment on column fs_fiadb.tree.prevdia_fld
  is 'Previous diameter taken in the field';
comment on column fs_fiadb.tree.treeclcd_31_ncrs
  is 'tree class taken new in field guide version 31';
comment on column fs_fiadb.tree.tree_grade_ncrs
  is 'tree grade code';
comment on column fs_fiadb.tree.boughs_available_ncrs
  is 'balsam fir boughs available code';
comment on column fs_fiadb.tree.boughs_hrvst_ncrs
  is 'balsam fir boughs harvested code';
comment on column fs_fiadb.tree.treeclcd_31_ners
  is 'tree class taken new in field guide version 31';
comment on column fs_fiadb.tree.agentcd_ners
  is 'cause of death: national with regional collection violation';
comment on column fs_fiadb.tree.bfsndcd_ners
  is 'board foot soundness code';
comment on column fs_fiadb.tree.agechkcd_rmrs
  is 'age check code';
comment on column fs_fiadb.tree.prev_agechkcd_rmrs
  is 'previous age check code';
comment on column fs_fiadb.tree.prev_bhage_rmrs
  is 'previous breast height age';
comment on column fs_fiadb.tree.prev_totage_rmrs
  is 'previous total tree age';
comment on column fs_fiadb.tree.prev_treeclcd_rmrs
  is 'previous inventory tree class code';
comment on column fs_fiadb.tree.radagecd_rmrs
  is 'radial growth/age code';
comment on column fs_fiadb.tree.radgrw_rmrs
  is '10 yr radial increment in 20th" (=10 yr dia in 10th")';
comment on column fs_fiadb.tree.volbsgrs
  is 'gross scribner board-foot volume in the saw-log portion';
comment on column fs_fiadb.tree.volbsnet
  is 'net scribner board-foot volume in the saw-log portion';
comment on column fs_fiadb.tree.sapling_fusiform_srs
  is 'incidence of fusiform occurring on the main stem or on a live branch within 12 inches of the main stem';
comment on column fs_fiadb.tree.epiphyte_pnwrs
  is 'NA';
comment on column fs_fiadb.tree.root_ht_pnwrs
  is 'NA';
comment on column fs_fiadb.tree.cavity_use_pnwrs
  is 'cavity presence code';
comment on column fs_fiadb.tree.core_length_pnwrs
  is 'Length of measured core (Portland FSL), PNWRS';
comment on column fs_fiadb.tree.culturally_killed_pnwrs
  is 'A code to identify cut trees that have been killed by direct human intervention (Anchorage FSL, Portland FSL), PNWRS';
comment on column fs_fiadb.tree.dia_est_pnwrs
  is 'Snag estimated diameter (Anchorage FSL, Portland FSL), PNWRS';
comment on column fs_fiadb.tree.gst_pnwrs
  is 'growth sample tree';
comment on column fs_fiadb.tree.inc10yr_pnwrs
  is '10-year increment';
comment on column fs_fiadb.tree.inc5yrht_pnwrs
  is '5-year height growth';
comment on column fs_fiadb.tree.inc5yr_pnwrs
  is '5-year increment';
comment on column fs_fiadb.tree.ring_count_inner_2inches_pnwrs
  is 'Number of rings in inner 2 inches in the core (Portland FSL), PNWRS';
comment on column fs_fiadb.tree.ring_count_pnwrs
  is 'Number of rings in the core (Portland FSL), PNWRS';
comment on column fs_fiadb.tree.snag_dis_cd_pnwrs
  is 'snag reason for disappearance';
comment on column fs_fiadb.tree.coneprescd1
  is 'Denotes cone presence (1) on Pinyon pine trees greater than 5 inch drc, valid codes 0-3.';
comment on column fs_fiadb.tree.coneprescd2
  is 'Denotes cone presence (2) on Pinyon pine trees greater than 5 inch drc, valid codes 0-3.';
comment on column fs_fiadb.tree.coneprescd3
  is 'Denotes cone presence (3) on Pinyon pine trees greater than 5 inch drc, valid codes 0-3.';
comment on column fs_fiadb.tree.mastcd
  is 'Code reflecting the amount or degree of masting occurring in pinyon stands at time of visit, valid codes 0-6.';
comment on column fs_fiadb.tree.voltsgrs
  is 'Gross total stem wood cubic foot volume.';
comment on column fs_fiadb.tree.voltsgrs_bark
  is 'Gross total stem bark cubic foot volume.';
comment on column fs_fiadb.tree.voltssnd
  is 'Sound total stem wood cubic foot volume.';
comment on column fs_fiadb.tree.voltssnd_bark
  is 'Sound total stem bark cubic foot volume.';
comment on column fs_fiadb.tree.volcfgrs_stump
  is 'Gross stump wood cubic foot volume for trees 5 inches and larger.';
comment on column fs_fiadb.tree.volcfgrs_stump_bark
  is 'Gross stump bark cubic foot volume for trees 5 inches and larger.';
comment on column fs_fiadb.tree.volcfsnd_stump
  is 'Sound stump wood cubic foot volume for trees 5 inches and larger.';
comment on column fs_fiadb.tree.volcfsnd_stump_bark
  is 'Sound stump bark cubic foot volume for trees 5 inches and larger.';
comment on column fs_fiadb.tree.volcfgrs_bark
  is 'Gross cubic-foot bark volume';
comment on column fs_fiadb.tree.volcfgrs_top
  is 'Gross cubic-foot wood volume in the 4-inch dob to top for trees 5 inches and larger.';
comment on column fs_fiadb.tree.volcfgrs_top_bark
  is 'Gross cubic-foot bark volume in the 4-inch dob to top for trees 5 inches and larger.';
comment on column fs_fiadb.tree.volcfsnd_bark
  is 'Sound cubic-foot bark volume';
comment on column fs_fiadb.tree.volcfsnd_top
  is 'Sound cubic-foot wood volume in the 4-inch dob to top for trees 5 inches and larger.';
comment on column fs_fiadb.tree.volcfsnd_top_bark
  is 'Sound cubic-foot wood volume in the 4-inch dob to top for trees 5 inches and larger.';
comment on column fs_fiadb.tree.volcfnet_bark
  is 'Net cubic-foot wood volume';
comment on column fs_fiadb.tree.volcsgrs_bark
  is 'Gross cubic-foot wood volume in the saw-log portion';
comment on column fs_fiadb.tree.volcssnd_bark
  is 'Sound cubic-foot wood volume in the saw-log portion';
comment on column fs_fiadb.tree.volcsnet_bark
  is 'Net cubic-foot wood volume in the saw-log portion';
comment on column fs_fiadb.tree.drybio_stem
  is 'Wood dry biomass for the total stem of trees 5 inches or larger in diameter (pounds)';
comment on column fs_fiadb.tree.drybio_stem_bark
  is 'Bark dry biomass for the total stem of trees 5 inches or larger in diameter (pounds)';
comment on column fs_fiadb.tree.drybio_stump_bark
  is 'Bark dry biomass in the stump of trees 5 inches or larger in diameter (pounds)';
comment on column fs_fiadb.tree.drybio_bole_bark
  is 'Bark dry biomass in the bole of trees 5 inches or larger in diameter (pounds)';
comment on column fs_fiadb.tree.drybio_branch
  is 'Dry biomass in the branches of trees 1 inches or larger in diameter (pounds)';
comment on column fs_fiadb.tree.drybio_foliage
  is 'Foliage biomass in trees 1 inches or larger in diameter (pounds)';
comment on column fs_fiadb.tree.drybio_sawlog_bark
  is 'Bark dry biomass in the sawlog portion (pounds)';
comment on column fs_fiadb.tree.prev_actualht_fld
  is 'Previous inventory actual height';
comment on column fs_fiadb.tree.prev_ht_fld
  is 'Previous inventory height';
comment on column fs_fiadb.tree.utilclcd
  is 'New column to store new national utilization code';
create index TRE_NAT_I on FS_FIADB.TREE (STATECD, INVYR, UNITCD, COUNTYCD, PLOT, SUBP, TREE);
create index TRE_SPGRPCD on FS_FIADB.TREE (SPGRPCD);
create index TRE_PLT_CN_CONDID on FS_FIADB.TREE (PLT_CN, CONDID);
create index TRE_PLT_FK_I on FS_FIADB.TREE (PLT_CN);
create index TRE_SPCD on FS_FIADB.TREE (SPCD);
alter table FS_FIADB.TREE add constraint TRE_PK primary key (CN);
alter table FS_FIADB.TREE add constraint TRE_UK unique (PLT_CN, SUBP, TREE);
alter table FS_FIADB.TREE add constraint TRE_PLT_FK foreign key (PLT_CN) references FS_FIADB.PLOT (CN);