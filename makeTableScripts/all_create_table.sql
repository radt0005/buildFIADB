CREATE TABLE fs_fiadb.ref_sieqn
(
cn                   VARCHAR(34) NOT NULL,
sieqn_ref_cd         VARCHAR(10),
sieqn_ref_notes      VARCHAR(540),
sieqn_loc_desc_fsveg VARCHAR(100),
sieqn_age_basis      VARCHAR(10),
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6)
);
comment on column fs_fiadb.ref_sieqn.cn
  is 'Unique record identifier for the current hierarchy record';
comment on column fs_fiadb.ref_sieqn.sieqn_ref_cd
  is 'Site index equation code';
comment on column fs_fiadb.ref_sieqn.sieqn_ref_notes
  is 'Site index equation references and notes';
comment on column fs_fiadb.ref_sieqn.sieqn_loc_desc_fsveg
  is 'Site index equation coverage are in FSVeg';
comment on column fs_fiadb.ref_sieqn.sieqn_age_basis
  is 'Base age basis';
comment on column fs_fiadb.ref_sieqn.created_by
  is 'Created by';
comment on column fs_fiadb.ref_sieqn.created_date
  is 'Created Date ';
comment on column fs_fiadb.ref_sieqn.created_in_instance
  is 'Created in Instance ';
comment on column fs_fiadb.ref_sieqn.modified_by
  is 'Modified by ';
comment on column fs_fiadb.ref_sieqn.modified_date
  is 'Modified Date';
comment on column fs_fiadb.ref_sieqn.modified_in_instance
  is 'Modified in Instance ';
CREATE TABLE fs_fiadb.ref_plant_dictionary
(
cn                       VARCHAR(34) NOT NULL,
symbol_type              VARCHAR(20) NOT NULL,
symbol                   VARCHAR(16) NOT NULL,
scientific_name          VARCHAR(100),
new_symbol               VARCHAR(16),
new_scientific_name      VARCHAR(100),
common_name              VARCHAR(100),
category                 VARCHAR(15),
family                   VARCHAR(25),
growth_habit             VARCHAR(50),
duration                 VARCHAR(50),
us_nativity              VARCHAR(100),
state_distribution       VARCHAR(300),
state_and_province       VARCHAR(500),
scientific_name_w_author VARCHAR(500),
genera_binomial_author   VARCHAR(100),
trinomial_author         VARCHAR(100),
quadrinomial_author      VARCHAR(100),
xgenus                   VARCHAR(1),
genus                    VARCHAR(40),
xspecies                 VARCHAR(1),
species                  VARCHAR(50),
ssp                      VARCHAR(4),
xsubspecies              VARCHAR(1),
subspecies               VARCHAR(30),
var                      VARCHAR(4),
xvariety                 VARCHAR(1),
variety                  VARCHAR(30),
subvar                   VARCHAR(7),
subvariety               VARCHAR(30),
f                        VARCHAR(2),
forma                    VARCHAR(30),
notes                    VARCHAR(2000),
created_by               VARCHAR(30),
created_date             TIMESTAMP(0),
created_in_instance      VARCHAR(6),
modified_by              VARCHAR(30),
modified_date            TIMESTAMP(0),
modified_in_instance     VARCHAR(6)
);
comment on column fs_fiadb.ref_plant_dictionary.cn
  is 'Sequence number (surrogate primary key';
comment on column fs_fiadb.ref_plant_dictionary.symbol_type
  is 'Symbol Type describes the type of NRCS symbol (from 2000 download): Species - accepted symbol identified to species, subspecies or variety; Genus - accepted symbol identified to Genus;  Old - synonym symbol for an old scientific name; Unknown - symbol to identify generic categories of unknown plants.';
comment on column fs_fiadb.ref_plant_dictionary.symbol
  is 'Symbol is the NRCS code (2000 download) used to represent a plant species.';
comment on column fs_fiadb.ref_plant_dictionary.scientific_name
  is 'Scientific Name for the plant symbol.';
comment on column fs_fiadb.ref_plant_dictionary.new_symbol
  is 'New Symbol is only populated for Symbol Type 'Old'.  It represents the new NRCS accepted code that has been reclassified from the Old synonym symbol.';
comment on column fs_fiadb.ref_plant_dictionary.new_scientific_name
  is 'New Scientific Namel is only populated for Symbol Type 'Old'.  It represents the new NRCS accepted scientific name that has been reclassified from the Old synonym scientific name.';
comment on column fs_fiadb.ref_plant_dictionary.common_name
  is 'Common Name for the symbol.';
comment on column fs_fiadb.ref_plant_dictionary.category
  is 'Category indicates the broad taxonomic category for the symbol: Dicot, Fern, Gymnosperm, Horsetail, Lycopod, Monocot, Psilophyte, Quillwort.  (Please note that Unknown symbols do not have a category.)';
comment on column fs_fiadb.ref_plant_dictionary.family
  is 'Plant Family of symbol';
comment on column fs_fiadb.ref_plant_dictionary.growth_habit
  is 'Growth Habit of symbol according to NRCS 2000: Forb/herb, Graminoid, Liana, Shrub, Subshrub, Tree, Vine.  Some plants have different Growth Habits depending on environment or location, so a plant can have more than one value.';
comment on column fs_fiadb.ref_plant_dictionary.duration
  is 'Duration of plant according to NRCS 2000: Annual, Biennial, Perennial, Unknown.  Some plants have different Durations depending on environment or location, so a plant can have more than one value.';
comment on column fs_fiadb.ref_plant_dictionary.us_nativity
  is 'US Nativity of symbol.  A plant that is native to any part of the US is considered Native, even if some populations within the United States are introduced.  However, a plant like dandelion (Taraxacum officinale) with some populations that are native to the US and some that are native to another country is considered Native and Introduced.';
comment on column fs_fiadb.ref_plant_dictionary.state_distribution
  is 'State Distribution of plant according to NRCS download in 09-Nov-2007.  This was the only update to NRCS 2000 plant list for this NIMS reference table.';
comment on column fs_fiadb.ref_plant_dictionary.state_and_province
  is 'State and Province distribution of plant according to NRCS 2010.';
comment on column fs_fiadb.ref_plant_dictionary.scientific_name_w_author
  is 'Scientific name with author';
comment on column fs_fiadb.ref_plant_dictionary.genera_binomial_author
  is 'Genera binomial author';
comment on column fs_fiadb.ref_plant_dictionary.trinomial_author
  is 'Trinomial author';
comment on column fs_fiadb.ref_plant_dictionary.quadrinomial_author
  is 'Quadrinomial author';
comment on column fs_fiadb.ref_plant_dictionary.xgenus
  is 'Cross-Genus hybridization indicator.';
comment on column fs_fiadb.ref_plant_dictionary.genus
  is 'Genus';
comment on column fs_fiadb.ref_plant_dictionary.xspecies
  is 'Cross-Species hybridization indicator.';
comment on column fs_fiadb.ref_plant_dictionary.species
  is 'Species';
comment on column fs_fiadb.ref_plant_dictionary.ssp
  is 'Subspecies indicator 'ssp.'';
comment on column fs_fiadb.ref_plant_dictionary.xsubspecies
  is 'Cross-Subspecies hybridization indicator.';
comment on column fs_fiadb.ref_plant_dictionary.subspecies
  is 'Subspecies';
comment on column fs_fiadb.ref_plant_dictionary.var
  is 'Variety indicator 'var.'';
comment on column fs_fiadb.ref_plant_dictionary.xvariety
  is 'Cross-Variety hybridization indicator.';
comment on column fs_fiadb.ref_plant_dictionary.variety
  is 'Variety';
comment on column fs_fiadb.ref_plant_dictionary.subvar
  is 'Subspecies indicator 'subvar.'';
comment on column fs_fiadb.ref_plant_dictionary.subvariety
  is 'Subvariety';
comment on column fs_fiadb.ref_plant_dictionary.f
  is 'Forma indicator 'f.'';
comment on column fs_fiadb.ref_plant_dictionary.forma
  is 'Forma';
comment on column fs_fiadb.ref_plant_dictionary.notes
  is 'Field notes pertaining to this record';
comment on column fs_fiadb.ref_plant_dictionary.created_by
  is 'Created by';
comment on column fs_fiadb.ref_plant_dictionary.created_date
  is 'Created Date ';
comment on column fs_fiadb.ref_plant_dictionary.created_in_instance
  is 'Created in Instance ';
comment on column fs_fiadb.ref_plant_dictionary.modified_by
  is 'Modified by ';
comment on column fs_fiadb.ref_plant_dictionary.modified_date
  is 'Modified Date';
comment on column fs_fiadb.ref_plant_dictionary.modified_in_instance
  is 'Modified in Instance ';
CREATE TABLE fs_fiadb.ref_fvs_var_name
(
cn                   VARCHAR(34) NOT NULL,
fvs_variant          VARCHAR(2),
fvs_var_name         VARCHAR(65),
manual_start         DECIMAL(3,1),
manual_end           DECIMAL(3,1),
allowed_in_field     VARCHAR(1),
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6)
);
comment on column fs_fiadb.ref_fvs_var_name.cn
  is 'Sequence number (surrogate primary key)';
comment on column fs_fiadb.ref_fvs_var_name.fvs_variant
  is 'FVS variant';
comment on column fs_fiadb.ref_fvs_var_name.fvs_var_name
  is 'FVS variant name';
comment on column fs_fiadb.ref_fvs_var_name.manual_start
  is 'Manual start';
comment on column fs_fiadb.ref_fvs_var_name.manual_end
  is 'Manual end';
comment on column fs_fiadb.ref_fvs_var_name.allowed_in_field
  is 'Allowed in field';
comment on column fs_fiadb.ref_fvs_var_name.created_by
  is 'Created by';
comment on column fs_fiadb.ref_fvs_var_name.created_date
  is 'Created date';
comment on column fs_fiadb.ref_fvs_var_name.created_in_instance
  is 'Created in instance';
comment on column fs_fiadb.ref_fvs_var_name.modified_by
  is 'Modified by';
comment on column fs_fiadb.ref_fvs_var_name.modified_date
  is 'Modified date';
comment on column fs_fiadb.ref_fvs_var_name.modified_in_instance
  is 'Modified in instance';
CREATE TABLE fs_fiadb.ref_fvs_loc_name
(
cn                   VARCHAR(34) NOT NULL,
fvs_loc_cd           INTEGER NOT NULL,
fvs_loc_cd_name      VARCHAR(70),
manual_start         DECIMAL(3,1),
manual_end           DECIMAL(3,1),
allowed_in_field     VARCHAR(1),
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6)
);
comment on column fs_fiadb.ref_fvs_loc_name.cn
  is 'Sequence number (surrogate primary key)';
comment on column fs_fiadb.ref_fvs_loc_name.fvs_loc_cd
  is 'FVS location code';
comment on column fs_fiadb.ref_fvs_loc_name.fvs_loc_cd_name
  is 'FVS location name';
comment on column fs_fiadb.ref_fvs_loc_name.manual_start
  is 'Manual start';
comment on column fs_fiadb.ref_fvs_loc_name.manual_end
  is 'Manual end';
comment on column fs_fiadb.ref_fvs_loc_name.allowed_in_field
  is 'Allowed in field';
comment on column fs_fiadb.ref_fvs_loc_name.created_by
  is 'Created by';
comment on column fs_fiadb.ref_fvs_loc_name.created_date
  is 'Created date';
comment on column fs_fiadb.ref_fvs_loc_name.created_in_instance
  is 'Created in instance';
comment on column fs_fiadb.ref_fvs_loc_name.modified_by
  is 'Modified by';
comment on column fs_fiadb.ref_fvs_loc_name.modified_date
  is 'Modified date';
comment on column fs_fiadb.ref_fvs_loc_name.modified_in_instance
  is 'Modified in instance';
CREATE TABLE fs_fiadb.ref_damage_agent_group
(
code                 INTEGER NOT NULL,
description          VARCHAR(80) NOT NULL,
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6)
);
comment on column fs_fiadb.ref_damage_agent_group.code
  is 'Damage agent group code';
comment on column fs_fiadb.ref_damage_agent_group.description
  is 'Description of the damage agent group';
comment on column fs_fiadb.ref_damage_agent_group.created_by
  is 'Created by';
comment on column fs_fiadb.ref_damage_agent_group.created_date
  is 'Created Date ';
comment on column fs_fiadb.ref_damage_agent_group.created_in_instance
  is 'Created in Instance ';
comment on column fs_fiadb.ref_damage_agent_group.modified_by
  is 'Modified by ';
comment on column fs_fiadb.ref_damage_agent_group.modified_date
  is 'Modified Date';
comment on column fs_fiadb.ref_damage_agent_group.modified_in_instance
  is 'Modified in Instance ';
CREATE TABLE fs_fiadb.ref_damage_agent
(
code                 INTEGER NOT NULL,
common_name          VARCHAR(80) NOT NULL,
scientific_name      VARCHAR(80),
threshold            VARCHAR(2000),
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6),
dag_code             INTEGER
);
comment on column fs_fiadb.ref_damage_agent.code
  is 'Tree damage agent code';
comment on column fs_fiadb.ref_damage_agent.common_name
  is 'The common name of the tree damage agent';
comment on column fs_fiadb.ref_damage_agent.scientific_name
  is 'The scientific name of the tree damage agent';
comment on column fs_fiadb.ref_damage_agent.threshold
  is 'The threshold required before recording the tree damage agent';
comment on column fs_fiadb.ref_damage_agent.created_by
  is 'Created by';
comment on column fs_fiadb.ref_damage_agent.created_date
  is 'Created Date ';
comment on column fs_fiadb.ref_damage_agent.created_in_instance
  is 'Created in Instance ';
comment on column fs_fiadb.ref_damage_agent.modified_by
  is 'Modified by ';
comment on column fs_fiadb.ref_damage_agent.modified_date
  is 'Modified Date';
comment on column fs_fiadb.ref_damage_agent.modified_in_instance
  is 'Modified in Instance ';
comment on column fs_fiadb.ref_damage_agent.dag_code
  is 'NA';
CREATE TABLE fs_fiadb.ref_owngrpcd
(
owngrpcd             INTEGER NOT NULL,
meaning              VARCHAR(100) NOT NULL,
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6)
);
comment on column fs_fiadb.ref_owngrpcd.owngrpcd
  is 'Owner group code.';
comment on column fs_fiadb.ref_owngrpcd.meaning
  is 'NA';
comment on column fs_fiadb.ref_owngrpcd.created_by
  is 'Created by';
comment on column fs_fiadb.ref_owngrpcd.created_date
  is 'Created Date';
comment on column fs_fiadb.ref_owngrpcd.created_in_instance
  is 'Created in Instance';
comment on column fs_fiadb.ref_owngrpcd.modified_by
  is 'Modified by';
comment on column fs_fiadb.ref_owngrpcd.modified_date
  is 'Modified Date';
comment on column fs_fiadb.ref_owngrpcd.modified_in_instance
  is 'Modified in Instance';
CREATE TABLE fs_fiadb.ref_difference_test_per_acre
(
cn                   VARCHAR(34) NOT NULL,
comparison           VARCHAR(4000) NOT NULL,
comparison_type      VARCHAR(4000) NOT NULL,
attribute_nbr        VARCHAR(10) NOT NULL,
sql                  TEXT NOT NULL,
notes                VARCHAR(4000),
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6)
);
comment on column fs_fiadb.ref_difference_test_per_acre.cn
  is 'Unique index';
comment on column fs_fiadb.ref_difference_test_per_acre.comparison
  is 'Estimate attribute compared between current inventory and previous visit';
comment on column fs_fiadb.ref_difference_test_per_acre.comparison_type
  is 'Type of comparison';
comment on column fs_fiadb.ref_difference_test_per_acre.attribute_nbr
  is 'Attribute number analogous to REF_POP_ATTRIBUTE.ATTRIBUTE_NBR';
comment on column fs_fiadb.ref_difference_test_per_acre.sql
  is 'SQL to run the comparision';
comment on column fs_fiadb.ref_difference_test_per_acre.notes
  is 'Notes';
comment on column fs_fiadb.ref_difference_test_per_acre.created_by
  is 'Created by';
comment on column fs_fiadb.ref_difference_test_per_acre.created_date
  is 'Created date';
comment on column fs_fiadb.ref_difference_test_per_acre.created_in_instance
  is 'Created in instance';
comment on column fs_fiadb.ref_difference_test_per_acre.modified_by
  is 'Modified by';
comment on column fs_fiadb.ref_difference_test_per_acre.modified_date
  is 'Modified date';
comment on column fs_fiadb.ref_difference_test_per_acre.modified_in_instance
  is 'Modified in instance';
CREATE TABLE fs_fiadb.ref_difference_test_totals
(
cn                   VARCHAR(34) NOT NULL,
comparison           VARCHAR(4000) NOT NULL,
comparison_type      VARCHAR(4000) NOT NULL,
attribute_nbr        VARCHAR(10) NOT NULL,
sql                  TEXT NOT NULL,
notes                VARCHAR(4000),
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6)
);
comment on column fs_fiadb.ref_difference_test_totals.cn
  is 'Unique index';
comment on column fs_fiadb.ref_difference_test_totals.comparison
  is 'Estimate attribute compared between current inventory and previous visit';
comment on column fs_fiadb.ref_difference_test_totals.comparison_type
  is 'Type of comparison';
comment on column fs_fiadb.ref_difference_test_totals.attribute_nbr
  is 'Attribute number analogous to REF_POP_ATTRIBUTE.ATTRIBUTE_NBR';
comment on column fs_fiadb.ref_difference_test_totals.sql
  is 'SQL to run the comparision';
comment on column fs_fiadb.ref_difference_test_totals.notes
  is 'Notes';
comment on column fs_fiadb.ref_difference_test_totals.created_by
  is 'Created by';
comment on column fs_fiadb.ref_difference_test_totals.created_date
  is 'Created date';
comment on column fs_fiadb.ref_difference_test_totals.created_in_instance
  is 'Created in instance';
comment on column fs_fiadb.ref_difference_test_totals.modified_by
  is 'Modified by';
comment on column fs_fiadb.ref_difference_test_totals.modified_date
  is 'Modified date';
comment on column fs_fiadb.ref_difference_test_totals.modified_in_instance
  is 'Modified in instance';
CREATE TABLE fs_fiadb.ref_grm_type
(
cn                   VARCHAR(34) NOT NULL,
rscd                 INTEGER NOT NULL,
statecd              INTEGER NOT NULL,
start_invyr          INTEGER NOT NULL,
end_invyr            INTEGER,
grm_typ              VARCHAR(15) NOT NULL,
grow_typ_cd          INTEGER,
mort_typ_cd          INTEGER,
remv_typ_cd          INTEGER,
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6),
timberland_only      VARCHAR(1) NOT NULL,
grm_build_location   VARCHAR(5) NOT NULL
);
comment on column fs_fiadb.ref_grm_type.cn
  is 'Sequence number (surrogate primary key';
comment on column fs_fiadb.ref_grm_type.rscd
  is 'Region or Station Code';
comment on column fs_fiadb.ref_grm_type.statecd
  is 'State Code';
comment on column fs_fiadb.ref_grm_type.start_invyr
  is 'Starting Inventory Year';
comment on column fs_fiadb.ref_grm_type.end_invyr
  is 'Ending Inventory Year';
comment on column fs_fiadb.ref_grm_type.grm_typ
  is 'GRM Type. P2P = Periodic to Periodic, P2A = Periodic to Annual, A2A = Annual to Annual';
comment on column fs_fiadb.ref_grm_type.grow_typ_cd
  is 'Type of annual growth code. 1 = Current Annual (growth within last year), 2 = Periodic Annual (growth since previous plot visit)';
comment on column fs_fiadb.ref_grm_type.mort_typ_cd
  is 'Type of annual mortality code. 1 = Current Annual (mortality within last year), 2 = Periodic Annual (morality since previous plot visit)';
comment on column fs_fiadb.ref_grm_type.remv_typ_cd
  is 'Type of annual removal code. 0 = No estimate, 2 = Periodic Annual (removal since previous plot visit)';
comment on column fs_fiadb.ref_grm_type.created_by
  is 'Created by';
comment on column fs_fiadb.ref_grm_type.created_date
  is 'Created date';
comment on column fs_fiadb.ref_grm_type.created_in_instance
  is 'Created in instance';
comment on column fs_fiadb.ref_grm_type.modified_by
  is 'Modified by ';
comment on column fs_fiadb.ref_grm_type.modified_date
  is 'Modified Date';
comment on column fs_fiadb.ref_grm_type.modified_in_instance
  is 'Modified in Instance ';
comment on column fs_fiadb.ref_grm_type.timberland_only
  is 'Y if estimates are for timberland only, N if reserved lands sampled at t and t-1 for change est., or reserved sampled at t for current est.';
comment on column fs_fiadb.ref_grm_type.grm_build_location
  is 'Identifies the system in which TREE table GRM data is transformed into the TREE_GRM tables; legal values are NIMS, FIADB, or N/A.';
CREATE TABLE fs_fiadb.subplot_regen
(
cn                         VARCHAR(34) NOT NULL,
plt_cn                     VARCHAR(34) NOT NULL,
sbp_cn                     VARCHAR(34) NOT NULL,
invyr                      INTEGER NOT NULL,
statecd                    INTEGER NOT NULL,
unitcd                     INTEGER NOT NULL,
countycd                   INTEGER NOT NULL,
plot                       INTEGER NOT NULL,
subp                       INTEGER NOT NULL,
regen_subp_status_cd       INTEGER,
regen_nonsample_reasn_cd   INTEGER,
subplot_site_limitations   INTEGER,
microplot_site_limitations INTEGER,
created_by                 VARCHAR(30),
created_date               TIMESTAMP(0),
created_in_instance        VARCHAR(6),
modified_by                VARCHAR(30),
modified_date              TIMESTAMP(0),
modified_in_instance       VARCHAR(6),
cycle                      INTEGER,
subcycle                   INTEGER,
regen_micr_status_cd       INTEGER
);
comment on column fs_fiadb.subplot_regen.cn
  is 'Sequence number (surrogate primary key';
comment on column fs_fiadb.subplot_regen.plt_cn
  is 'Foreign key to Plot table CN';
comment on column fs_fiadb.subplot_regen.sbp_cn
  is 'Foreign key to Subplot table CN';
comment on column fs_fiadb.subplot_regen.invyr
  is 'NA';
comment on column fs_fiadb.subplot_regen.statecd
  is 'State code';
comment on column fs_fiadb.subplot_regen.unitcd
  is 'Survey unit code';
comment on column fs_fiadb.subplot_regen.countycd
  is 'County code';
comment on column fs_fiadb.subplot_regen.plot
  is 'Plot number';
comment on column fs_fiadb.subplot_regen.subp
  is 'Subplot number';
comment on column fs_fiadb.subplot_regen.regen_subp_status_cd
  is 'Regeneration subplot status code';
comment on column fs_fiadb.subplot_regen.regen_nonsample_reasn_cd
  is 'Regeneration subplot or microplot nonsampled reason code';
comment on column fs_fiadb.subplot_regen.subplot_site_limitations
  is 'Record 2 or 3 if site limitations occur on at least 30% of subplot or con';
comment on column fs_fiadb.subplot_regen.microplot_site_limitations
  is 'Record 2, 3, or 4 if site limitations dominate the area of the microplot or con';
comment on column fs_fiadb.subplot_regen.created_by
  is 'Created by';
comment on column fs_fiadb.subplot_regen.created_date
  is 'Created Date ';
comment on column fs_fiadb.subplot_regen.created_in_instance
  is 'Created in Instance ';
comment on column fs_fiadb.subplot_regen.modified_by
  is 'Modified by ';
comment on column fs_fiadb.subplot_regen.modified_date
  is 'Modified Date';
comment on column fs_fiadb.subplot_regen.modified_in_instance
  is 'Modified in Instance ';
comment on column fs_fiadb.subplot_regen.cycle
  is 'Inventory cycle number';
comment on column fs_fiadb.subplot_regen.subcycle
  is 'Inventory subcycle number';
comment on column fs_fiadb.subplot_regen.regen_micr_status_cd
  is 'Regeneration microplot status code';
CREATE TABLE fs_fiadb.seedling_regen
(
cn                   VARCHAR(34) NOT NULL,
plt_cn               VARCHAR(34) NOT NULL,
cnd_cn               VARCHAR(34) NOT NULL,
scd_cn               VARCHAR(34) NOT NULL,
invyr                INTEGER NOT NULL,
statecd              INTEGER NOT NULL,
unitcd               INTEGER NOT NULL,
countycd             INTEGER NOT NULL,
plot                 INTEGER NOT NULL,
subp                 INTEGER NOT NULL,
condid               INTEGER NOT NULL,
spcd                 DOUBLE PRECISION NOT NULL,
spgrpcd              INTEGER,
seedling_source_cd   VARCHAR(2) NOT NULL,
length_class_cd      INTEGER NOT NULL,
seedlingcount        INTEGER NOT NULL,
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6),
cycle                INTEGER,
subcycle             INTEGER,
tpa_unadj            DECIMAL(11,6)
);
comment on column fs_fiadb.seedling_regen.cn
  is 'Sequence number (surrogate primary key';
comment on column fs_fiadb.seedling_regen.plt_cn
  is 'Foreign key to Plot table CN';
comment on column fs_fiadb.seedling_regen.cnd_cn
  is 'Foreign key to Cond table CN';
comment on column fs_fiadb.seedling_regen.scd_cn
  is 'Foreign key to Subp Cond table CN';
comment on column fs_fiadb.seedling_regen.invyr
  is 'NA';
comment on column fs_fiadb.seedling_regen.statecd
  is 'State code';
comment on column fs_fiadb.seedling_regen.unitcd
  is 'Survey unit code';
comment on column fs_fiadb.seedling_regen.countycd
  is 'County code';
comment on column fs_fiadb.seedling_regen.plot
  is 'Plot number';
comment on column fs_fiadb.seedling_regen.subp
  is 'Subplot number';
comment on column fs_fiadb.seedling_regen.condid
  is 'NA';
comment on column fs_fiadb.seedling_regen.spcd
  is 'Species code';
comment on column fs_fiadb.seedling_regen.spgrpcd
  is 'Species group code';
comment on column fs_fiadb.seedling_regen.seedling_source_cd
  is 'Seedling source code';
comment on column fs_fiadb.seedling_regen.length_class_cd
  is 'Length class code';
comment on column fs_fiadb.seedling_regen.seedlingcount
  is 'Count of qualifying seedlings';
comment on column fs_fiadb.seedling_regen.created_by
  is 'Created by';
comment on column fs_fiadb.seedling_regen.created_date
  is 'Created Date';
comment on column fs_fiadb.seedling_regen.created_in_instance
  is 'Created in Instance';
comment on column fs_fiadb.seedling_regen.modified_by
  is 'Modified by';
comment on column fs_fiadb.seedling_regen.modified_date
  is 'Modified Date';
comment on column fs_fiadb.seedling_regen.modified_in_instance
  is 'Modified in Instance';
comment on column fs_fiadb.seedling_regen.cycle
  is 'Inventory cycle number';
comment on column fs_fiadb.seedling_regen.subcycle
  is 'Inventory subcycle number';
comment on column fs_fiadb.seedling_regen.tpa_unadj
  is 'Unadjusted Trees per acre';
CREATE TABLE fs_fiadb.plot_regen
(
cn                   VARCHAR(34) NOT NULL,
plt_cn               VARCHAR(34) NOT NULL,
invyr                INTEGER NOT NULL,
statecd              INTEGER NOT NULL,
unitcd               INTEGER NOT NULL,
countycd             INTEGER NOT NULL,
plot                 INTEGER NOT NULL,
browse_impact        INTEGER,
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6),
cycle                INTEGER,
subcycle             INTEGER
);
comment on column fs_fiadb.plot_regen.cn
  is 'Sequence number (surrogate primary key)';
comment on column fs_fiadb.plot_regen.plt_cn
  is 'Foreign key to Plot table CN';
comment on column fs_fiadb.plot_regen.invyr
  is 'NA';
comment on column fs_fiadb.plot_regen.statecd
  is 'State code';
comment on column fs_fiadb.plot_regen.unitcd
  is 'Survey unit code';
comment on column fs_fiadb.plot_regen.countycd
  is 'County code';
comment on column fs_fiadb.plot_regen.plot
  is 'Plot number';
comment on column fs_fiadb.plot_regen.browse_impact
  is 'Amount of browsing pressure that deer have on regen';
comment on column fs_fiadb.plot_regen.created_by
  is 'Created by';
comment on column fs_fiadb.plot_regen.created_date
  is 'Created Date ';
comment on column fs_fiadb.plot_regen.created_in_instance
  is 'Created in Instance ';
comment on column fs_fiadb.plot_regen.modified_by
  is 'Modified by ';
comment on column fs_fiadb.plot_regen.modified_date
  is 'Modified Date';
comment on column fs_fiadb.plot_regen.modified_in_instance
  is 'Modified in Instance ';
comment on column fs_fiadb.plot_regen.cycle
  is 'Inventory cycle number';
comment on column fs_fiadb.plot_regen.subcycle
  is 'Inventory subcycle number';
CREATE TABLE fs_fiadb.ref_forest_type_group
(
fwd_carbon_ratio     DECIMAL(12,11),
fwd_decay_ratio      DECIMAL(12,11),
fwd_small_qmd        DECIMAL(12,10),
fwd_medium_qmd       DECIMAL(12,10),
fwd_large_qmd        DECIMAL(12,10),
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6),
value                INTEGER NOT NULL,
meaning              VARCHAR(80),
abbr                 VARCHAR(40),
duff_density         DECIMAL(12,10),
duff_carbon_ratio    DECIMAL(12,11),
litter_density       DECIMAL(12,10),
litter_carbon_ratio  DECIMAL(12,11),
pile_density         DECIMAL(12,10),
pile_carbon_ratio    DECIMAL(12,11),
pile_decay_ratio     DECIMAL(12,11),
fwd_density          DECIMAL(12,10)
);
comment on column fs_fiadb.ref_forest_type_group.fwd_carbon_ratio
  is 'Ratio of carbon weight to biomass of FWD';
comment on column fs_fiadb.ref_forest_type_group.fwd_decay_ratio
  is 'Ratio of decayed to sound wood weight of FWD';
comment on column fs_fiadb.ref_forest_type_group.fwd_small_qmd
  is 'Quadratic mean diameter of small FWD';
comment on column fs_fiadb.ref_forest_type_group.fwd_medium_qmd
  is 'Quadratic mean diameter of medium FWD';
comment on column fs_fiadb.ref_forest_type_group.fwd_large_qmd
  is 'Quadratic mean diameter of large FWD';
comment on column fs_fiadb.ref_forest_type_group.created_by
  is 'Created by';
comment on column fs_fiadb.ref_forest_type_group.created_date
  is 'Created Date';
comment on column fs_fiadb.ref_forest_type_group.created_in_instance
  is 'Created in Instance';
comment on column fs_fiadb.ref_forest_type_group.modified_by
  is 'Modified by';
comment on column fs_fiadb.ref_forest_type_group.modified_date
  is 'Modified Date';
comment on column fs_fiadb.ref_forest_type_group.modified_in_instance
  is 'Modified in Instance';
comment on column fs_fiadb.ref_forest_type_group.value
  is 'Forest type group code';
comment on column fs_fiadb.ref_forest_type_group.meaning
  is 'Forest type group description';
comment on column fs_fiadb.ref_forest_type_group.abbr
  is 'Forest type group abbreviation';
comment on column fs_fiadb.ref_forest_type_group.duff_density
  is 'Average oven dry density of duff in pounds per cubic foot';
comment on column fs_fiadb.ref_forest_type_group.duff_carbon_ratio
  is 'Ratio of carbon weight to biomass of duff';
comment on column fs_fiadb.ref_forest_type_group.litter_density
  is 'Average oven dry density of litter in pounds per cubic foot';
comment on column fs_fiadb.ref_forest_type_group.litter_carbon_ratio
  is 'Ratio of carbon weight to biomass of litter';
comment on column fs_fiadb.ref_forest_type_group.pile_density
  is 'Average oven dry density of piles in pounds per cubic foot';
comment on column fs_fiadb.ref_forest_type_group.pile_carbon_ratio
  is 'Ratio of carbon weight to biomass of piles';
comment on column fs_fiadb.ref_forest_type_group.pile_decay_ratio
  is 'Ratio of decayed to sound wood weight of piles';
comment on column fs_fiadb.ref_forest_type_group.fwd_density
  is 'Average oven dry density of FWD in pounds per cubic foot';
CREATE TABLE fs_fiadb.datamart_most_recent_inv
(
statecd   INTEGER NOT NULL,
eval_grps VARCHAR(32) NOT NULL,
comments  VARCHAR(64) NOT NULL,
stateab   VARCHAR(2)
);
comment on column fs_fiadb.datamart_most_recent_inv.statecd
  is 'NA';
comment on column fs_fiadb.datamart_most_recent_inv.eval_grps
  is 'NA';
comment on column fs_fiadb.datamart_most_recent_inv.comments
  is 'NA';
comment on column fs_fiadb.datamart_most_recent_inv.stateab
  is 'NA';
CREATE TABLE fs_fiadb.plotgeom
(
cn                   VARCHAR(34) NOT NULL,
statecd              DOUBLE PRECISION,
invyr                DOUBLE PRECISION,
unitcd               DOUBLE PRECISION,
countycd             DOUBLE PRECISION,
plot                 INTEGER,
lat                  DOUBLE PRECISION,
lon                  DOUBLE PRECISION,
congcd               DOUBLE PRECISION,
ecosubcd             VARCHAR(7),
huc                  DOUBLE PRECISION,
emap_hex             DOUBLE PRECISION,
fipscounty           DOUBLE PRECISION,
roadlesscd           VARCHAR(4),
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  INTEGER,
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance INTEGER,
alp_adforcd          DOUBLE PRECISION,
fvs_variant          VARCHAR(2),
fvs_loc_cd           INTEGER,
fvs_region           INTEGER,
fvs_forest           INTEGER,
fvs_district         INTEGER,
eco_unit_pnw         VARCHAR(10),
precipitation        DOUBLE PRECISION
);
comment on column fs_fiadb.plotgeom.cn
  is 'Sequence number on corresponding plot record (ought to be renamed plt_cn)';
comment on column fs_fiadb.plotgeom.statecd
  is 'State Code';
comment on column fs_fiadb.plotgeom.invyr
  is 'Inventory year';
comment on column fs_fiadb.plotgeom.unitcd
  is 'Survey unit code';
comment on column fs_fiadb.plotgeom.countycd
  is 'County Code';
comment on column fs_fiadb.plotgeom.plot
  is 'P2 Plot number';
comment on column fs_fiadb.plotgeom.lat
  is 'Fuzzed and swapped lat';
comment on column fs_fiadb.plotgeom.lon
  is 'Fuzzed and swapped lon';
comment on column fs_fiadb.plotgeom.congcd
  is 'Congressional district code';
comment on column fs_fiadb.plotgeom.ecosubcd
  is 'Ecological subsection code';
comment on column fs_fiadb.plotgeom.huc
  is 'Hydrological unit code 8-digit';
comment on column fs_fiadb.plotgeom.emap_hex
  is '5-digit numbered hexagons approximately 160,304.4 acres';
comment on column fs_fiadb.plotgeom.fipscounty
  is 'County code based on fuzzed and swapped plot location';
comment on column fs_fiadb.plotgeom.roadlesscd
  is 'Inventoried roadless area code based on fuzzed and swapped plot location';
comment on column fs_fiadb.plotgeom.created_by
  is 'Created by';
comment on column fs_fiadb.plotgeom.created_date
  is 'Created Date';
comment on column fs_fiadb.plotgeom.created_in_instance
  is 'Created in Instance';
comment on column fs_fiadb.plotgeom.modified_by
  is 'Modified by';
comment on column fs_fiadb.plotgeom.modified_date
  is 'Modified Date';
comment on column fs_fiadb.plotgeom.modified_in_instance
  is 'Modified in Instance';
comment on column fs_fiadb.plotgeom.alp_adforcd
  is 'Administrative forest code';
comment on column fs_fiadb.plotgeom.fvs_variant
  is 'Forest Vegetation Simulator (FVS) variant code';
comment on column fs_fiadb.plotgeom.fvs_loc_cd
  is 'Forest Vegetation Simulator location code';
comment on column fs_fiadb.plotgeom.fvs_region
  is 'Forest Vegetation Simulator Region code';
comment on column fs_fiadb.plotgeom.fvs_forest
  is 'Forest Vegetation Simulator Forest code';
comment on column fs_fiadb.plotgeom.fvs_district
  is 'Forest Vegetation Simulator District Code';
comment on column fs_fiadb.plotgeom.eco_unit_pnw
  is 'The PNWRS ecological unit';
comment on column fs_fiadb.plotgeom.precipitation
  is 'The precipitation values assigned to the plot';
CREATE TABLE fs_fiadb.ref_pop_eval_typ_descr
(
cn                   VARCHAR(34) NOT NULL,
label_order          INTEGER,
eval_typ             VARCHAR(15),
eval_typ_label       VARCHAR(15),
change_eval_typ      VARCHAR(1),
eval_typ_descr       VARCHAR(255),
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6),
eval_typ_cd          VARCHAR(2)
);
comment on column fs_fiadb.ref_pop_eval_typ_descr.cn
  is 'Sequence number (surrogate primary key)';
comment on column fs_fiadb.ref_pop_eval_typ_descr.label_order
  is 'The order in which to assemble eval. types to create standarized eval. grp. descriptions.';
comment on column fs_fiadb.ref_pop_eval_typ_descr.eval_typ
  is 'NA';
comment on column fs_fiadb.ref_pop_eval_typ_descr.eval_typ_label
  is 'The label to use for this evaluation type when constructing standardized evaluation group descriptions.';
comment on column fs_fiadb.ref_pop_eval_typ_descr.change_eval_typ
  is 'Y if the evaluation type computes change attributes involving two points in time, N if the evaluation type computes estimates of current attributes involving one point in time. This is used in the construction of standardized evaluationd descriptions.';
comment on column fs_fiadb.ref_pop_eval_typ_descr.eval_typ_descr
  is 'NA';
comment on column fs_fiadb.ref_pop_eval_typ_descr.created_by
  is 'Created by';
comment on column fs_fiadb.ref_pop_eval_typ_descr.created_date
  is 'Created Date';
comment on column fs_fiadb.ref_pop_eval_typ_descr.created_in_instance
  is 'Created in Instance';
comment on column fs_fiadb.ref_pop_eval_typ_descr.modified_by
  is 'Modified by';
comment on column fs_fiadb.ref_pop_eval_typ_descr.modified_date
  is 'Modified Date';
comment on column fs_fiadb.ref_pop_eval_typ_descr.modified_in_instance
  is 'Modified in Instance';
comment on column fs_fiadb.ref_pop_eval_typ_descr.eval_typ_cd
  is 'Evaluation ID Type code for the last 2 characters of the EVALID';
CREATE TABLE fs_fiadb.pop_stratum
(
cn                           VARCHAR(34) NOT NULL,
estn_unit_cn                 VARCHAR(34) NOT NULL,
rscd                         INTEGER NOT NULL,
evalid                       INTEGER NOT NULL,
estn_unit                    INTEGER NOT NULL,
stratumcd                    INTEGER NOT NULL,
stratum_descr                VARCHAR(255) NOT NULL,
statecd                      INTEGER NOT NULL,
p1pointcnt                   INTEGER,
p2pointcnt                   INTEGER,
expns                        DOUBLE PRECISION,
adj_factor_macr              DOUBLE PRECISION,
adj_factor_subp              DOUBLE PRECISION,
adj_factor_micr              DOUBLE PRECISION,
adj_factor_cwd               DOUBLE PRECISION,
adj_factor_fwd_sm            DOUBLE PRECISION,
adj_factor_fwd_lg            DOUBLE PRECISION,
adj_factor_duff              DOUBLE PRECISION,
created_by                   VARCHAR(30),
created_date                 TIMESTAMP(0),
created_in_instance          VARCHAR(6),
modified_by                  VARCHAR(30),
modified_date                TIMESTAMP(0),
modified_in_instance         VARCHAR(6),
adj_factor_pile              DOUBLE PRECISION,
adj_factor_regen_micr        DOUBLE PRECISION,
adj_factor_inv_subp          DOUBLE PRECISION,
adj_factor_p2veg_subp        DOUBLE PRECISION,
adj_factor_grndlyr_microquad DOUBLE PRECISION,
adj_factor_soil              DOUBLE PRECISION
);
comment on column fs_fiadb.pop_stratum.cn
  is 'NA';
comment on column fs_fiadb.pop_stratum.estn_unit_cn
  is 'NA';
comment on column fs_fiadb.pop_stratum.rscd
  is 'NA';
comment on column fs_fiadb.pop_stratum.evalid
  is 'NA';
comment on column fs_fiadb.pop_stratum.estn_unit
  is 'NA';
comment on column fs_fiadb.pop_stratum.stratumcd
  is 'NA';
comment on column fs_fiadb.pop_stratum.stratum_descr
  is 'NA';
comment on column fs_fiadb.pop_stratum.statecd
  is 'NA';
comment on column fs_fiadb.pop_stratum.p1pointcnt
  is 'NA';
comment on column fs_fiadb.pop_stratum.p2pointcnt
  is 'NA';
comment on column fs_fiadb.pop_stratum.expns
  is 'NA';
comment on column fs_fiadb.pop_stratum.adj_factor_macr
  is 'Ratio of area that was sampled on the 57.9 foot macroplot for all partially and fully sampled plots in stratum.';
comment on column fs_fiadb.pop_stratum.adj_factor_subp
  is 'Ratio of area that was sampled on the 24 foot subplot for all partially and fully sampled plots in stratum.';
comment on column fs_fiadb.pop_stratum.adj_factor_micr
  is 'Ratio of area that was sampled on the 6.8 foot microplot for all partially and fully sampled plots in stratum.';
comment on column fs_fiadb.pop_stratum.adj_factor_cwd
  is 'Ratio of transect length that was sampled for coarse woody debris on all partially and fully sampled plots in stratum.';
comment on column fs_fiadb.pop_stratum.adj_factor_fwd_sm
  is 'Ratio of transect length that was sampled for small fine woody debris on all partially and fully sampled plots in stratum .';
comment on column fs_fiadb.pop_stratum.adj_factor_fwd_lg
  is 'Ratio of transect length that was sampled for large fine woody debris on all partially and fully sampled plots in stratum.';
comment on column fs_fiadb.pop_stratum.adj_factor_duff
  is 'Ratio of points that were sampled for duff and litter to target number of points for all partially and fully sampled plots in stratum.';
comment on column fs_fiadb.pop_stratum.created_by
  is 'NA';
comment on column fs_fiadb.pop_stratum.created_date
  is 'NA';
comment on column fs_fiadb.pop_stratum.created_in_instance
  is 'NA';
comment on column fs_fiadb.pop_stratum.modified_by
  is 'NA';
comment on column fs_fiadb.pop_stratum.modified_date
  is 'NA';
comment on column fs_fiadb.pop_stratum.modified_in_instance
  is 'NA';
comment on column fs_fiadb.pop_stratum.adj_factor_pile
  is 'Ratio of target divided by sampled transect length or area for piles on all partially and fully sampled plots in stratum.';
comment on column fs_fiadb.pop_stratum.adj_factor_regen_micr
  is 'For plots that implement the optional Regeneration indicator this is the ratio of the total area of the microplot footprint to the area of the microplot footprint that was actually sampled. This value will be equal to or greater than 1.';
comment on column fs_fiadb.pop_stratum.adj_factor_inv_subp
  is 'For plots that implement the optional Invasive Species indicator this is the ratio of the total area of the subplot footprint to the area of the subplot footprint that was actually sampled. This value will be equal to or greater than 1.';
comment on column fs_fiadb.pop_stratum.adj_factor_p2veg_subp
  is 'For plots that implement the optional Phase 2 Vegetation Profile indicator this is the ratio of the total area of the subplot footprint to the area of the subplot footprint that was actually sampled. This value will be equal to or greater than 1.';
comment on column fs_fiadb.pop_stratum.adj_factor_grndlyr_microquad
  is 'For plots that implement the optional Ground Layer indicator this is the ratio of the total area of the micro-quad footprint to the area of the micro-quad footprint that was actually sampled. This value will be equal to or greater than 1.';
comment on column fs_fiadb.pop_stratum.adj_factor_soil
  is 'Ratio of points that were sampled for soil to target number of points for all partially and fully sampled plots in stratum.';
CREATE TABLE fs_fiadb.pop_eval_typ
(
cn                   VARCHAR(34) NOT NULL,
eval_grp_cn          VARCHAR(34),
eval_cn              VARCHAR(34) NOT NULL,
eval_typ             VARCHAR(15),
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6)
);
comment on column fs_fiadb.pop_eval_typ.cn
  is 'Sequence number (surrogate primary key)';
comment on column fs_fiadb.pop_eval_typ.eval_grp_cn
  is 'NA';
comment on column fs_fiadb.pop_eval_typ.eval_cn
  is 'NA';
comment on column fs_fiadb.pop_eval_typ.eval_typ
  is 'NA';
comment on column fs_fiadb.pop_eval_typ.created_by
  is 'NA';
comment on column fs_fiadb.pop_eval_typ.created_date
  is 'NA';
comment on column fs_fiadb.pop_eval_typ.created_in_instance
  is 'NA';
comment on column fs_fiadb.pop_eval_typ.modified_by
  is 'NA';
comment on column fs_fiadb.pop_eval_typ.modified_date
  is 'NA';
comment on column fs_fiadb.pop_eval_typ.modified_in_instance
  is 'NA';
CREATE TABLE fs_fiadb.pop_eval_grp
(
cn                   VARCHAR(34) NOT NULL,
rscd                 INTEGER NOT NULL,
eval_grp             INTEGER NOT NULL,
eval_grp_descr       VARCHAR(255),
statecd              INTEGER NOT NULL,
notes                VARCHAR(2000),
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6)
);
comment on column fs_fiadb.pop_eval_grp.cn
  is 'NA';
comment on column fs_fiadb.pop_eval_grp.rscd
  is 'NA';
comment on column fs_fiadb.pop_eval_grp.eval_grp
  is 'Reporting year followed by 4 more digits to make the statecd;eval_grp combo unique';
comment on column fs_fiadb.pop_eval_grp.eval_grp_descr
  is 'If the evaluation is used in a statistical or analytical report use report title';
comment on column fs_fiadb.pop_eval_grp.statecd
  is 'State Code of primary state being evaluated';
comment on column fs_fiadb.pop_eval_grp.notes
  is 'Population evaluation group notes';
comment on column fs_fiadb.pop_eval_grp.created_by
  is 'NA';
comment on column fs_fiadb.pop_eval_grp.created_date
  is 'NA';
comment on column fs_fiadb.pop_eval_grp.created_in_instance
  is 'NA';
comment on column fs_fiadb.pop_eval_grp.modified_by
  is 'NA';
comment on column fs_fiadb.pop_eval_grp.modified_date
  is 'NA';
comment on column fs_fiadb.pop_eval_grp.modified_in_instance
  is 'NA';
CREATE TABLE fs_fiadb.ref_invasive_species
(
cn                   VARCHAR(34) NOT NULL,
statecd              INTEGER NOT NULL,
symbol               VARCHAR(16) NOT NULL,
inv_group_cd         DOUBLE PRECISION,
unitcd_list          VARCHAR(20),
start_date           TIMESTAMP(0) NOT NULL,
end_date             TIMESTAMP(0),
manual_start         DECIMAL(3,1) NOT NULL,
manual_end           DECIMAL(3,1),
notes                VARCHAR(2000),
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6)
);
comment on column fs_fiadb.ref_invasive_species.cn
  is 'Sequence number (surrogate primary key)';
comment on column fs_fiadb.ref_invasive_species.statecd
  is 'State code';
comment on column fs_fiadb.ref_invasive_species.symbol
  is 'Symbol is the NRCS code (2000 download) used to represent a plant species.';
comment on column fs_fiadb.ref_invasive_species.inv_group_cd
  is 'Invasive species group code allows multiple species that are difficult to distinquish from one another to be recorded as the most likely species in the invasive species group, or the first one in the group if the field person was not sure.  These groups are typically defined by region.';
comment on column fs_fiadb.ref_invasive_species.unitcd_list
  is 'Optional:  This defines a list of unit codes within the state where the species is likely to be found (e.g. to differentiate E vs W Oregon and Washington).';
comment on column fs_fiadb.ref_invasive_species.start_date
  is 'Start date';
comment on column fs_fiadb.ref_invasive_species.end_date
  is 'End date';
comment on column fs_fiadb.ref_invasive_species.manual_start
  is 'Manual start';
comment on column fs_fiadb.ref_invasive_species.manual_end
  is 'Manual end';
comment on column fs_fiadb.ref_invasive_species.notes
  is 'Notes on this invasive species for this state (e.g. why added to list, why removed from list, etc.)';
comment on column fs_fiadb.ref_invasive_species.created_by
  is 'Created by';
comment on column fs_fiadb.ref_invasive_species.created_date
  is 'Created Date';
comment on column fs_fiadb.ref_invasive_species.created_in_instance
  is 'Created in Instance';
comment on column fs_fiadb.ref_invasive_species.modified_by
  is 'Modified by';
comment on column fs_fiadb.ref_invasive_species.modified_date
  is 'Modified Date';
comment on column fs_fiadb.ref_invasive_species.modified_in_instance
  is 'Modified in Instance';
CREATE TABLE fs_fiadb.p2veg_subplot_spp
(
cn                   VARCHAR(34) NOT NULL,
plt_cn               VARCHAR(34) NOT NULL,
invyr                INTEGER NOT NULL,
statecd              INTEGER NOT NULL,
unitcd               INTEGER,
countycd             INTEGER NOT NULL,
plot                 INTEGER NOT NULL,
subp                 INTEGER NOT NULL,
condid               INTEGER NOT NULL,
veg_fldspcd          VARCHAR(10) NOT NULL,
unique_sp_nbr        INTEGER NOT NULL,
veg_spcd             VARCHAR(10) NOT NULL,
growth_habit_cd      VARCHAR(2) NOT NULL,
layer                INTEGER NOT NULL,
cover_pct            INTEGER NOT NULL,
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6),
cycle                INTEGER NOT NULL,
subcycle             INTEGER NOT NULL
);
comment on column fs_fiadb.p2veg_subplot_spp.cn
  is 'Sequence number (surrogate primary key';
comment on column fs_fiadb.p2veg_subplot_spp.plt_cn
  is 'Foreign key to Plot table CN';
comment on column fs_fiadb.p2veg_subplot_spp.invyr
  is 'Inventory year';
comment on column fs_fiadb.p2veg_subplot_spp.statecd
  is 'State code';
comment on column fs_fiadb.p2veg_subplot_spp.unitcd
  is 'Survey unit code';
comment on column fs_fiadb.p2veg_subplot_spp.countycd
  is 'County code';
comment on column fs_fiadb.p2veg_subplot_spp.plot
  is 'Plot number';
comment on column fs_fiadb.p2veg_subplot_spp.subp
  is 'Subplot number';
comment on column fs_fiadb.p2veg_subplot_spp.condid
  is 'Condition number';
comment on column fs_fiadb.p2veg_subplot_spp.veg_fldspcd
  is 'Veg Field Species Code';
comment on column fs_fiadb.p2veg_subplot_spp.unique_sp_nbr
  is 'Unique Species Number identifies the number of species occurrences within each NRCS genus or unknown code. For example, 2 unidentifiable CAREX species would be entered as 2 separate records with differing Unique Species Numbers to show that they are not the same species.';
comment on column fs_fiadb.p2veg_subplot_spp.veg_spcd
  is 'Veg Species Code';
comment on column fs_fiadb.p2veg_subplot_spp.growth_habit_cd
  is 'Species growth habit code';
comment on column fs_fiadb.p2veg_subplot_spp.layer
  is 'Species layer';
comment on column fs_fiadb.p2veg_subplot_spp.cover_pct
  is 'Species percent canopy cover';
comment on column fs_fiadb.p2veg_subplot_spp.created_by
  is 'Created by';
comment on column fs_fiadb.p2veg_subplot_spp.created_date
  is 'Created Date';
comment on column fs_fiadb.p2veg_subplot_spp.created_in_instance
  is 'Created in Instance';
comment on column fs_fiadb.p2veg_subplot_spp.modified_by
  is 'Modified by';
comment on column fs_fiadb.p2veg_subplot_spp.modified_date
  is 'Modified Date';
comment on column fs_fiadb.p2veg_subplot_spp.modified_in_instance
  is 'Modified in Instance';
comment on column fs_fiadb.p2veg_subplot_spp.cycle
  is 'Inventory cycle number';
comment on column fs_fiadb.p2veg_subplot_spp.subcycle
  is 'Inventory subcycle number';
CREATE TABLE fs_fiadb.pop_eval_attribute
(
cn                   VARCHAR(34) NOT NULL,
eval_cn              VARCHAR(34) NOT NULL,
attribute_nbr        INTEGER NOT NULL,
statecd              INTEGER,
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6)
);
comment on column fs_fiadb.pop_eval_attribute.cn
  is 'NA';
comment on column fs_fiadb.pop_eval_attribute.eval_cn
  is 'NA';
comment on column fs_fiadb.pop_eval_attribute.attribute_nbr
  is 'NA';
comment on column fs_fiadb.pop_eval_attribute.statecd
  is 'NA';
comment on column fs_fiadb.pop_eval_attribute.created_by
  is 'NA';
comment on column fs_fiadb.pop_eval_attribute.created_date
  is 'NA';
comment on column fs_fiadb.pop_eval_attribute.created_in_instance
  is 'NA';
comment on column fs_fiadb.pop_eval_attribute.modified_by
  is 'NA';
comment on column fs_fiadb.pop_eval_attribute.modified_date
  is 'NA';
comment on column fs_fiadb.pop_eval_attribute.modified_in_instance
  is 'NA';
CREATE TABLE fs_fiadb.ref_habtyp_description
(
cn                   VARCHAR(34) NOT NULL,
habtypcd             VARCHAR(10) NOT NULL,
pub_cd               VARCHAR(10) NOT NULL,
scientific_name      VARCHAR(115) NOT NULL,
common_name          VARCHAR(255),
valid                VARCHAR(1) NOT NULL,
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6)
);
comment on column fs_fiadb.ref_habtyp_description.cn
  is 'Sequence number (surrogate primary key';
comment on column fs_fiadb.ref_habtyp_description.habtypcd
  is 'NA';
comment on column fs_fiadb.ref_habtyp_description.pub_cd
  is 'NA';
comment on column fs_fiadb.ref_habtyp_description.scientific_name
  is 'NA';
comment on column fs_fiadb.ref_habtyp_description.common_name
  is 'NA';
comment on column fs_fiadb.ref_habtyp_description.valid
  is 'NA';
comment on column fs_fiadb.ref_habtyp_description.created_by
  is 'Created by';
comment on column fs_fiadb.ref_habtyp_description.created_date
  is 'Created Date ';
comment on column fs_fiadb.ref_habtyp_description.created_in_instance
  is 'Created in Instance ';
comment on column fs_fiadb.ref_habtyp_description.modified_by
  is 'Modified by ';
comment on column fs_fiadb.ref_habtyp_description.modified_date
  is 'Modified Date';
comment on column fs_fiadb.ref_habtyp_description.modified_in_instance
  is 'Modified in Instance ';
CREATE TABLE fs_fiadb.veg_plot_species
(
cn                            VARCHAR(34) NOT NULL,
plt_cn                        VARCHAR(34) NOT NULL,
vvt_cn                        VARCHAR(34) NOT NULL,
invyr                         INTEGER NOT NULL,
statecd                       INTEGER NOT NULL,
countycd                      INTEGER NOT NULL,
plot                          INTEGER NOT NULL,
veg_fldspcd                   VARCHAR(16) NOT NULL,
unique_sp_nbr                 INTEGER NOT NULL,
veg_spcd                      VARCHAR(16),
specimen_collected            CHAR(1),
specimen_label_nbr            DOUBLE PRECISION,
specimen_not_collected_reason INTEGER,
specimen_resolved             CHAR(1),
created_by                    VARCHAR(30),
created_date                  TIMESTAMP(0),
created_in_instance           VARCHAR(6),
modified_by                   VARCHAR(30),
modified_date                 TIMESTAMP(0),
modified_in_instance          VARCHAR(6),
updated_unknown_species_date  TIMESTAMP(0)
);
comment on column fs_fiadb.veg_plot_species.cn
  is 'CN partly identifies NIMS_VEG_PLOT_SPECIES_TBL';
comment on column fs_fiadb.veg_plot_species.plt_cn
  is 'PLT_CN is foreign key to parent NIMS_PLOT_TBL.CN';
comment on column fs_fiadb.veg_plot_species.vvt_cn
  is 'VVT_CN is foreign key to parent NIMS_VEG_VISIT_TBL.CN';
comment on column fs_fiadb.veg_plot_species.invyr
  is 'NA';
comment on column fs_fiadb.veg_plot_species.statecd
  is 'NA';
comment on column fs_fiadb.veg_plot_species.countycd
  is 'NA';
comment on column fs_fiadb.veg_plot_species.plot
  is 'NA';
comment on column fs_fiadb.veg_plot_species.veg_fldspcd
  is 'Veg Field Species Code';
comment on column fs_fiadb.veg_plot_species.unique_sp_nbr
  is 'Unique Species Number identifies the number of specie occurrences within each NRCS genus or unknown code. For example, 2 unidentifiable CAREX species would be entered as 2 separate records with differing Unique Species Numbers to show that they are not the same species.';
comment on column fs_fiadb.veg_plot_species.veg_spcd
  is 'Veg Species Code';
comment on column fs_fiadb.veg_plot_species.specimen_collected
  is 'Y or N (Yes or No) value indicating whether a specimen sample was collected.';
comment on column fs_fiadb.veg_plot_species.specimen_label_nbr
  is 'For any unknown specimen collected, the corresponding specimen label number';
comment on column fs_fiadb.veg_plot_species.specimen_not_collected_reason
  is 'If VEG_FLDSPCD is an NRCS genus or unknown code and a specimen is not collected, provides reason.';
comment on column fs_fiadb.veg_plot_species.specimen_resolved
  is 'If VEG_FLDSPCD code type is "unknown", set to "N" until plant voucher data loaded; set to null if code type="species"; set to "Y" upon NIMS_VEG_UNKNOWN_UPDATE table load for specific record.';
comment on column fs_fiadb.veg_plot_species.created_by
  is 'CREATED_BY user';
comment on column fs_fiadb.veg_plot_species.created_date
  is 'CREATED_DATE';
comment on column fs_fiadb.veg_plot_species.created_in_instance
  is 'CREATED_IN_INSTANCE is of NIMS_VEG_PLOT_SPECIES_TBL';
comment on column fs_fiadb.veg_plot_species.modified_by
  is 'MODIFIED_BY user';
comment on column fs_fiadb.veg_plot_species.modified_date
  is 'MODIFIED_DATE';
comment on column fs_fiadb.veg_plot_species.modified_in_instance
  is 'MODIFIED_IN_INSTANCE is of NIMS_VEG_PLOT_SPECIES_TBL';
comment on column fs_fiadb.veg_plot_species.updated_unknown_species_date
  is 'Date of unknown species';
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
CREATE TABLE fs_fiadb.veg_subplot_spp
(
cn                          VARCHAR(34) NOT NULL,
plt_cn                      VARCHAR(34) NOT NULL,
vvt_cn                      VARCHAR(34) NOT NULL,
vsb_cn                      VARCHAR(34),
vps_cn                      VARCHAR(34) NOT NULL,
invyr                       INTEGER NOT NULL,
statecd                     INTEGER NOT NULL,
countycd                    INTEGER NOT NULL,
plot                        INTEGER NOT NULL,
subp                        INTEGER,
veg_fldspcd                 VARCHAR(16) NOT NULL,
unique_sp_nbr               INTEGER NOT NULL,
veg_spcd                    VARCHAR(16) NOT NULL,
sp_canopy_cover_total       DECIMAL(5,2),
sp_canopy_cover_layer_1_2   DECIMAL(5,2),
sp_canopy_cover_layer_3     DECIMAL(5,2),
sp_canopy_cover_layer_4     DECIMAL(5,2),
quad_1_presence             INTEGER,
quad_2_presence             INTEGER,
quad_3_presence             INTEGER,
dummy_subp_cover_pre2004    INTEGER,
max_cover_layer_nbr_pre2004 INTEGER,
created_by                  VARCHAR(30),
created_date                TIMESTAMP(0),
created_in_instance         VARCHAR(6),
modified_by                 VARCHAR(30),
modified_date               TIMESTAMP(0),
modified_in_instance        VARCHAR(6)
);
comment on column fs_fiadb.veg_subplot_spp.cn
  is 'CN partly identifies NIMS_VEG_SUBPLOT_SPECIES_TBL';
comment on column fs_fiadb.veg_subplot_spp.plt_cn
  is 'PLT_CN is foreign key to parent NIMS_PLOT_TBL.CN';
comment on column fs_fiadb.veg_subplot_spp.vvt_cn
  is 'VVT_CN is foreign key to parent NIMS_VEG_VISIT_TBL.CN';
comment on column fs_fiadb.veg_subplot_spp.vsb_cn
  is 'NA';
comment on column fs_fiadb.veg_subplot_spp.vps_cn
  is 'VPS_CN is foreign key to parent NIMS_VEG_PLOT_SPECIES_TBL.CN';
comment on column fs_fiadb.veg_subplot_spp.invyr
  is 'NA';
comment on column fs_fiadb.veg_subplot_spp.statecd
  is 'NA';
comment on column fs_fiadb.veg_subplot_spp.countycd
  is 'NA';
comment on column fs_fiadb.veg_subplot_spp.plot
  is 'NA';
comment on column fs_fiadb.veg_subplot_spp.subp
  is 'Subplot number';
comment on column fs_fiadb.veg_subplot_spp.veg_fldspcd
  is 'NA';
comment on column fs_fiadb.veg_subplot_spp.unique_sp_nbr
  is 'NA';
comment on column fs_fiadb.veg_subplot_spp.veg_spcd
  is 'NA';
comment on column fs_fiadb.veg_subplot_spp.sp_canopy_cover_total
  is 'Total Canopy Cover Percent (w; trace) of Species within all accessible forest land on subplot';
comment on column fs_fiadb.veg_subplot_spp.sp_canopy_cover_layer_1_2
  is 'Layers 1 and 2 Canopy Cover Percent (w; trace) of Species within all accessible forest land on subplot';
comment on column fs_fiadb.veg_subplot_spp.sp_canopy_cover_layer_3
  is 'Layer 3 Canopy Cover Percent (w; trace) of Species within all accessible forest land on subplot';
comment on column fs_fiadb.veg_subplot_spp.sp_canopy_cover_layer_4
  is 'Layer 4 Canopy Cover Percent (w; trace) of Species within all accessible forest land on subplot';
comment on column fs_fiadb.veg_subplot_spp.quad_1_presence
  is 'Indicates whether species is found on Quadrat 1 of current subplot';
comment on column fs_fiadb.veg_subplot_spp.quad_2_presence
  is 'Indicates whether species is found on Quadrat 2 of current subplot';
comment on column fs_fiadb.veg_subplot_spp.quad_3_presence
  is 'Indicates whether species is found on Quadrat 3 of current subplot';
comment on column fs_fiadb.veg_subplot_spp.dummy_subp_cover_pre2004
  is ''DUMMY_SUBP_COVER_PRE2004.  For NIMS_VEG_VISIT.VEG_MANUAL = 1.7 plots only.  0 = subplot species cover data is field recorded; 1 = NIMS_VEG_VISIT.VEG_MANUAL = 1.7 dummy subplot cover data added where a quadrat species record existed without a matching subplot species record.  When DUMMY_SUBP_COVER_PRE2004 = 1, SP_CANOPY_COVER_TOTAL is set to 1 and MAX_COVER_LAYER_NBR_PRE2004 is set to 1.';';
comment on column fs_fiadb.veg_subplot_spp.max_cover_layer_nbr_pre2004
  is ''MAX_COVER_LAYER_NBR_PRE2004.  For NIMS_VEG_VISIT.VEG_MANUAL = 1.7 plots only.  Layer number with maximum cover for the species on the subplot.';';
comment on column fs_fiadb.veg_subplot_spp.created_by
  is 'CREATED_BY user';
comment on column fs_fiadb.veg_subplot_spp.created_date
  is 'CREATED_DATE';
comment on column fs_fiadb.veg_subplot_spp.created_in_instance
  is 'CREATED_IN_INSTANCE is of NIMS_VEG_SUBPLOT_SPECIES_TBL';
comment on column fs_fiadb.veg_subplot_spp.modified_by
  is 'MODIFIED_BY user';
comment on column fs_fiadb.veg_subplot_spp.modified_date
  is 'MODIFIED_DATE';
comment on column fs_fiadb.veg_subplot_spp.modified_in_instance
  is 'MODIFIED_IN_INSTANCE is of NIMS_VEG_SUBPLOT_SPECIES_TBL';
CREATE TABLE fs_fiadb.seedling
(
cn                             VARCHAR(34) NOT NULL,
plt_cn                         VARCHAR(34) NOT NULL,
invyr                          INTEGER NOT NULL,
statecd                        INTEGER NOT NULL,
unitcd                         INTEGER NOT NULL,
countycd                       INTEGER NOT NULL,
plot                           INTEGER NOT NULL,
subp                           INTEGER NOT NULL,
condid                         INTEGER NOT NULL,
spcd                           DOUBLE PRECISION NOT NULL,
spgrpcd                        INTEGER,
stocking                       DECIMAL(7,4),
treecount                      INTEGER,
totage                         INTEGER,
created_by                     VARCHAR(30),
created_date                   TIMESTAMP(0),
created_in_instance            VARCHAR(6),
modified_by                    VARCHAR(30),
modified_date                  TIMESTAMP(0),
modified_in_instance           VARCHAR(6),
treecount_calc                 DOUBLE PRECISION,
tpa_unadj                      DECIMAL(11,6),
cycle                          INTEGER,
subcycle                       INTEGER,
damage_agent_cd1_srs           INTEGER,
pct_affected_damage_agent1_srs INTEGER,
damage_agent_cd2_srs           INTEGER,
pct_affected_damage_agent2_srs INTEGER,
damage_agent_cd3_srs           INTEGER,
pct_affected_damage_agent3_srs INTEGER,
agecd_rmrs                     INTEGER,
countchkcd_rmrs                INTEGER
);
comment on column fs_fiadb.seedling.cn
  is 'Unique index';
comment on column fs_fiadb.seedling.plt_cn
  is 'Unique index';
comment on column fs_fiadb.seedling.invyr
  is 'NA';
comment on column fs_fiadb.seedling.statecd
  is 'State code';
comment on column fs_fiadb.seedling.unitcd
  is 'Survey unit code';
comment on column fs_fiadb.seedling.countycd
  is 'County code';
comment on column fs_fiadb.seedling.plot
  is 'Plot number';
comment on column fs_fiadb.seedling.subp
  is 'Subplot number';
comment on column fs_fiadb.seedling.condid
  is 'Condition number';
comment on column fs_fiadb.seedling.spcd
  is 'Species code';
comment on column fs_fiadb.seedling.spgrpcd
  is 'Species group code';
comment on column fs_fiadb.seedling.stocking
  is 'Tree stocking';
comment on column fs_fiadb.seedling.treecount
  is 'Tree count';
comment on column fs_fiadb.seedling.totage
  is 'Total age of seedling';
comment on column fs_fiadb.seedling.created_by
  is 'Created by';
comment on column fs_fiadb.seedling.created_date
  is 'Created date';
comment on column fs_fiadb.seedling.created_in_instance
  is 'Created in instance';
comment on column fs_fiadb.seedling.modified_by
  is 'Modified by';
comment on column fs_fiadb.seedling.modified_date
  is 'Modified date';
comment on column fs_fiadb.seedling.modified_in_instance
  is 'Modified in instance';
comment on column fs_fiadb.seedling.treecount_calc
  is 'NA';
comment on column fs_fiadb.seedling.tpa_unadj
  is 'NA';
comment on column fs_fiadb.seedling.cycle
  is 'Inventory cycle number';
comment on column fs_fiadb.seedling.subcycle
  is 'Inventory subcycle number';
comment on column fs_fiadb.seedling.damage_agent_cd1_srs
  is 'NA';
comment on column fs_fiadb.seedling.pct_affected_damage_agent1_srs
  is 'NA';
comment on column fs_fiadb.seedling.damage_agent_cd2_srs
  is 'NA';
comment on column fs_fiadb.seedling.pct_affected_damage_agent2_srs
  is 'NA';
comment on column fs_fiadb.seedling.damage_agent_cd3_srs
  is 'NA';
comment on column fs_fiadb.seedling.pct_affected_damage_agent3_srs
  is 'NA';
comment on column fs_fiadb.seedling.agecd_rmrs
  is 'age code';
comment on column fs_fiadb.seedling.countchkcd_rmrs
  is 'count check code';
CREATE TABLE fs_fiadb.veg_quadrat
(
cn                     VARCHAR(34) NOT NULL,
plt_cn                 VARCHAR(34) NOT NULL,
vvt_cn                 VARCHAR(34) NOT NULL,
vsb_cn                 VARCHAR(34) NOT NULL,
invyr                  INTEGER NOT NULL,
statecd                INTEGER NOT NULL,
countycd               INTEGER NOT NULL,
plot                   INTEGER NOT NULL,
subp                   INTEGER,
quadrat                INTEGER NOT NULL,
condid                 INTEGER,
quadrat_status         INTEGER,
quadrat_status_pre2004 INTEGER,
trampling              INTEGER,
created_by             VARCHAR(30),
created_date           TIMESTAMP(0),
created_in_instance    VARCHAR(6),
modified_by            VARCHAR(30),
modified_date          TIMESTAMP(0),
modified_in_instance   VARCHAR(6)
);
comment on column fs_fiadb.veg_quadrat.cn
  is 'CN partly identifies NIMS_VEG_QUADRAT_TBL';
comment on column fs_fiadb.veg_quadrat.plt_cn
  is 'PLT_CN is foreign key to parent NIMS_PLOT_TBL.CN';
comment on column fs_fiadb.veg_quadrat.vvt_cn
  is 'VVT_CN is foreign key to parent NIMS_VEG_VISIT_TBL.CN';
comment on column fs_fiadb.veg_quadrat.vsb_cn
  is 'VSB_CN partly identifies parent NIMS_VEG_SUBPLOT_TBL.CN';
comment on column fs_fiadb.veg_quadrat.invyr
  is 'NA';
comment on column fs_fiadb.veg_quadrat.statecd
  is 'NA';
comment on column fs_fiadb.veg_quadrat.countycd
  is 'NA';
comment on column fs_fiadb.veg_quadrat.plot
  is 'NA';
comment on column fs_fiadb.veg_quadrat.subp
  is 'NA';
comment on column fs_fiadb.veg_quadrat.quadrat
  is 'Quadrat Number';
comment on column fs_fiadb.veg_quadrat.condid
  is 'Condition Class Number';
comment on column fs_fiadb.veg_quadrat.quadrat_status
  is 'Quadrat Status Code';
comment on column fs_fiadb.veg_quadrat.quadrat_status_pre2004
  is 'QUADRAT_STATUS_PRE2004: Quadrat Status Code as field-recorded for 2001		 - 2003 plots.  Consistent with NIMS_VEG_VISIT.VEG_MANUAL = 1.7 P3 Veg protocol.';
comment on column fs_fiadb.veg_quadrat.trampling
  is 'Trampling Code';
comment on column fs_fiadb.veg_quadrat.created_by
  is 'CREATED_BY user';
comment on column fs_fiadb.veg_quadrat.created_date
  is 'CREATED_DATE';
comment on column fs_fiadb.veg_quadrat.created_in_instance
  is 'CREATED_IN_INSTANCE';
comment on column fs_fiadb.veg_quadrat.modified_by
  is 'MODIFIED_BY user';
comment on column fs_fiadb.veg_quadrat.modified_date
  is 'MODIFIED_DATE';
comment on column fs_fiadb.veg_quadrat.modified_in_instance
  is 'MODIFIED_IN_INSTANCE';
CREATE TABLE fs_fiadb.ref_lichen_species
(
lich_sppcd           INTEGER NOT NULL,
yearstart            INTEGER NOT NULL,
yearend              INTEGER,
spp_acronym          VARCHAR(6) NOT NULL,
genus                VARCHAR(40) NOT NULL,
species              VARCHAR(50),
cn                   VARCHAR(34) NOT NULL,
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6)
);
comment on column fs_fiadb.ref_lichen_species.lich_sppcd
  is 'NA';
comment on column fs_fiadb.ref_lichen_species.yearstart
  is 'NA';
comment on column fs_fiadb.ref_lichen_species.yearend
  is 'NA';
comment on column fs_fiadb.ref_lichen_species.spp_acronym
  is 'NA';
comment on column fs_fiadb.ref_lichen_species.genus
  is 'NA';
comment on column fs_fiadb.ref_lichen_species.species
  is 'NA';
comment on column fs_fiadb.ref_lichen_species.cn
  is 'NA';
comment on column fs_fiadb.ref_lichen_species.created_by
  is 'NA';
comment on column fs_fiadb.ref_lichen_species.created_date
  is 'NA';
comment on column fs_fiadb.ref_lichen_species.created_in_instance
  is 'NA';
comment on column fs_fiadb.ref_lichen_species.modified_by
  is 'NA';
comment on column fs_fiadb.ref_lichen_species.modified_date
  is 'NA';
comment on column fs_fiadb.ref_lichen_species.modified_in_instance
  is 'NA';
CREATE TABLE fs_fiadb.ref_forest_type
(
value                INTEGER NOT NULL,
meaning              VARCHAR(80) NOT NULL,
typgrpcd             INTEGER NOT NULL,
manual_start         DECIMAL(3,1),
manual_end           DECIMAL(3,1),
allowed_in_field     VARCHAR(1),
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6)
);
comment on column fs_fiadb.ref_forest_type.value
  is 'NA';
comment on column fs_fiadb.ref_forest_type.meaning
  is 'NA';
comment on column fs_fiadb.ref_forest_type.typgrpcd
  is 'NA';
comment on column fs_fiadb.ref_forest_type.manual_start
  is 'NA';
comment on column fs_fiadb.ref_forest_type.manual_end
  is 'NA';
comment on column fs_fiadb.ref_forest_type.allowed_in_field
  is 'Determines whether code is allowed to be used in the field';
comment on column fs_fiadb.ref_forest_type.created_by
  is 'Created by';
comment on column fs_fiadb.ref_forest_type.created_date
  is 'Created Date';
comment on column fs_fiadb.ref_forest_type.created_in_instance
  is 'Created in Instance';
comment on column fs_fiadb.ref_forest_type.modified_by
  is 'Modified by';
comment on column fs_fiadb.ref_forest_type.modified_date
  is 'Modified Date';
comment on column fs_fiadb.ref_forest_type.modified_in_instance
  is 'Modified in Instance';
CREATE TABLE fs_fiadb.ozone_plot
(
cn                   VARCHAR(34) NOT NULL,
srv_cn               VARCHAR(34) NOT NULL,
cty_cn               VARCHAR(34) NOT NULL,
invyr                INTEGER NOT NULL,
statecd              INTEGER NOT NULL,
unitcd               INTEGER NOT NULL,
countycd             INTEGER NOT NULL,
o3plot               DOUBLE PRECISION NOT NULL,
field_id             INTEGER,
split_plotid         INTEGER,
measyear             INTEGER,
measmon              INTEGER,
measday              INTEGER,
lat                  DECIMAL(8,6),
lon                  DECIMAL(9,6),
elevation            DOUBLE PRECISION,
manual               DECIMAL(3,1) NOT NULL,
qa_status            INTEGER,
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6),
cycle                INTEGER,
subcycle             INTEGER
);
comment on column fs_fiadb.ozone_plot.cn
  is 'NA';
comment on column fs_fiadb.ozone_plot.srv_cn
  is 'NA';
comment on column fs_fiadb.ozone_plot.cty_cn
  is 'NA';
comment on column fs_fiadb.ozone_plot.invyr
  is 'NA';
comment on column fs_fiadb.ozone_plot.statecd
  is 'NA';
comment on column fs_fiadb.ozone_plot.unitcd
  is 'NA';
comment on column fs_fiadb.ozone_plot.countycd
  is 'NA';
comment on column fs_fiadb.ozone_plot.o3plot
  is 'NA';
comment on column fs_fiadb.ozone_plot.field_id
  is 'NA';
comment on column fs_fiadb.ozone_plot.split_plotid
  is 'NA';
comment on column fs_fiadb.ozone_plot.measyear
  is 'NA';
comment on column fs_fiadb.ozone_plot.measmon
  is 'NA';
comment on column fs_fiadb.ozone_plot.measday
  is 'NA';
comment on column fs_fiadb.ozone_plot.lat
  is 'NA';
comment on column fs_fiadb.ozone_plot.lon
  is 'NA';
comment on column fs_fiadb.ozone_plot.elevation
  is 'NA';
comment on column fs_fiadb.ozone_plot.manual
  is 'NA';
comment on column fs_fiadb.ozone_plot.qa_status
  is 'NA';
comment on column fs_fiadb.ozone_plot.created_by
  is 'NA';
comment on column fs_fiadb.ozone_plot.created_date
  is 'NA';
comment on column fs_fiadb.ozone_plot.created_in_instance
  is 'NA';
comment on column fs_fiadb.ozone_plot.modified_by
  is 'NA';
comment on column fs_fiadb.ozone_plot.modified_date
  is 'NA';
comment on column fs_fiadb.ozone_plot.modified_in_instance
  is 'NA';
comment on column fs_fiadb.ozone_plot.cycle
  is 'NA';
comment on column fs_fiadb.ozone_plot.subcycle
  is 'NA';
CREATE TABLE fs_fiadb.dwm_microplot_fuel
(
cn                   VARCHAR(34) NOT NULL,
plt_cn               VARCHAR(34) NOT NULL,
invyr                INTEGER NOT NULL,
statecd              INTEGER NOT NULL,
countycd             INTEGER NOT NULL,
plot                 INTEGER NOT NULL,
subp                 INTEGER NOT NULL,
measyear             INTEGER,
lvshrbcd             INTEGER,
dshrbcd              INTEGER,
lvhrbcd              INTEGER,
dhrbcd               INTEGER,
littercd             DOUBLE PRECISION,
lvshrbht             DOUBLE PRECISION,
dshrbht              DOUBLE PRECISION,
lvhrbht              DOUBLE PRECISION,
dhrbht               DOUBLE PRECISION,
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6),
micr_sample_method   VARCHAR(6)
);
comment on column fs_fiadb.dwm_microplot_fuel.cn
  is 'Unique Index';
comment on column fs_fiadb.dwm_microplot_fuel.plt_cn
  is 'Foreign Key to NIMS_PLOT';
comment on column fs_fiadb.dwm_microplot_fuel.invyr
  is 'NA';
comment on column fs_fiadb.dwm_microplot_fuel.statecd
  is 'state code';
comment on column fs_fiadb.dwm_microplot_fuel.countycd
  is 'County Code';
comment on column fs_fiadb.dwm_microplot_fuel.plot
  is 'P2 Plot Number';
comment on column fs_fiadb.dwm_microplot_fuel.subp
  is 'Subplot Number';
comment on column fs_fiadb.dwm_microplot_fuel.measyear
  is 'Measurement Year';
comment on column fs_fiadb.dwm_microplot_fuel.lvshrbcd
  is 'Live shrub cover (%)';
comment on column fs_fiadb.dwm_microplot_fuel.dshrbcd
  is 'Dead shrub cover (%)';
comment on column fs_fiadb.dwm_microplot_fuel.lvhrbcd
  is 'Live herb cover (%)';
comment on column fs_fiadb.dwm_microplot_fuel.dhrbcd
  is 'Dead herb cover (%)';
comment on column fs_fiadb.dwm_microplot_fuel.littercd
  is 'Litter cover (%)';
comment on column fs_fiadb.dwm_microplot_fuel.lvshrbht
  is 'Live shrub height (ft)';
comment on column fs_fiadb.dwm_microplot_fuel.dshrbht
  is 'Dead shrub height (ft)';
comment on column fs_fiadb.dwm_microplot_fuel.lvhrbht
  is 'Live herb height (ft)';
comment on column fs_fiadb.dwm_microplot_fuel.dhrbht
  is 'Dead herb height (ft)';
comment on column fs_fiadb.dwm_microplot_fuel.created_by
  is 'Created by';
comment on column fs_fiadb.dwm_microplot_fuel.created_date
  is 'Created Date';
comment on column fs_fiadb.dwm_microplot_fuel.created_in_instance
  is 'Created in Instance';
comment on column fs_fiadb.dwm_microplot_fuel.modified_by
  is 'Modified by';
comment on column fs_fiadb.dwm_microplot_fuel.modified_date
  is 'Modified Date';
comment on column fs_fiadb.dwm_microplot_fuel.modified_in_instance
  is 'Modified in Instance';
comment on column fs_fiadb.dwm_microplot_fuel.micr_sample_method
  is 'Code indicating what design and sampling protocol were used to collect the record';
CREATE TABLE fs_fiadb.lichen_lab
(
cn                   VARCHAR(34) NOT NULL,
plt_cn               VARCHAR(34) NOT NULL,
invyr                INTEGER NOT NULL,
statecd              INTEGER NOT NULL,
countycd             INTEGER NOT NULL,
plot                 INTEGER NOT NULL,
lich_sppcd           INTEGER NOT NULL,
measyear             INTEGER NOT NULL,
abundance_class      INTEGER NOT NULL,
origin_flag          INTEGER,
spp_comments         VARCHAR(2000),
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6)
);
comment on column fs_fiadb.lichen_lab.cn
  is 'NA';
comment on column fs_fiadb.lichen_lab.plt_cn
  is 'NA';
comment on column fs_fiadb.lichen_lab.invyr
  is 'NA';
comment on column fs_fiadb.lichen_lab.statecd
  is 'NA';
comment on column fs_fiadb.lichen_lab.countycd
  is 'NA';
comment on column fs_fiadb.lichen_lab.plot
  is 'NA';
comment on column fs_fiadb.lichen_lab.lich_sppcd
  is 'NA';
comment on column fs_fiadb.lichen_lab.measyear
  is 'NA';
comment on column fs_fiadb.lichen_lab.abundance_class
  is 'NA';
comment on column fs_fiadb.lichen_lab.origin_flag
  is 'NA';
comment on column fs_fiadb.lichen_lab.spp_comments
  is 'NA';
comment on column fs_fiadb.lichen_lab.created_by
  is 'NA';
comment on column fs_fiadb.lichen_lab.created_date
  is 'NA';
comment on column fs_fiadb.lichen_lab.created_in_instance
  is 'NA';
comment on column fs_fiadb.lichen_lab.modified_by
  is 'NA';
comment on column fs_fiadb.lichen_lab.modified_date
  is 'NA';
comment on column fs_fiadb.lichen_lab.modified_in_instance
  is 'NA';
CREATE TABLE fs_fiadb.ref_unit
(
statecd              INTEGER NOT NULL,
value                INTEGER NOT NULL,
meaning              VARCHAR(80) NOT NULL,
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6)
);
comment on column fs_fiadb.ref_unit.statecd
  is 'NA';
comment on column fs_fiadb.ref_unit.value
  is 'NA';
comment on column fs_fiadb.ref_unit.meaning
  is 'NA';
comment on column fs_fiadb.ref_unit.created_by
  is 'Created by';
comment on column fs_fiadb.ref_unit.created_date
  is 'Created Date';
comment on column fs_fiadb.ref_unit.created_in_instance
  is 'Created in Instance';
comment on column fs_fiadb.ref_unit.modified_by
  is 'Modified by';
comment on column fs_fiadb.ref_unit.modified_date
  is 'Modified Date';
comment on column fs_fiadb.ref_unit.modified_in_instance
  is 'Modified in Instance';
CREATE TABLE fs_fiadb.ref_forest_type_nimac
(
code         VARCHAR(5) NOT NULL,
meaning      VARCHAR(50) NOT NULL,
description  VARCHAR(2000) NOT NULL,
forest       VARCHAR(1) NOT NULL,
manual_start DECIMAL(3,1) NOT NULL,
manual_end   DECIMAL(3,1)
);
comment on column fs_fiadb.ref_forest_type_nimac.code
  is 'Forest Type Code';
comment on column fs_fiadb.ref_forest_type_nimac.meaning
  is 'Forest Type Name';
comment on column fs_fiadb.ref_forest_type_nimac.description
  is 'Description of the Forest Type';
comment on column fs_fiadb.ref_forest_type_nimac.forest
  is 'Y/N indicates if the type is a Forest Type (Y) or a Non-Forest Type (N)';
comment on column fs_fiadb.ref_forest_type_nimac.manual_start
  is 'Field Manual this code was first used in';
comment on column fs_fiadb.ref_forest_type_nimac.manual_end
  is 'Field Manual this code was last used in';
CREATE TABLE fs_fiadb.ref_nvcs_hierarchy_strct
(
hierarchy_version    VARCHAR(30) NOT NULL,
primary_class        VARCHAR(8) NOT NULL,
nvcs_level_1_label   VARCHAR(30) NOT NULL,
nvcs_level_1_cd      VARCHAR(3) NOT NULL,
nvcs_level_2_label   VARCHAR(30) NOT NULL,
nvcs_level_2_cd      VARCHAR(8) NOT NULL,
nvcs_level_3_label   VARCHAR(30) NOT NULL,
nvcs_level_3_cd      VARCHAR(10) NOT NULL,
nvcs_level_4_label   VARCHAR(30) NOT NULL,
nvcs_level_4_cd      VARCHAR(13) NOT NULL,
nvcs_level_5_label   VARCHAR(30) NOT NULL,
nvcs_level_5_cd      VARCHAR(20) NOT NULL,
nvcs_level_6_label   VARCHAR(30),
nvcs_level_6_cd      VARCHAR(20),
nvcs_level_7_label   VARCHAR(30),
nvcs_level_7_cd      VARCHAR(25),
nvcs_level_8_label   VARCHAR(30),
nvcs_level_8_cd      VARCHAR(25),
nvcs_level_1_meaning VARCHAR(100) NOT NULL,
nvcs_level_2_meaning VARCHAR(100) NOT NULL,
nvcs_level_3_meaning VARCHAR(100) NOT NULL,
nvcs_level_4_meaning VARCHAR(100) NOT NULL,
nvcs_level_5_meaning VARCHAR(100) NOT NULL,
nvcs_level_6_meaning VARCHAR(100),
nvcs_level_7_meaning VARCHAR(100),
nvcs_level_8_meaning VARCHAR(100),
nvcs_level_1_note    VARCHAR(1000),
nvcs_level_2_note    VARCHAR(1000),
nvcs_level_3_note    VARCHAR(1000),
nvcs_level_4_note    VARCHAR(1000),
nvcs_level_5_note    VARCHAR(1000),
nvcs_level_6_note    VARCHAR(1000),
nvcs_level_7_note    VARCHAR(1000),
nvcs_level_8_note    VARCHAR(1000),
citation_nbr         INTEGER,
created_by           VARCHAR(30) NOT NULL,
created_date         TIMESTAMP(0) NOT NULL,
created_in_instance  VARCHAR(6) NOT NULL,
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6)
);
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.hierarchy_version
  is 'A version indicator for the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.primary_class
  is 'The primary classification of the algorithm [NATURAL|CULTURAL]';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.nvcs_level_1_label
  is 'A label assigned to the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.nvcs_level_1_cd
  is 'A code representing the classification at the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.nvcs_level_2_label
  is 'A label assigned to the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.nvcs_level_2_cd
  is 'A code representing the classification at the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.nvcs_level_3_label
  is 'A label assigned to the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.nvcs_level_3_cd
  is 'A code representing the classification at the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.nvcs_level_4_label
  is 'A label assigned to the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.nvcs_level_4_cd
  is 'A code representing the classification at the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.nvcs_level_5_label
  is 'A label assigned to the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.nvcs_level_5_cd
  is 'A code representing the classification at the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.nvcs_level_6_label
  is 'A label assigned to the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.nvcs_level_6_cd
  is 'A code representing the classification at the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.nvcs_level_7_label
  is 'A label assigned to the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.nvcs_level_7_cd
  is 'A code representing the classification at the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.nvcs_level_8_label
  is 'A label assigned to the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.nvcs_level_8_cd
  is 'A code representing the classification at the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.nvcs_level_1_meaning
  is 'The meaning of the code at the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.nvcs_level_2_meaning
  is 'The meaning of the code at the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.nvcs_level_3_meaning
  is 'The meaning of the code at the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.nvcs_level_4_meaning
  is 'The meaning of the code at the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.nvcs_level_5_meaning
  is 'The meaning of the code at the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.nvcs_level_6_meaning
  is 'The meaning of the code at the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.nvcs_level_7_meaning
  is 'The meaning of the code at the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.nvcs_level_8_meaning
  is 'The meaning of the code at the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.nvcs_level_1_note
  is 'Any remark relevant to the hierarchy structure entry.';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.nvcs_level_2_note
  is 'Any remark relevant to the hierarchy structure record.';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.nvcs_level_3_note
  is 'Any remark relevant to the hierarchy structure record.';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.nvcs_level_4_note
  is 'Any remark relevant to the hierarchy structure record.';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.nvcs_level_5_note
  is 'Any remark relevant to the hierarchy structure record.';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.nvcs_level_6_note
  is 'Any remark relevant to the hierarchy structure record.';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.nvcs_level_7_note
  is 'Any remark relevant to the hierarchy structure record.';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.nvcs_level_8_note
  is 'Any remark relevant to the hierarchy structure record.';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.citation_nbr
  is 'Foreign key to the parent REF_CITATION record.';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.created_by
  is 'Created by';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.created_date
  is 'Created date';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.created_in_instance
  is 'Created in instance';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.modified_by
  is 'Modified by';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.modified_date
  is 'Modified date';
comment on column fs_fiadb.ref_nvcs_hierarchy_strct.modified_in_instance
  is 'Modified in instance';
CREATE TABLE fs_fiadb.grnd_cvr
(
cn                   VARCHAR(34) NOT NULL,
plt_cn               VARCHAR(34) NOT NULL,
invyr                INTEGER NOT NULL,
statecd              INTEGER NOT NULL,
unitcd               INTEGER NOT NULL,
countycd             INTEGER NOT NULL,
plot                 INTEGER NOT NULL,
subp                 INTEGER NOT NULL,
transect             INTEGER NOT NULL,
cvr_pct              INTEGER,
grnd_cvr_seg         INTEGER NOT NULL,
grnd_cvr_typ         VARCHAR(4) NOT NULL,
cycle                INTEGER,
subcycle             INTEGER,
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6)
);
comment on column fs_fiadb.grnd_cvr.cn
  is 'Unique index';
comment on column fs_fiadb.grnd_cvr.plt_cn
  is 'Unique index';
comment on column fs_fiadb.grnd_cvr.invyr
  is 'Inventory year';
comment on column fs_fiadb.grnd_cvr.statecd
  is 'State code';
comment on column fs_fiadb.grnd_cvr.unitcd
  is 'Survey unit code';
comment on column fs_fiadb.grnd_cvr.countycd
  is 'County code';
comment on column fs_fiadb.grnd_cvr.plot
  is 'Plot number';
comment on column fs_fiadb.grnd_cvr.subp
  is 'subplot number';
comment on column fs_fiadb.grnd_cvr.transect
  is 'transect number';
comment on column fs_fiadb.grnd_cvr.cvr_pct
  is 'cover percent';
comment on column fs_fiadb.grnd_cvr.grnd_cvr_seg
  is 'segment id  for 4-14 or 14-24';
comment on column fs_fiadb.grnd_cvr.grnd_cvr_typ
  is 'type of ground cover';
comment on column fs_fiadb.grnd_cvr.cycle
  is 'Inventory cycle number';
comment on column fs_fiadb.grnd_cvr.subcycle
  is 'Inventory subcycle number';
comment on column fs_fiadb.grnd_cvr.created_by
  is 'Created by';
comment on column fs_fiadb.grnd_cvr.created_date
  is 'Created date';
comment on column fs_fiadb.grnd_cvr.created_in_instance
  is 'Created in instance';
comment on column fs_fiadb.grnd_cvr.modified_by
  is 'Modified by';
comment on column fs_fiadb.grnd_cvr.modified_date
  is 'Modified date';
comment on column fs_fiadb.grnd_cvr.modified_in_instance
  is 'Modified in instance';
CREATE TABLE fs_fiadb.tree_woodland_stems
(
cn                   VARCHAR(34) NOT NULL,
plt_cn               VARCHAR(34) NOT NULL,
invyr                INTEGER NOT NULL,
statecd              INTEGER NOT NULL,
unitcd               INTEGER NOT NULL,
countycd             INTEGER NOT NULL,
plot                 INTEGER NOT NULL,
subp                 INTEGER NOT NULL,
tree                 INTEGER,
tre_cn               VARCHAR(34) NOT NULL,
dia                  DECIMAL(5,2),
statuscd             INTEGER,
stem_nbr             INTEGER,
cycle                INTEGER,
subcycle             INTEGER,
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6)
);
comment on column fs_fiadb.tree_woodland_stems.cn
  is 'Unique index';
comment on column fs_fiadb.tree_woodland_stems.plt_cn
  is 'Unique index';
comment on column fs_fiadb.tree_woodland_stems.invyr
  is 'Inventory year';
comment on column fs_fiadb.tree_woodland_stems.statecd
  is 'State code';
comment on column fs_fiadb.tree_woodland_stems.unitcd
  is 'Survey unit code';
comment on column fs_fiadb.tree_woodland_stems.countycd
  is 'County code';
comment on column fs_fiadb.tree_woodland_stems.plot
  is 'Plot number';
comment on column fs_fiadb.tree_woodland_stems.subp
  is 'subplot number';
comment on column fs_fiadb.tree_woodland_stems.tree
  is 'tree number';
comment on column fs_fiadb.tree_woodland_stems.tre_cn
  is 'sequence number (foreign key back to tree)';
comment on column fs_fiadb.tree_woodland_stems.dia
  is 'woodland stem diameter';
comment on column fs_fiadb.tree_woodland_stems.statuscd
  is 'woodland stem status code 1=live 2=dead';
comment on column fs_fiadb.tree_woodland_stems.stem_nbr
  is 'stem sequence number';
comment on column fs_fiadb.tree_woodland_stems.cycle
  is 'Inventory cycle number';
comment on column fs_fiadb.tree_woodland_stems.subcycle
  is 'Inventory subcycle number';
comment on column fs_fiadb.tree_woodland_stems.created_by
  is 'Created by';
comment on column fs_fiadb.tree_woodland_stems.created_date
  is 'Created date';
comment on column fs_fiadb.tree_woodland_stems.created_in_instance
  is 'Created in instance';
comment on column fs_fiadb.tree_woodland_stems.modified_by
  is 'Modified by';
comment on column fs_fiadb.tree_woodland_stems.modified_date
  is 'Modified date';
comment on column fs_fiadb.tree_woodland_stems.modified_in_instance
  is 'Modified in instance';
CREATE TABLE fs_fiadb.ozone_validation
(
crwtypcd             INTEGER NOT NULL,
leafvchr             DOUBLE PRECISION NOT NULL,
injvalid             DOUBLE PRECISION NOT NULL,
o3_statcd            DOUBLE PRECISION NOT NULL,
measyear             INTEGER NOT NULL,
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6),
cn                   VARCHAR(34) NOT NULL,
plt_cn               VARCHAR(34) NOT NULL,
invyr                INTEGER NOT NULL,
statecd              INTEGER NOT NULL,
countycd             INTEGER NOT NULL,
o3plot               DOUBLE PRECISION NOT NULL,
field_id             INTEGER NOT NULL,
split_plotid         INTEGER NOT NULL,
biospcd              DOUBLE PRECISION NOT NULL,
qastatcd             INTEGER NOT NULL
);
comment on column fs_fiadb.ozone_validation.crwtypcd
  is 'NA';
comment on column fs_fiadb.ozone_validation.leafvchr
  is 'NA';
comment on column fs_fiadb.ozone_validation.injvalid
  is 'NA';
comment on column fs_fiadb.ozone_validation.o3_statcd
  is 'NA';
comment on column fs_fiadb.ozone_validation.measyear
  is 'Measurement Year';
comment on column fs_fiadb.ozone_validation.created_by
  is 'Created by';
comment on column fs_fiadb.ozone_validation.created_date
  is 'Created Date';
comment on column fs_fiadb.ozone_validation.created_in_instance
  is 'Created in Instance';
comment on column fs_fiadb.ozone_validation.modified_by
  is 'Modified by';
comment on column fs_fiadb.ozone_validation.modified_date
  is 'Modified Date';
comment on column fs_fiadb.ozone_validation.modified_in_instance
  is 'Modified in Instance';
comment on column fs_fiadb.ozone_validation.cn
  is 'Unique Index';
comment on column fs_fiadb.ozone_validation.plt_cn
  is 'Foreign Key to NIMS_OZONE_PLOT';
comment on column fs_fiadb.ozone_validation.invyr
  is 'NA';
comment on column fs_fiadb.ozone_validation.statecd
  is 'State code';
comment on column fs_fiadb.ozone_validation.countycd
  is 'County code';
comment on column fs_fiadb.ozone_validation.o3plot
  is 'Concatination of P3HEX and P3PLOT';
comment on column fs_fiadb.ozone_validation.field_id
  is 'P3 Hexagon Number';
comment on column fs_fiadb.ozone_validation.split_plotid
  is 'P3 Plot Number';
comment on column fs_fiadb.ozone_validation.biospcd
  is 'NA';
comment on column fs_fiadb.ozone_validation.qastatcd
  is 'NA';
CREATE TABLE fs_fiadb.subp_cond
(
cn                   VARCHAR(34) NOT NULL,
plt_cn               VARCHAR(34) NOT NULL,
invyr                INTEGER NOT NULL,
statecd              INTEGER NOT NULL,
unitcd               INTEGER NOT NULL,
countycd             INTEGER NOT NULL,
plot                 INTEGER NOT NULL,
subp                 INTEGER NOT NULL,
condid               INTEGER NOT NULL,
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6),
micrcond_prop        DOUBLE PRECISION,
subpcond_prop        DOUBLE PRECISION,
macrcond_prop        DOUBLE PRECISION,
nonfr_incl_pct_subp  INTEGER,
nonfr_incl_pct_macro INTEGER,
cycle                INTEGER,
subcycle             INTEGER
);
comment on column fs_fiadb.subp_cond.cn
  is 'Unique index';
comment on column fs_fiadb.subp_cond.plt_cn
  is 'Unique index';
comment on column fs_fiadb.subp_cond.invyr
  is 'NA';
comment on column fs_fiadb.subp_cond.statecd
  is 'State code';
comment on column fs_fiadb.subp_cond.unitcd
  is 'Survey unit code';
comment on column fs_fiadb.subp_cond.countycd
  is 'County code';
comment on column fs_fiadb.subp_cond.plot
  is 'Plot number';
comment on column fs_fiadb.subp_cond.subp
  is 'Subplot number';
comment on column fs_fiadb.subp_cond.condid
  is 'Condition number';
comment on column fs_fiadb.subp_cond.created_by
  is 'Created by';
comment on column fs_fiadb.subp_cond.created_date
  is 'Created date';
comment on column fs_fiadb.subp_cond.created_in_instance
  is 'Created in instance';
comment on column fs_fiadb.subp_cond.modified_by
  is 'Modified by';
comment on column fs_fiadb.subp_cond.modified_date
  is 'Modified date';
comment on column fs_fiadb.subp_cond.modified_in_instance
  is 'Modified in instance';
comment on column fs_fiadb.subp_cond.micrcond_prop
  is 'Proportion of this microplot in this condition';
comment on column fs_fiadb.subp_cond.subpcond_prop
  is 'Proportion of this subplot in this condition';
comment on column fs_fiadb.subp_cond.macrcond_prop
  is 'Proportion of this macroplot in this condition';
comment on column fs_fiadb.subp_cond.nonfr_incl_pct_subp
  is 'NA';
comment on column fs_fiadb.subp_cond.nonfr_incl_pct_macro
  is 'NA';
comment on column fs_fiadb.subp_cond.cycle
  is 'Inventory cycle number';
comment on column fs_fiadb.subp_cond.subcycle
  is 'Inventory subcycle number';
CREATE TABLE fs_fiadb.soils_sample_loc
(
cn                   VARCHAR(34) NOT NULL,
plt_cn               VARCHAR(34) NOT NULL,
invyr                INTEGER NOT NULL,
statecd              INTEGER NOT NULL,
countycd             INTEGER NOT NULL,
plot                 INTEGER NOT NULL,
smplnnbr             INTEGER NOT NULL,
measyear             INTEGER NOT NULL,
forflthk             DOUBLE PRECISION,
ltrlrthk             DOUBLE PRECISION,
forflthkn            DOUBLE PRECISION,
ltrlrthkn            DOUBLE PRECISION,
forflthks            DOUBLE PRECISION,
ltrlrthks            DOUBLE PRECISION,
forflthke            DOUBLE PRECISION,
ltrlrthke            DOUBLE PRECISION,
forflthkw            DOUBLE PRECISION,
ltrlrthkw            DOUBLE PRECISION,
condid               INTEGER,
vstnbr               INTEGER NOT NULL,
txtrlyr1             DOUBLE PRECISION,
txtrlyr2             DOUBLE PRECISION,
dpthsbsl             DOUBLE PRECISION,
soils_statcd         INTEGER NOT NULL,
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6)
);
comment on column fs_fiadb.soils_sample_loc.cn
  is 'Unique Index';
comment on column fs_fiadb.soils_sample_loc.plt_cn
  is 'Foreign Key to NIMS_PLOT';
comment on column fs_fiadb.soils_sample_loc.invyr
  is 'NA';
comment on column fs_fiadb.soils_sample_loc.statecd
  is 'state code';
comment on column fs_fiadb.soils_sample_loc.countycd
  is 'County Code';
comment on column fs_fiadb.soils_sample_loc.plot
  is 'P2 Plot Number';
comment on column fs_fiadb.soils_sample_loc.smplnnbr
  is 'Sample Line Number';
comment on column fs_fiadb.soils_sample_loc.measyear
  is 'Measurement Year';
comment on column fs_fiadb.soils_sample_loc.forflthk
  is 'Forest Floor Thickness';
comment on column fs_fiadb.soils_sample_loc.ltrlrthk
  is 'Litter Layer Thickness';
comment on column fs_fiadb.soils_sample_loc.forflthkn
  is 'Forest Floor Thickness at the North Edge of the Sampling Frame';
comment on column fs_fiadb.soils_sample_loc.ltrlrthkn
  is 'Litter Layer Thickness at the North Edge of the Sampling Frame';
comment on column fs_fiadb.soils_sample_loc.forflthks
  is 'Forest Floor Thickness at the South Edge of the Sampling Frame';
comment on column fs_fiadb.soils_sample_loc.ltrlrthks
  is 'Litter Layer Thickness at the South Edge of the Sampling Frame';
comment on column fs_fiadb.soils_sample_loc.forflthke
  is 'Forest Floor Thickness at the East Edge of the Sampling Frame';
comment on column fs_fiadb.soils_sample_loc.ltrlrthke
  is 'Litter Layer Thickness at the East Edge of the Sampling Frame';
comment on column fs_fiadb.soils_sample_loc.forflthkw
  is 'Forest Floor Thickness at the West Edge of the Sampling Frame';
comment on column fs_fiadb.soils_sample_loc.ltrlrthkw
  is 'Litter Layer Thickness at the West Edge of the Sampling Frame';
comment on column fs_fiadb.soils_sample_loc.condid
  is 'Forest condition class nbr';
comment on column fs_fiadb.soils_sample_loc.vstnbr
  is 'Visit Number';
comment on column fs_fiadb.soils_sample_loc.txtrlyr1
  is 'Soil Texture Layer';
comment on column fs_fiadb.soils_sample_loc.txtrlyr2
  is 'Soil Texture Layer';
comment on column fs_fiadb.soils_sample_loc.dpthsbsl
  is 'Depth to a Restricted Layer';
comment on column fs_fiadb.soils_sample_loc.soils_statcd
  is 'Soil Sampling Status';
comment on column fs_fiadb.soils_sample_loc.created_by
  is 'Created by';
comment on column fs_fiadb.soils_sample_loc.created_date
  is 'Created Date';
comment on column fs_fiadb.soils_sample_loc.created_in_instance
  is 'Created in Instance';
comment on column fs_fiadb.soils_sample_loc.modified_by
  is 'Modified by';
comment on column fs_fiadb.soils_sample_loc.modified_date
  is 'Modified Date';
comment on column fs_fiadb.soils_sample_loc.modified_in_instance
  is 'Modified in Instance';
CREATE TABLE fs_fiadb.veg_subplot
(
cn                             VARCHAR(34) NOT NULL,
plt_cn                         VARCHAR(34) NOT NULL,
vvt_cn                         VARCHAR(34) NOT NULL,
invyr                          INTEGER NOT NULL,
statecd                        INTEGER NOT NULL,
countycd                       INTEGER NOT NULL,
plot                           INTEGER NOT NULL,
subp                           INTEGER NOT NULL,
veg_subp_status_cd             INTEGER,
veg_subp_nonsample_reasn_cd    INTEGER,
subp_accessible_forest_pct     INTEGER,
detailed_nonforest_land_use    INTEGER,
total_canopy_cover_layer_1     INTEGER,
total_canopy_cover_layer_2     INTEGER,
total_canopy_cover_layer_3     INTEGER,
total_canopy_cover_layer_4     INTEGER,
crypto_crust_cover_pct         INTEGER,
lichen_cover_pct               INTEGER,
litter_duff_cover_pct          INTEGER,
mineral_soil_cover_pct         INTEGER,
moss_cover_pct                 INTEGER,
road_trail_cover_pct           INTEGER,
rock_cover_pct                 INTEGER,
standing_water_cover_pct       INTEGER,
stream_lake_cover_pct          INTEGER,
trash_junk_cover_pct           INTEGER,
wood_cover_pct                 INTEGER,
veg_subp_status_cd_pre2004     INTEGER,
veg_subp_nonsmp_rsn_cd_pre2004 INTEGER,
created_by                     VARCHAR(30),
created_date                   TIMESTAMP(0),
created_in_instance            VARCHAR(6),
modified_by                    VARCHAR(30),
modified_date                  TIMESTAMP(0),
modified_in_instance           VARCHAR(6)
);
comment on column fs_fiadb.veg_subplot.cn
  is 'CN partly identifies NIMS_VEG_SUBPLOT_TBL';
comment on column fs_fiadb.veg_subplot.plt_cn
  is 'PLT_CN is foreign key to parent NIMS_PLOT_TBL.CN';
comment on column fs_fiadb.veg_subplot.vvt_cn
  is 'VVT_CN is foreign key to parent NIMS_VEG_VISIT_TBL.CN';
comment on column fs_fiadb.veg_subplot.invyr
  is 'NA';
comment on column fs_fiadb.veg_subplot.statecd
  is 'NA';
comment on column fs_fiadb.veg_subplot.countycd
  is 'NA';
comment on column fs_fiadb.veg_subplot.plot
  is 'NA';
comment on column fs_fiadb.veg_subplot.subp
  is 'Subplot Number';
comment on column fs_fiadb.veg_subplot.veg_subp_status_cd
  is 'VEG Subplot Status - as recorded for 2004 and later, copied from subplot record (NIMS, FIADB, or MESS) for pre-2004 plots';
comment on column fs_fiadb.veg_subplot.veg_subp_nonsample_reasn_cd
  is 'Subplot Nonsampled Reason';
comment on column fs_fiadb.veg_subplot.subp_accessible_forest_pct
  is 'Subplot Percent Area Accessible Forest';
comment on column fs_fiadb.veg_subplot.detailed_nonforest_land_use
  is 'Detailed Nonforest Land Use';
comment on column fs_fiadb.veg_subplot.total_canopy_cover_layer_1
  is 'Layer 1 Total Canopy Cover within accessible forestland conditions';
comment on column fs_fiadb.veg_subplot.total_canopy_cover_layer_2
  is 'Layer 2 Total Canopy Cover within accessible forestland conditions';
comment on column fs_fiadb.veg_subplot.total_canopy_cover_layer_3
  is 'Layer 3 Total Canopy Cover within accessible forestland conditions';
comment on column fs_fiadb.veg_subplot.total_canopy_cover_layer_4
  is 'Layer 4 Total Canopy Cover within accessible forestland conditions';
comment on column fs_fiadb.veg_subplot.crypto_crust_cover_pct
  is 'Ground Cover (Cryptobiotic Crust)';
comment on column fs_fiadb.veg_subplot.lichen_cover_pct
  is 'Ground Cover (Lichen)';
comment on column fs_fiadb.veg_subplot.litter_duff_cover_pct
  is 'Ground Cover (Litter Duff)';
comment on column fs_fiadb.veg_subplot.mineral_soil_cover_pct
  is 'Ground Cover (Mineral Soil)';
comment on column fs_fiadb.veg_subplot.moss_cover_pct
  is 'Ground Cover (Moss)';
comment on column fs_fiadb.veg_subplot.road_trail_cover_pct
  is 'Ground Cover (Road;Tral)';
comment on column fs_fiadb.veg_subplot.rock_cover_pct
  is 'Ground Cover (Rock)';
comment on column fs_fiadb.veg_subplot.standing_water_cover_pct
  is 'Ground Cover (Standing Water;Flooded)';
comment on column fs_fiadb.veg_subplot.stream_lake_cover_pct
  is 'Ground Cover (Stream;Lake)';
comment on column fs_fiadb.veg_subplot.trash_junk_cover_pct
  is 'Ground Cover (Trash;Junk;Other)';
comment on column fs_fiadb.veg_subplot.wood_cover_pct
  is 'Ground Cover (Wood)';
comment on column fs_fiadb.veg_subplot.veg_subp_status_cd_pre2004
  is ''Veg Subplot Status Code consistent with NIMS_VEG_VISIT.VEG_MANUAL = 1.7 P3 Veg protocol.  Code 2 = subplot sampled, accessible forest < 50% of subplot.  Value derived from P2 condition data, plot notes, and availability of various field-recorded records (e.g. subplot species and subplot totals).';';
comment on column fs_fiadb.veg_subplot.veg_subp_nonsmp_rsn_cd_pre2004
  is ''Veg Subplot Nonsampled Reason Code Code consistent with NIMS_VEG_VISIT.VEG_MANUAL = 1.7 P3 Veg protocol.  Value derived from VEG_SUBP_NONSAMPLE_REASN_CD, P2 condition data, plot notes, and availability of various field-recorded records (e.g. subplot species and subplot totals).';';
comment on column fs_fiadb.veg_subplot.created_by
  is 'CREATED_BY user';
comment on column fs_fiadb.veg_subplot.created_date
  is 'CREATED_DATE';
comment on column fs_fiadb.veg_subplot.created_in_instance
  is 'CREATED_IN_INSTANCE is of NIMS_VEG_SUBPLOT_TBL';
comment on column fs_fiadb.veg_subplot.modified_by
  is 'MODIFIED_BY user';
comment on column fs_fiadb.veg_subplot.modified_date
  is 'MODIFIED_DATE';
comment on column fs_fiadb.veg_subplot.modified_in_instance
  is 'MODIFIED_IN_INSTANCE is of NIMS_VEG_SUBPLOT_TBL';
CREATE TABLE fs_fiadb.cond
(
cn                            VARCHAR(34) NOT NULL,
plt_cn                        VARCHAR(34) NOT NULL,
invyr                         INTEGER NOT NULL,
statecd                       INTEGER NOT NULL,
unitcd                        INTEGER NOT NULL,
countycd                      INTEGER NOT NULL,
plot                          INTEGER NOT NULL,
condid                        INTEGER NOT NULL,
cond_status_cd                INTEGER NOT NULL,
cond_nonsample_reasn_cd       INTEGER,
reservcd                      INTEGER,
owncd                         INTEGER,
owngrpcd                      INTEGER,
adforcd                       INTEGER,
fortypcd                      INTEGER,
fldtypcd                      INTEGER,
mapden                        INTEGER,
stdage                        INTEGER,
stdszcd                       INTEGER,
fldszcd                       INTEGER,
siteclcd                      INTEGER,
sicond                        INTEGER,
sibase                        INTEGER,
sisp                          INTEGER,
stdorgcd                      INTEGER,
stdorgsp                      DOUBLE PRECISION,
prop_basis                    VARCHAR(12),
condprop_unadj                DOUBLE PRECISION,
micrprop_unadj                DOUBLE PRECISION,
subpprop_unadj                DOUBLE PRECISION,
macrprop_unadj                DOUBLE PRECISION,
slope                         INTEGER,
aspect                        INTEGER,
physclcd                      INTEGER,
gsstkcd                       INTEGER,
alstkcd                       INTEGER,
dstrbcd1                      INTEGER,
dstrbyr1                      INTEGER,
dstrbcd2                      INTEGER,
dstrbyr2                      INTEGER,
dstrbcd3                      INTEGER,
dstrbyr3                      INTEGER,
trtcd1                        INTEGER,
trtyr1                        INTEGER,
trtcd2                        INTEGER,
trtyr2                        INTEGER,
trtcd3                        INTEGER,
trtyr3                        INTEGER,
presnfcd                      INTEGER,
balive                        DECIMAL(9,4),
fldage                        INTEGER,
alstk                         DECIMAL(7,4),
gsstk                         DECIMAL(7,4),
fortypcdcalc                  INTEGER,
habtypcd1                     VARCHAR(10),
habtypcd1_pub_cd              VARCHAR(10),
habtypcd1_descr_pub_cd        VARCHAR(10),
habtypcd2                     VARCHAR(10),
habtypcd2_pub_cd              VARCHAR(10),
habtypcd2_descr_pub_cd        VARCHAR(10),
mixedconfcd                   VARCHAR(1),
vol_loc_grp                   VARCHAR(200),
siteclcdest                   INTEGER,
sitetree_tree                 INTEGER,
sitecl_method                 INTEGER,
carbon_down_dead              DECIMAL(13,6),
carbon_litter                 DECIMAL(13,6),
carbon_soil_org               DECIMAL(13,6),
carbon_understory_ag          DECIMAL(13,6),
carbon_understory_bg          DECIMAL(13,6),
created_by                    VARCHAR(30),
created_date                  TIMESTAMP(0),
created_in_instance           VARCHAR(6),
modified_by                   VARCHAR(30),
modified_date                 TIMESTAMP(0),
modified_in_instance          VARCHAR(6),
cycle                         INTEGER,
subcycle                      INTEGER,
soil_rooting_depth_pnw        VARCHAR(1),
ground_land_class_pnw         VARCHAR(3),
plant_stockability_factor_pnw DOUBLE PRECISION,
stnd_cond_cd_pnwrs            INTEGER,
stnd_struc_cd_pnwrs           INTEGER,
stump_cd_pnwrs                VARCHAR(1),
fire_srs                      INTEGER,
grazing_srs                   INTEGER,
harvest_type1_srs             INTEGER,
harvest_type2_srs             INTEGER,
harvest_type3_srs             INTEGER,
land_use_srs                  INTEGER,
operability_srs               INTEGER,
stand_structure_srs           INTEGER,
nf_cond_status_cd             INTEGER,
nf_cond_nonsample_reasn_cd    INTEGER,
canopy_cvr_sample_method_cd   INTEGER,
live_canopy_cvr_pct           INTEGER,
live_missing_canopy_cvr_pct   INTEGER,
nbr_live_stems                INTEGER,
ownsubcd                      INTEGER,
industrialcd_fiadb            INTEGER,
reservcd_5                    INTEGER,
admin_withdrawn_cd            INTEGER,
chaining_cd                   INTEGER,
land_cover_class_cd_ret       INTEGER,
afforestation_cd              INTEGER,
prev_afforestation_cd         INTEGER,
dwm_fuelbed_typcd             VARCHAR(3),
nvcs_primary_class            VARCHAR(8),
nvcs_level_1_cd               VARCHAR(25),
nvcs_level_2_cd               VARCHAR(25),
nvcs_level_3_cd               VARCHAR(25),
nvcs_level_4_cd               VARCHAR(25),
nvcs_level_5_cd               VARCHAR(25),
nvcs_level_6_cd               VARCHAR(25),
nvcs_level_7_cd               VARCHAR(25),
nvcs_level_8_cd               VARCHAR(25),
age_basis_cd_pnwrs            INTEGER,
cond_status_chng_cd_rmrs      INTEGER,
crcovpct_rmrs                 INTEGER,
dominant_species1_pnwrs       INTEGER,
dominant_species2_pnwrs       INTEGER,
dominant_species3_pnwrs       INTEGER,
dstrbcd1_p2a                  INTEGER,
dstrbcd2_p2a                  INTEGER,
dstrbcd3_p2a                  INTEGER,
dstrbyr1_p2a                  INTEGER,
dstrbyr2_p2a                  INTEGER,
dstrbyr3_p2a                  INTEGER,
fldtypcd_30                   INTEGER,
forest_community_pnwrs        INTEGER,
land_usecd_rmrs               INTEGER,
maicf                         DECIMAL(5,2),
pctbare_rmrs                  INTEGER,
qmd_rmrs                      DECIMAL(5,1),
rangetypcd_rmrs               INTEGER,
sdimax_rmrs                   INTEGER,
sdipct_rmrs                   DECIMAL(4,1),
sdi_rmrs                      DECIMAL(8,4),
stand_structure_me_ners       INTEGER,
trees_present_ncrs            INTEGER,
trees_present_ners            INTEGER,
trtcd1_p2a                    INTEGER,
trtcd2_p2a                    INTEGER,
trtcd3_p2a                    INTEGER,
trtopcd                       INTEGER,
trtyr1_p2a                    INTEGER,
trtyr2_p2a                    INTEGER,
trtyr3_p2a                    INTEGER,
land_cover_class_cd           INTEGER,
sieqn_ref_cd                  VARCHAR(10),
sicond_fvs                    INTEGER,
sibase_fvs                    INTEGER,
sisp_fvs                      INTEGER,
sieqn_ref_cd_fvs              VARCHAR(10),
mquadprop_unadj               DECIMAL(11,10),
soilprop_unadj                DECIMAL(11,10),
forest_cond_status_change_cd  INTEGER
);
comment on column fs_fiadb.cond.cn
  is 'Unique index';
comment on column fs_fiadb.cond.plt_cn
  is 'Unique index';
comment on column fs_fiadb.cond.invyr
  is 'NA';
comment on column fs_fiadb.cond.statecd
  is 'State code';
comment on column fs_fiadb.cond.unitcd
  is 'Survey unit code';
comment on column fs_fiadb.cond.countycd
  is 'County code';
comment on column fs_fiadb.cond.plot
  is 'Plot number';
comment on column fs_fiadb.cond.condid
  is 'Condition number';
comment on column fs_fiadb.cond.cond_status_cd
  is 'CONDITION STATUS CODE';
comment on column fs_fiadb.cond.cond_nonsample_reasn_cd
  is 'NA';
comment on column fs_fiadb.cond.reservcd
  is 'Reserved status class code';
comment on column fs_fiadb.cond.owncd
  is 'Owner class code';
comment on column fs_fiadb.cond.owngrpcd
  is 'Ownership group class code';
comment on column fs_fiadb.cond.adforcd
  is 'Administrative forest code';
comment on column fs_fiadb.cond.fortypcd
  is 'Forest type code (computed)';
comment on column fs_fiadb.cond.fldtypcd
  is 'Field forest type code';
comment on column fs_fiadb.cond.mapden
  is 'Change in tree density';
comment on column fs_fiadb.cond.stdage
  is 'Stand age';
comment on column fs_fiadb.cond.stdszcd
  is 'Stand-size class code (computed)';
comment on column fs_fiadb.cond.fldszcd
  is 'Field stand-size class code';
comment on column fs_fiadb.cond.siteclcd
  is 'Site productivity class code';
comment on column fs_fiadb.cond.sicond
  is 'Site index';
comment on column fs_fiadb.cond.sibase
  is 'Site index base age';
comment on column fs_fiadb.cond.sisp
  is 'Site index species code';
comment on column fs_fiadb.cond.stdorgcd
  is 'Stand origin code';
comment on column fs_fiadb.cond.stdorgsp
  is 'Stand origin species code';
comment on column fs_fiadb.cond.prop_basis
  is 'PROPORTION BASIS - VALUES ARE SUBP AND MACRO.  Default is SUBP.  Updated in nims_condprop.pkg, IF MACRO  is present.';
comment on column fs_fiadb.cond.condprop_unadj
  is 'NA';
comment on column fs_fiadb.cond.micrprop_unadj
  is 'NA';
comment on column fs_fiadb.cond.subpprop_unadj
  is 'NA';
comment on column fs_fiadb.cond.macrprop_unadj
  is 'NA';
comment on column fs_fiadb.cond.slope
  is 'Slope';
comment on column fs_fiadb.cond.aspect
  is 'Aspect';
comment on column fs_fiadb.cond.physclcd
  is 'Physiographic class code';
comment on column fs_fiadb.cond.gsstkcd
  is 'Growing-stock stocking code';
comment on column fs_fiadb.cond.alstkcd
  is 'All live stocking code';
comment on column fs_fiadb.cond.dstrbcd1
  is 'Disturbance 1 code';
comment on column fs_fiadb.cond.dstrbyr1
  is 'Year of Disturbance 1';
comment on column fs_fiadb.cond.dstrbcd2
  is 'Disturbance 2 code';
comment on column fs_fiadb.cond.dstrbyr2
  is 'Year of Disturbance 2';
comment on column fs_fiadb.cond.dstrbcd3
  is 'Disturbance 3 code';
comment on column fs_fiadb.cond.dstrbyr3
  is 'Year of Disturbance 3';
comment on column fs_fiadb.cond.trtcd1
  is 'Stand Treatment 1 code';
comment on column fs_fiadb.cond.trtyr1
  is 'Treatment year 1';
comment on column fs_fiadb.cond.trtcd2
  is 'Stand treatment 2';
comment on column fs_fiadb.cond.trtyr2
  is 'Treatment year 2';
comment on column fs_fiadb.cond.trtcd3
  is 'Stand Treatment 3 code';
comment on column fs_fiadb.cond.trtyr3
  is 'Treatment year 3';
comment on column fs_fiadb.cond.presnfcd
  is 'Present nonforest land use code';
comment on column fs_fiadb.cond.balive
  is 'Basal area of all live trees';
comment on column fs_fiadb.cond.fldage
  is 'Field stand age';
comment on column fs_fiadb.cond.alstk
  is 'All live stocking percent';
comment on column fs_fiadb.cond.gsstk
  is 'Growing-stock stocking percent';
comment on column fs_fiadb.cond.fortypcdcalc
  is 'CALCULATED FOREST TYPE CODE WITH A NATIONAL ALGORITHM';
comment on column fs_fiadb.cond.habtypcd1
  is 'Primary condition habitat type';
comment on column fs_fiadb.cond.habtypcd1_pub_cd
  is 'NA';
comment on column fs_fiadb.cond.habtypcd1_descr_pub_cd
  is 'NA';
comment on column fs_fiadb.cond.habtypcd2
  is 'Secondary condition habitat type';
comment on column fs_fiadb.cond.habtypcd2_pub_cd
  is 'NA';
comment on column fs_fiadb.cond.habtypcd2_descr_pub_cd
  is 'NA';
comment on column fs_fiadb.cond.mixedconfcd
  is 'Calculated forest type for mixed conifer site';
comment on column fs_fiadb.cond.vol_loc_grp
  is 'VOLUME LOCATION GROUP';
comment on column fs_fiadb.cond.siteclcdest
  is 'NA';
comment on column fs_fiadb.cond.sitetree_tree
  is 'Selected SITETREE tree number';
comment on column fs_fiadb.cond.sitecl_method
  is ' Selected SITE CLASS method type';
comment on column fs_fiadb.cond.carbon_down_dead
  is 'Carbon in stumps and roots dwm 3"+ dia (tons;acre)';
comment on column fs_fiadb.cond.carbon_litter
  is 'Carbon pounds;acre fine woody debris upto 3"( tons;acre)';
comment on column fs_fiadb.cond.carbon_soil_org
  is 'Carbon in soil and fine roots to depth of 1 meter (tons ;acre)';
comment on column fs_fiadb.cond.carbon_understory_ag
  is 'Carbon in seedlings and shrubs above ground (tons;acre)';
comment on column fs_fiadb.cond.carbon_understory_bg
  is 'Carbon in roots of seedlings, shrubs below ground (tons;acre)';
comment on column fs_fiadb.cond.created_by
  is 'Created by';
comment on column fs_fiadb.cond.created_date
  is 'Created date';
comment on column fs_fiadb.cond.created_in_instance
  is 'Created in instance';
comment on column fs_fiadb.cond.modified_by
  is 'Modified by';
comment on column fs_fiadb.cond.modified_date
  is 'Modified date';
comment on column fs_fiadb.cond.modified_in_instance
  is 'Modified in instance';
comment on column fs_fiadb.cond.cycle
  is 'Inventory cycle number';
comment on column fs_fiadb.cond.subcycle
  is 'Inventory subcycle number';
comment on column fs_fiadb.cond.soil_rooting_depth_pnw
  is 'Soil rooting depth code (1=less than 20 inches, 2=greater than or equal to 20 inches)';
comment on column fs_fiadb.cond.ground_land_class_pnw
  is 'Ground Land Class';
comment on column fs_fiadb.cond.plant_stockability_factor_pnw
  is 'NA';
comment on column fs_fiadb.cond.stnd_cond_cd_pnwrs
  is 'NA';
comment on column fs_fiadb.cond.stnd_struc_cd_pnwrs
  is 'NA';
comment on column fs_fiadb.cond.stump_cd_pnwrs
  is 'NA';
comment on column fs_fiadb.cond.fire_srs
  is 'NA';
comment on column fs_fiadb.cond.grazing_srs
  is 'NA';
comment on column fs_fiadb.cond.harvest_type1_srs
  is 'HARVEST_TYPE1_SRS';
comment on column fs_fiadb.cond.harvest_type2_srs
  is 'HARVEST_TYPE2_SRS';
comment on column fs_fiadb.cond.harvest_type3_srs
  is 'HARVEST_TYPE3_SRS';
comment on column fs_fiadb.cond.land_use_srs
  is 'NA';
comment on column fs_fiadb.cond.operability_srs
  is 'NA';
comment on column fs_fiadb.cond.stand_structure_srs
  is 'NA';
comment on column fs_fiadb.cond.nf_cond_status_cd
  is 'Nonforest condition status code';
comment on column fs_fiadb.cond.nf_cond_nonsample_reasn_cd
  is 'Nonforest condition nonsampled reason code';
comment on column fs_fiadb.cond.canopy_cvr_sample_method_cd
  is 'Canopy cover sample method code';
comment on column fs_fiadb.cond.live_canopy_cvr_pct
  is 'Live canopy cover (percent)';
comment on column fs_fiadb.cond.live_missing_canopy_cvr_pct
  is 'Live and missing canopy cover (percent)';
comment on column fs_fiadb.cond.nbr_live_stems
  is 'Total number of live stems per acre';
comment on column fs_fiadb.cond.ownsubcd
  is 'A code indicating the sub-class of state-owned lands. Core optional for state-owned land';
comment on column fs_fiadb.cond.industrialcd_fiadb
  is 'A modified version of INDUSTRIALCD that can be included in publicly accessible databases without violating data disclosure policies';
comment on column fs_fiadb.cond.reservcd_5
  is 'The reserved status code used prior to the 6.0 interpretation. Populated only on annual data prior to 6.0.';
comment on column fs_fiadb.cond.admin_withdrawn_cd
  is 'The public administratively withdrawn status.';
comment on column fs_fiadb.cond.chaining_cd
  is 'Chaining Code 0=No 1=Yes';
comment on column fs_fiadb.cond.land_cover_class_cd_ret
  is 'Retired Land Cover Class. Replaced by LAND_COVER_CLASS column starting with 8.0.';
comment on column fs_fiadb.cond.afforestation_cd
  is 'Current Afforestation Code 0=No 1=Yes';
comment on column fs_fiadb.cond.prev_afforestation_cd
  is 'Previous Afforestation Code 0=No 1=Yes';
comment on column fs_fiadb.cond.dwm_fuelbed_typcd
  is 'DWM Condition Fuelbed Type Code';
comment on column fs_fiadb.cond.nvcs_primary_class
  is 'The primary classification of the algorithm [NATURAL|CULTURAL]';
comment on column fs_fiadb.cond.nvcs_level_1_cd
  is 'The code representing the classification at the first level of the National Vegetation Classification System hierarchy.';
comment on column fs_fiadb.cond.nvcs_level_2_cd
  is 'The code representing the classification at the second level of the National Vegetation Classification System hierarchy.';
comment on column fs_fiadb.cond.nvcs_level_3_cd
  is 'The code representing the classification at the third level of the National Vegetation Classification System hierarchy.';
comment on column fs_fiadb.cond.nvcs_level_4_cd
  is 'The code representing the classification at the fourth level of the National Vegetation Classification System hierarchy.';
comment on column fs_fiadb.cond.nvcs_level_5_cd
  is 'The code representing the classification at the fifth level of the National Vegetation Classification System hierarchy.';
comment on column fs_fiadb.cond.nvcs_level_6_cd
  is 'The code representing the classification at the sixth level of the National Vegetation Classification System hierarchy.';
comment on column fs_fiadb.cond.nvcs_level_7_cd
  is 'The code representing the classification at the seventh level of the National Vegetation Classification System hierarchy.';
comment on column fs_fiadb.cond.nvcs_level_8_cd
  is 'The code representing the classification at the eighth level of the National Vegetation Classification System hierarchy.';
comment on column fs_fiadb.cond.age_basis_cd_pnwrs
  is 'A code that indicates the method used to determine stand age (Anchorage FSL, Portland FSL), PNWRS';
comment on column fs_fiadb.cond.cond_status_chng_cd_rmrs
  is 'condition status change code';
comment on column fs_fiadb.cond.crcovpct_rmrs
  is 'percent crown cover';
comment on column fs_fiadb.cond.dominant_species1_pnwrs
  is 'collected in hawaii inventory';
comment on column fs_fiadb.cond.dominant_species2_pnwrs
  is 'collected in hawaii inventory';
comment on column fs_fiadb.cond.dominant_species3_pnwrs
  is 'collected in hawaii inventory';
comment on column fs_fiadb.cond.dstrbcd1_p2a
  is 'disturbance 1 code used for periodic to annual remeasurement';
comment on column fs_fiadb.cond.dstrbcd2_p2a
  is 'disturbance 2 code used for periodic to annual remeasurement';
comment on column fs_fiadb.cond.dstrbcd3_p2a
  is 'disturbance 3 code used for periodic to annual remeasurement';
comment on column fs_fiadb.cond.dstrbyr1_p2a
  is 'year of disturbance 1 used for periodic to annual remeasurement';
comment on column fs_fiadb.cond.dstrbyr2_p2a
  is 'year of disturbance 2 used for periodic to annual remeasurement';
comment on column fs_fiadb.cond.dstrbyr3_p2a
  is 'year of disturbance 3 used for periodic to annual remeasurement';
comment on column fs_fiadb.cond.fldtypcd_30
  is 'field forest type code as collected with 3.0 field guide and before.';
comment on column fs_fiadb.cond.forest_community_pnwrs
  is 'collected in hawaii inventory';
comment on column fs_fiadb.cond.land_usecd_rmrs
  is 'rmrs current land use used for condition filtering';
comment on column fs_fiadb.cond.maicf
  is 'mean annual increment (cubic feet)';
comment on column fs_fiadb.cond.pctbare_rmrs
  is 'percent bare ground';
comment on column fs_fiadb.cond.qmd_rmrs
  is 'quadratic mean dia.-all live trees 1 inch plus';
comment on column fs_fiadb.cond.rangetypcd_rmrs
  is 'range type code rmrs';
comment on column fs_fiadb.cond.sdimax_rmrs
  is 'stand density index maximum';
comment on column fs_fiadb.cond.sdipct_rmrs
  is 'stand density index percent';
comment on column fs_fiadb.cond.sdi_rmrs
  is 'stand density index';
comment on column fs_fiadb.cond.stand_structure_me_ners
  is 'stand structure (me only)';
comment on column fs_fiadb.cond.trees_present_ncrs
  is 'indicates nonforest land without trees (1) or nonforest land with trees (2)';
comment on column fs_fiadb.cond.trees_present_ners
  is 'indicates nonforest land without trees (1) or nonforest land with trees (2)';
comment on column fs_fiadb.cond.trtcd1_p2a
  is 'stand treatment 1 code used for periodic to annual remeasurement';
comment on column fs_fiadb.cond.trtcd2_p2a
  is 'stand treatment 2 code used for periodic to annual remeasurement';
comment on column fs_fiadb.cond.trtcd3_p2a
  is 'stand treatment 3 code used for periodic to annual remeasurement';
comment on column fs_fiadb.cond.trtopcd
  is 'treatment opportunity class code';
comment on column fs_fiadb.cond.trtyr1_p2a
  is 'treatment year 1 used for periodic to annual remeasurement';
comment on column fs_fiadb.cond.trtyr2_p2a
  is 'treatment year 2 used for periodic to annual remeasurement';
comment on column fs_fiadb.cond.trtyr3_p2a
  is 'treatment year 3 used for periodic to annual remeasurement';
comment on column fs_fiadb.cond.land_cover_class_cd
  is 'Land Cover Class code.';
comment on column fs_fiadb.cond.sieqn_ref_cd
  is 'Site index equation reference code used by the Forest Vegetation Simulator';
comment on column fs_fiadb.cond.sicond_fvs
  is 'Site index for the condition, for the Forest Vegetation Simulator';
comment on column fs_fiadb.cond.sibase_fvs
  is 'Site index base age used by the Forest Vegetation Simulator';
comment on column fs_fiadb.cond.sisp_fvs
  is 'Site index species code used by the Forest Vegetation Simulator';
comment on column fs_fiadb.cond.sieqn_ref_cd_fvs
  is 'NA';
comment on column fs_fiadb.cond.mquadprop_unadj
  is 'Ground layer condition proportion based on the sampling design';
comment on column fs_fiadb.cond.soilprop_unadj
  is 'Soil condition proportion based on the sampling design';
comment on column fs_fiadb.cond.forest_cond_status_change_cd
  is 'Forest land condition status change code';
CREATE TABLE fs_fiadb.dwm_visit
(
cn                     VARCHAR(34) NOT NULL,
plt_cn                 VARCHAR(34) NOT NULL,
invyr                  INTEGER NOT NULL,
statecd                INTEGER NOT NULL,
countycd               INTEGER NOT NULL,
plot                   INTEGER NOT NULL,
measday                INTEGER,
measmon                INTEGER,
measyear               INTEGER,
qastatcd               INTEGER,
crwtypcd               INTEGER,
smpkndcd               INTEGER,
created_by             VARCHAR(30),
created_date           TIMESTAMP(0),
created_in_instance    VARCHAR(6),
modified_by            VARCHAR(30),
modified_date          TIMESTAMP(0),
modified_in_instance   VARCHAR(6),
cwd_sample_method      VARCHAR(6),
fwd_sample_method      VARCHAR(6),
micr_sample_method     VARCHAR(6),
dlf_sample_method      VARCHAR(6),
pile_sample_method     VARCHAR(6),
dwm_sampling_status_cd INTEGER,
dwm_nbr_subp           INTEGER,
dwm_nbr_subp_transect  INTEGER,
dwm_subplist           INTEGER,
dwm_transect_length    DECIMAL(4,1),
qa_status              INTEGER
);
comment on column fs_fiadb.dwm_visit.cn
  is 'Unique Index';
comment on column fs_fiadb.dwm_visit.plt_cn
  is 'Foreign Key to NIMS_PLOT';
comment on column fs_fiadb.dwm_visit.invyr
  is 'NA';
comment on column fs_fiadb.dwm_visit.statecd
  is 'state code';
comment on column fs_fiadb.dwm_visit.countycd
  is 'County Code';
comment on column fs_fiadb.dwm_visit.plot
  is 'P2 Plot Number';
comment on column fs_fiadb.dwm_visit.measday
  is 'Measurement Day';
comment on column fs_fiadb.dwm_visit.measmon
  is 'Measurement Month';
comment on column fs_fiadb.dwm_visit.measyear
  is 'Measurement Year';
comment on column fs_fiadb.dwm_visit.qastatcd
  is 'QA Status Code';
comment on column fs_fiadb.dwm_visit.crwtypcd
  is 'Crew type code';
comment on column fs_fiadb.dwm_visit.smpkndcd
  is 'Sample Kind Code';
comment on column fs_fiadb.dwm_visit.created_by
  is 'Created by';
comment on column fs_fiadb.dwm_visit.created_date
  is 'Created Date';
comment on column fs_fiadb.dwm_visit.created_in_instance
  is 'Created in Instance';
comment on column fs_fiadb.dwm_visit.modified_by
  is 'Modified by';
comment on column fs_fiadb.dwm_visit.modified_date
  is 'Modified Date';
comment on column fs_fiadb.dwm_visit.modified_in_instance
  is 'Modified in Instance';
comment on column fs_fiadb.dwm_visit.cwd_sample_method
  is 'Code indicating what design and sampling protocol were used to collect coarse woody debris data';
comment on column fs_fiadb.dwm_visit.fwd_sample_method
  is 'Code indicating what design and sampling protocol were used to collect fine woody debris data';
comment on column fs_fiadb.dwm_visit.micr_sample_method
  is 'Code indicating what design and sampling protocol were used to collect microplot fuels data';
comment on column fs_fiadb.dwm_visit.dlf_sample_method
  is 'Code indicating what design and sampling protocol were used to collect duff, litter, and fuelbed data';
comment on column fs_fiadb.dwm_visit.pile_sample_method
  is 'Code indicating what design and sampling protocol were used to collect residue pile data';
comment on column fs_fiadb.dwm_visit.dwm_sampling_status_cd
  is 'DWM Sampling Status';
comment on column fs_fiadb.dwm_visit.dwm_nbr_subp
  is 'DWM Number of Subplots';
comment on column fs_fiadb.dwm_visit.dwm_nbr_subp_transect
  is 'DWM Number of Transects on Subplot';
comment on column fs_fiadb.dwm_visit.dwm_subplist
  is 'DWM Subplot List';
comment on column fs_fiadb.dwm_visit.dwm_transect_length
  is 'DWM Transect Length';
comment on column fs_fiadb.dwm_visit.qa_status
  is 'qa status code';
CREATE TABLE fs_fiadb.ref_citation
(
citation_nbr         INTEGER NOT NULL,
citation             VARCHAR(2000),
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6),
citation_nbr         INTEGER NOT NULL,
citation             VARCHAR(2000) NOT NULL,
created_by           VARCHAR(30) NOT NULL,
created_date         TIMESTAMP(0) NOT NULL,
created_in_instance  VARCHAR(6) NOT NULL,
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6)
);
comment on column fs_fiadb.ref_citation.citation_nbr
  is 'Citation number';
comment on column fs_fiadb.ref_citation.citation
  is 'Citation';
comment on column fs_fiadb.ref_citation.created_by
  is 'Created by';
comment on column fs_fiadb.ref_citation.created_date
  is 'Created Date';
comment on column fs_fiadb.ref_citation.created_in_instance
  is 'Created in Instance';
comment on column fs_fiadb.ref_citation.modified_by
  is 'Modified by';
comment on column fs_fiadb.ref_citation.modified_date
  is 'Modified Date';
comment on column fs_fiadb.ref_citation.modified_in_instance
  is 'Modified in Instance';
comment on column fs_fiadb.ref_citation.citation_nbr
  is 'Citation number';
comment on column fs_fiadb.ref_citation.citation
  is 'Citation';
comment on column fs_fiadb.ref_citation.created_by
  is 'Created by';
comment on column fs_fiadb.ref_citation.created_date
  is 'Created Date';
comment on column fs_fiadb.ref_citation.created_in_instance
  is 'Created in Instance';
comment on column fs_fiadb.ref_citation.modified_by
  is 'Modified by';
comment on column fs_fiadb.ref_citation.modified_date
  is 'Modified Date';
comment on column fs_fiadb.ref_citation.modified_in_instance
  is 'Modified in Instance';
CREATE TABLE fs_fiadb.plot
(
cn                             VARCHAR(34) NOT NULL,
srv_cn                         VARCHAR(34) NOT NULL,
cty_cn                         VARCHAR(34) NOT NULL,
prev_plt_cn                    VARCHAR(34),
invyr                          INTEGER NOT NULL,
statecd                        INTEGER NOT NULL,
unitcd                         INTEGER NOT NULL,
countycd                       INTEGER NOT NULL,
plot                           INTEGER NOT NULL,
plot_status_cd                 INTEGER,
plot_nonsample_reasn_cd        INTEGER,
measyear                       INTEGER,
measmon                        INTEGER,
measday                        INTEGER,
remper                         DECIMAL(3,1),
kindcd                         INTEGER NOT NULL,
designcd                       INTEGER,
rddistcd                       INTEGER,
watercd                        INTEGER,
lat                            DECIMAL(8,6),
lon                            DECIMAL(9,6),
elev                           INTEGER,
grow_typ_cd                    INTEGER,
mort_typ_cd                    INTEGER,
p2panel                        INTEGER,
p3panel                        INTEGER,
manual                         DECIMAL(3,1) NOT NULL,
kindcd_nc                      INTEGER,
qa_status                      INTEGER,
created_by                     VARCHAR(30),
created_date                   TIMESTAMP(0),
created_in_instance            VARCHAR(6),
modified_by                    VARCHAR(30),
modified_date                  TIMESTAMP(0),
modified_in_instance           VARCHAR(6),
microplot_loc                  VARCHAR(12),
declination                    DECIMAL(4,1),
samp_method_cd                 INTEGER,
subp_examine_cd                INTEGER NOT NULL,
macro_breakpoint_dia           INTEGER,
intensity                      VARCHAR(3),
cycle                          INTEGER,
subcycle                       INTEGER,
topo_position_pnw              VARCHAR(2),
nf_sampling_status_cd          INTEGER,
nf_plot_status_cd              INTEGER,
nf_plot_nonsample_reasn_cd     INTEGER,
p2veg_sampling_status_cd       INTEGER,
p2veg_sampling_level_detail_cd INTEGER,
invasive_sampling_status_cd    INTEGER,
invasive_specimen_rule_cd      INTEGER,
designcd_p2a                   INTEGER,
manual_db                      DECIMAL(3,1),
subpanel                       INTEGER,
futforcd_rmrs                  INTEGER,
manual_ncrs                    DECIMAL(4,2),
manual_ners                    DECIMAL(4,2),
manual_rmrs                    DECIMAL(4,2),
pac_island_pnwrs               VARCHAR(20),
plot_season_ners               INTEGER,
prev_microplot_loc_rmrs        VARCHAR(12),
prev_plot_status_cd_rmrs       INTEGER,
reusecd1                       INTEGER,
reusecd2                       INTEGER,
reusecd3                       INTEGER,
grnd_lyr_sampling_status_cd    INTEGER,
grnd_lyr_sampling_method_cd    INTEGER
);
comment on column fs_fiadb.plot.cn
  is 'Unique index';
comment on column fs_fiadb.plot.srv_cn
  is 'Unique index';
comment on column fs_fiadb.plot.cty_cn
  is 'Unique index';
comment on column fs_fiadb.plot.prev_plt_cn
  is 'Unique index';
comment on column fs_fiadb.plot.invyr
  is 'NA';
comment on column fs_fiadb.plot.statecd
  is 'State code';
comment on column fs_fiadb.plot.unitcd
  is 'Survey unit code';
comment on column fs_fiadb.plot.countycd
  is 'County code';
comment on column fs_fiadb.plot.plot
  is 'Plot number';
comment on column fs_fiadb.plot.plot_status_cd
  is 'NA';
comment on column fs_fiadb.plot.plot_nonsample_reasn_cd
  is 'NA';
comment on column fs_fiadb.plot.measyear
  is 'Measurement year';
comment on column fs_fiadb.plot.measmon
  is 'measurement month';
comment on column fs_fiadb.plot.measday
  is 'Measurement day';
comment on column fs_fiadb.plot.remper
  is 'Remeasurement period';
comment on column fs_fiadb.plot.kindcd
  is 'Plot kind code';
comment on column fs_fiadb.plot.designcd
  is 'Plot design code';
comment on column fs_fiadb.plot.rddistcd
  is 'Distance to improved road code';
comment on column fs_fiadb.plot.watercd
  is 'Water on plot code';
comment on column fs_fiadb.plot.lat
  is 'NA';
comment on column fs_fiadb.plot.lon
  is 'NA';
comment on column fs_fiadb.plot.elev
  is 'Elevation WGS84 datum';
comment on column fs_fiadb.plot.grow_typ_cd
  is 'Type of annual volume growth code';
comment on column fs_fiadb.plot.mort_typ_cd
  is 'Type of annual mortality volume code';
comment on column fs_fiadb.plot.p2panel
  is 'Phase 2 panel number';
comment on column fs_fiadb.plot.p3panel
  is 'Phase 3 panel number';
comment on column fs_fiadb.plot.manual
  is 'Field manual version';
comment on column fs_fiadb.plot.kindcd_nc
  is 'Plot kind code for North Central';
comment on column fs_fiadb.plot.qa_status
  is 'QA_STATUS';
comment on column fs_fiadb.plot.created_by
  is 'Created by';
comment on column fs_fiadb.plot.created_date
  is 'Created date';
comment on column fs_fiadb.plot.created_in_instance
  is 'Created in instance';
comment on column fs_fiadb.plot.modified_by
  is 'Modified by';
comment on column fs_fiadb.plot.modified_date
  is 'Modified date';
comment on column fs_fiadb.plot.modified_in_instance
  is 'Modified in instance';
comment on column fs_fiadb.plot.microplot_loc
  is 'Microplot location';
comment on column fs_fiadb.plot.declination
  is 'Declination';
comment on column fs_fiadb.plot.samp_method_cd
  is 'NA';
comment on column fs_fiadb.plot.subp_examine_cd
  is 'NA';
comment on column fs_fiadb.plot.macro_breakpoint_dia
  is 'NA';
comment on column fs_fiadb.plot.intensity
  is 'Intensity';
comment on column fs_fiadb.plot.cycle
  is 'Inventory cycle number';
comment on column fs_fiadb.plot.subcycle
  is 'Inventory subcycle number';
comment on column fs_fiadb.plot.topo_position_pnw
  is 'Topographic position';
comment on column fs_fiadb.plot.nf_sampling_status_cd
  is 'Nonforest sampling status code';
comment on column fs_fiadb.plot.nf_plot_status_cd
  is 'Nonforest Plot Status code';
comment on column fs_fiadb.plot.nf_plot_nonsample_reasn_cd
  is 'Nonforest plot nonsampled reason code';
comment on column fs_fiadb.plot.p2veg_sampling_status_cd
  is 'P2 vegetation sampling status code';
comment on column fs_fiadb.plot.p2veg_sampling_level_detail_cd
  is 'P2 vegetation sampling level of detail code';
comment on column fs_fiadb.plot.invasive_sampling_status_cd
  is 'Invasive sampling status code';
comment on column fs_fiadb.plot.invasive_specimen_rule_cd
  is 'Invasive plant specimen collection rule code';
comment on column fs_fiadb.plot.designcd_p2a
  is 'Plot design code for Periodic to Annual Remeasurements';
comment on column fs_fiadb.plot.manual_db
  is 'The data in the database have been standardized to this version of the National Field Manual';
comment on column fs_fiadb.plot.subpanel
  is 'Subpanel number';
comment on column fs_fiadb.plot.futforcd_rmrs
  is 'future forest potential';
comment on column fs_fiadb.plot.manual_ncrs
  is 'ncrs manual version number';
comment on column fs_fiadb.plot.manual_ners
  is 'ners manual version number';
comment on column fs_fiadb.plot.manual_rmrs
  is 'rmrs manual version number';
comment on column fs_fiadb.plot.pac_island_pnwrs
  is 'Name of pacific island plot is located on, PNWRS';
comment on column fs_fiadb.plot.plot_season_ners
  is 'season when plot should be done';
comment on column fs_fiadb.plot.prev_microplot_loc_rmrs
  is 'previous microplot location';
comment on column fs_fiadb.plot.prev_plot_status_cd_rmrs
  is 'previous plot status code';
comment on column fs_fiadb.plot.reusecd1
  is 'recreation use code 1';
comment on column fs_fiadb.plot.reusecd2
  is 'recreation use code 2';
comment on column fs_fiadb.plot.reusecd3
  is 'recreation use code 3';
comment on column fs_fiadb.plot.grnd_lyr_sampling_status_cd
  is 'Ground Layer sampling status code';
comment on column fs_fiadb.plot.grnd_lyr_sampling_method_cd
  is 'Ground Layer sampling method code';
CREATE TABLE fs_fiadb.pop_plot_stratum_assgn
(
cn                   VARCHAR(34) NOT NULL,
stratum_cn           VARCHAR(34) NOT NULL,
plt_cn               VARCHAR(34) NOT NULL,
statecd              INTEGER NOT NULL,
invyr                INTEGER NOT NULL,
unitcd               INTEGER NOT NULL,
countycd             INTEGER NOT NULL,
plot                 INTEGER NOT NULL,
rscd                 INTEGER NOT NULL,
evalid               INTEGER NOT NULL,
estn_unit            INTEGER NOT NULL,
stratumcd            INTEGER NOT NULL,
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6)
);
comment on column fs_fiadb.pop_plot_stratum_assgn.cn
  is 'NA';
comment on column fs_fiadb.pop_plot_stratum_assgn.stratum_cn
  is 'Stratum CN';
comment on column fs_fiadb.pop_plot_stratum_assgn.plt_cn
  is 'PLOT CN';
comment on column fs_fiadb.pop_plot_stratum_assgn.statecd
  is 'State code';
comment on column fs_fiadb.pop_plot_stratum_assgn.invyr
  is 'Inventory year';
comment on column fs_fiadb.pop_plot_stratum_assgn.unitcd
  is 'Survey unit code';
comment on column fs_fiadb.pop_plot_stratum_assgn.countycd
  is 'County code';
comment on column fs_fiadb.pop_plot_stratum_assgn.plot
  is 'Plot number';
comment on column fs_fiadb.pop_plot_stratum_assgn.rscd
  is 'Region or Station Code';
comment on column fs_fiadb.pop_plot_stratum_assgn.evalid
  is 'Evaluation ID';
comment on column fs_fiadb.pop_plot_stratum_assgn.estn_unit
  is 'Estimation unit';
comment on column fs_fiadb.pop_plot_stratum_assgn.stratumcd
  is 'Stratum code';
comment on column fs_fiadb.pop_plot_stratum_assgn.created_by
  is 'Created by';
comment on column fs_fiadb.pop_plot_stratum_assgn.created_date
  is 'Created date';
comment on column fs_fiadb.pop_plot_stratum_assgn.created_in_instance
  is 'Created in instance';
comment on column fs_fiadb.pop_plot_stratum_assgn.modified_by
  is 'Modified by';
comment on column fs_fiadb.pop_plot_stratum_assgn.modified_date
  is 'Modified date';
comment on column fs_fiadb.pop_plot_stratum_assgn.modified_in_instance
  is 'Modified in instance';
CREATE TABLE fs_fiadb.ozone_visit
(
cn                   VARCHAR(34) NOT NULL,
plt_cn               VARCHAR(34) NOT NULL,
invyr                INTEGER NOT NULL,
statecd              INTEGER NOT NULL,
countycd             INTEGER NOT NULL,
o3plot               DOUBLE PRECISION NOT NULL,
field_id             INTEGER NOT NULL,
split_plotid         INTEGER NOT NULL,
smpkndcd             INTEGER,
measday              INTEGER,
measmon              INTEGER,
measyear             INTEGER NOT NULL,
pltsize              DOUBLE PRECISION NOT NULL,
aspect               INTEGER NOT NULL,
terrpos              DOUBLE PRECISION NOT NULL,
soildpth             DOUBLE PRECISION NOT NULL,
soildrn              DOUBLE PRECISION,
pltdstrb             DOUBLE PRECISION NOT NULL,
crwtypcd             INTEGER,
plotwet              DOUBLE PRECISION,
injcheck             INTEGER NOT NULL,
gridden              INTEGER,
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6)
);
comment on column fs_fiadb.ozone_visit.cn
  is 'Unique Index';
comment on column fs_fiadb.ozone_visit.plt_cn
  is 'Foreign Key to NIMS_OZONE_PLOT';
comment on column fs_fiadb.ozone_visit.invyr
  is 'NA';
comment on column fs_fiadb.ozone_visit.statecd
  is 'State code';
comment on column fs_fiadb.ozone_visit.countycd
  is 'County code';
comment on column fs_fiadb.ozone_visit.o3plot
  is 'Concatination of P3HEX and P3PLOT';
comment on column fs_fiadb.ozone_visit.field_id
  is 'P3 Hexagon Number';
comment on column fs_fiadb.ozone_visit.split_plotid
  is 'P3 Plot Number';
comment on column fs_fiadb.ozone_visit.smpkndcd
  is 'NA';
comment on column fs_fiadb.ozone_visit.measday
  is 'Measurement Day';
comment on column fs_fiadb.ozone_visit.measmon
  is 'Measurement Month';
comment on column fs_fiadb.ozone_visit.measyear
  is 'Measurement Year';
comment on column fs_fiadb.ozone_visit.pltsize
  is 'NA';
comment on column fs_fiadb.ozone_visit.aspect
  is 'NA';
comment on column fs_fiadb.ozone_visit.terrpos
  is 'NA';
comment on column fs_fiadb.ozone_visit.soildpth
  is 'NA';
comment on column fs_fiadb.ozone_visit.soildrn
  is 'NA';
comment on column fs_fiadb.ozone_visit.pltdstrb
  is 'NA';
comment on column fs_fiadb.ozone_visit.crwtypcd
  is 'NA';
comment on column fs_fiadb.ozone_visit.plotwet
  is 'NA';
comment on column fs_fiadb.ozone_visit.injcheck
  is 'NA';
comment on column fs_fiadb.ozone_visit.gridden
  is 'NA';
comment on column fs_fiadb.ozone_visit.created_by
  is 'Created By';
comment on column fs_fiadb.ozone_visit.created_date
  is 'Created Date';
comment on column fs_fiadb.ozone_visit.created_in_instance
  is 'Created in Instance';
comment on column fs_fiadb.ozone_visit.modified_by
  is 'Modified by';
comment on column fs_fiadb.ozone_visit.modified_date
  is 'Modified Date';
comment on column fs_fiadb.ozone_visit.modified_in_instance
  is 'Modified in Instance';
CREATE TABLE fs_fiadb.ozone_plot_summary
(
cn                       VARCHAR(34) NOT NULL,
invyr                    INTEGER NOT NULL,
statecd                  INTEGER NOT NULL,
countycd                 INTEGER NOT NULL,
o3plot                   DOUBLE PRECISION NOT NULL,
field_id                 INTEGER NOT NULL,
split_plotid             INTEGER NOT NULL,
measyear                 INTEGER NOT NULL,
species_eval_cnt         DOUBLE PRECISION NOT NULL,
biosite_index            DOUBLE PRECISION NOT NULL,
elev                     INTEGER,
pltsize                  DOUBLE PRECISION,
aspect                   INTEGER,
terrpos                  DOUBLE PRECISION,
soildpth                 DOUBLE PRECISION,
soildrn                  DOUBLE PRECISION,
plotwet                  DOUBLE PRECISION,
pltdstrb                 DOUBLE PRECISION,
biosite_index_multiplier DOUBLE PRECISION,
lat                      DECIMAL(8,6),
lon                      DECIMAL(9,6),
created_by               VARCHAR(30),
created_date             TIMESTAMP(0),
created_in_instance      VARCHAR(6),
modified_by              VARCHAR(30),
modified_date            TIMESTAMP(0),
modified_in_instance     VARCHAR(6)
);
comment on column fs_fiadb.ozone_plot_summary.cn
  is 'NA';
comment on column fs_fiadb.ozone_plot_summary.invyr
  is 'NA';
comment on column fs_fiadb.ozone_plot_summary.statecd
  is 'NA';
comment on column fs_fiadb.ozone_plot_summary.countycd
  is 'NA';
comment on column fs_fiadb.ozone_plot_summary.o3plot
  is 'NA';
comment on column fs_fiadb.ozone_plot_summary.field_id
  is 'the 7-digit number used by the field crew for all current and active biosites';
comment on column fs_fiadb.ozone_plot_summary.split_plotid
  is 'NA';
comment on column fs_fiadb.ozone_plot_summary.measyear
  is 'NA';
comment on column fs_fiadb.ozone_plot_summary.species_eval_cnt
  is 'The number of plants evaluated equals the total number of plants examined at a biosite (P3Hex).plant_eval_cnt = count ( all plants evaluated at a hexagon )';
comment on column fs_fiadb.ozone_plot_summary.biosite_index
  is 'The biosite index at a biosite (P3Hex) equals the sum of the species index (BIOSPCD_INDEX) divided by the species evaluation count.biosite_index = summation ( biospcd_index ) ; species_eval_cnt';
comment on column fs_fiadb.ozone_plot_summary.elev
  is 'NA';
comment on column fs_fiadb.ozone_plot_summary.pltsize
  is 'NA';
comment on column fs_fiadb.ozone_plot_summary.aspect
  is 'NA';
comment on column fs_fiadb.ozone_plot_summary.terrpos
  is 'NA';
comment on column fs_fiadb.ozone_plot_summary.soildpth
  is 'NA';
comment on column fs_fiadb.ozone_plot_summary.soildrn
  is 'NA';
comment on column fs_fiadb.ozone_plot_summary.plotwet
  is 'NA';
comment on column fs_fiadb.ozone_plot_summary.pltdstrb
  is 'NA';
comment on column fs_fiadb.ozone_plot_summary.biosite_index_multiplier
  is 'The biosite index (BI) is formulated from the injury amount and severity ratings recorded for each plant and the numbers of plants and species evaluated at each biosite.  BI values are classified into categories of ozone risk designed to capture differences in plant damage to ozone sensitive species in areas of low, moderate, and high ozone exposure. The biosite index multiplier is the BI multiplied by 1000 to allow the ozone risk categories to be defined by integers. 	biosite_index_multiplier = biosite_index * (1000)';
comment on column fs_fiadb.ozone_plot_summary.lat
  is 'NA';
comment on column fs_fiadb.ozone_plot_summary.lon
  is 'NA';
comment on column fs_fiadb.ozone_plot_summary.created_by
  is 'NA';
comment on column fs_fiadb.ozone_plot_summary.created_date
  is 'NA';
comment on column fs_fiadb.ozone_plot_summary.created_in_instance
  is 'NA';
comment on column fs_fiadb.ozone_plot_summary.modified_by
  is 'NA';
comment on column fs_fiadb.ozone_plot_summary.modified_date
  is 'NA';
comment on column fs_fiadb.ozone_plot_summary.modified_in_instance
  is 'NA';
CREATE TABLE fs_fiadb.ref_fiadb_version
(
version              VARCHAR(40) NOT NULL,
install_type         VARCHAR(10),
descr                VARCHAR(2000),
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6)
);
comment on column fs_fiadb.ref_fiadb_version.version
  is 'Version Number';
comment on column fs_fiadb.ref_fiadb_version.install_type
  is 'NA';
comment on column fs_fiadb.ref_fiadb_version.descr
  is 'Version Description';
comment on column fs_fiadb.ref_fiadb_version.created_by
  is 'Created By';
comment on column fs_fiadb.ref_fiadb_version.created_date
  is 'Created Date';
comment on column fs_fiadb.ref_fiadb_version.created_in_instance
  is 'Created In Instance';
comment on column fs_fiadb.ref_fiadb_version.modified_by
  is 'Modified By';
comment on column fs_fiadb.ref_fiadb_version.modified_date
  is 'Modified Date';
comment on column fs_fiadb.ref_fiadb_version.modified_in_instance
  is 'Modified In Instance';
CREATE TABLE fs_fiadb.p2veg_subp_structure
(
cn                   VARCHAR(34) NOT NULL,
plt_cn               VARCHAR(34) NOT NULL,
statecd              INTEGER NOT NULL,
unitcd               INTEGER NOT NULL,
countycd             INTEGER NOT NULL,
plot                 INTEGER NOT NULL,
invyr                INTEGER NOT NULL,
subp                 INTEGER NOT NULL,
condid               INTEGER NOT NULL,
growth_habit_cd      VARCHAR(2) NOT NULL,
layer                INTEGER NOT NULL,
cover_pct            INTEGER NOT NULL,
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6),
cycle                INTEGER NOT NULL,
subcycle             INTEGER NOT NULL
);
comment on column fs_fiadb.p2veg_subp_structure.cn
  is 'Sequence number (surrogate primary key';
comment on column fs_fiadb.p2veg_subp_structure.plt_cn
  is 'Foreign key to Plot table CN';
comment on column fs_fiadb.p2veg_subp_structure.statecd
  is 'State code';
comment on column fs_fiadb.p2veg_subp_structure.unitcd
  is 'Survey unit code';
comment on column fs_fiadb.p2veg_subp_structure.countycd
  is 'County code';
comment on column fs_fiadb.p2veg_subp_structure.plot
  is 'Plot number';
comment on column fs_fiadb.p2veg_subp_structure.invyr
  is 'Inventory year';
comment on column fs_fiadb.p2veg_subp_structure.subp
  is 'Subplot number';
comment on column fs_fiadb.p2veg_subp_structure.condid
  is 'Condition number';
comment on column fs_fiadb.p2veg_subp_structure.growth_habit_cd
  is 'Species growth habit code';
comment on column fs_fiadb.p2veg_subp_structure.layer
  is 'Species layer';
comment on column fs_fiadb.p2veg_subp_structure.cover_pct
  is 'Species percent canopy cover';
comment on column fs_fiadb.p2veg_subp_structure.created_by
  is 'Created by';
comment on column fs_fiadb.p2veg_subp_structure.created_date
  is 'Created Date';
comment on column fs_fiadb.p2veg_subp_structure.created_in_instance
  is 'Created in Instance';
comment on column fs_fiadb.p2veg_subp_structure.modified_by
  is 'Modified by';
comment on column fs_fiadb.p2veg_subp_structure.modified_date
  is 'Modified Date';
comment on column fs_fiadb.p2veg_subp_structure.modified_in_instance
  is 'Modified in Instance';
comment on column fs_fiadb.p2veg_subp_structure.cycle
  is 'Inventory cycle number';
comment on column fs_fiadb.p2veg_subp_structure.subcycle
  is 'Inventory subcycle number';
CREATE TABLE fs_fiadb.pop_eval
(
cn                   VARCHAR(34) NOT NULL,
eval_grp_cn          VARCHAR(34),
rscd                 INTEGER NOT NULL,
evalid               INTEGER NOT NULL,
eval_descr           VARCHAR(255),
statecd              INTEGER NOT NULL,
location_nm          VARCHAR(255),
report_year_nm       VARCHAR(255),
start_invyr          INTEGER,
end_invyr            INTEGER,
land_only            VARCHAR(1),
timberland_only      VARCHAR(1),
growth_acct          VARCHAR(1),
estn_method          VARCHAR(40),
notes                VARCHAR(2000),
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6)
);
comment on column fs_fiadb.pop_eval.cn
  is 'NA';
comment on column fs_fiadb.pop_eval.eval_grp_cn
  is 'Foreign Key to POP_EVAL_GRP';
comment on column fs_fiadb.pop_eval.rscd
  is 'Region or Station Code';
comment on column fs_fiadb.pop_eval.evalid
  is 'Evaluation ID';
comment on column fs_fiadb.pop_eval.eval_descr
  is 'Evaluation description';
comment on column fs_fiadb.pop_eval.statecd
  is 'State Code of primary state being evaluated';
comment on column fs_fiadb.pop_eval.location_nm
  is 'Usually state name or super state';
comment on column fs_fiadb.pop_eval.report_year_nm
  is 'List of years in which panels were collected';
comment on column fs_fiadb.pop_eval.start_invyr
  is 'Starting year for evaluation';
comment on column fs_fiadb.pop_eval.end_invyr
  is 'Ending year for evaluation';
comment on column fs_fiadb.pop_eval.land_only
  is 'Y if only land is sampled (census water excluded), N otherwise';
comment on column fs_fiadb.pop_eval.timberland_only
  is 'Y if estimates are for timberland only, N if reserved lands sampled at t and t-1 for change est., or reserved sampled at t for current est.';
comment on column fs_fiadb.pop_eval.growth_acct
  is 'Y if evaluation can be used for growth accounting, N if evaluation cannot be used for growth accounting, null if evaluation type is not EXPGROW';
comment on column fs_fiadb.pop_eval.estn_method
  is 'Estimation method, e.g. post-stratification or simple random';
comment on column fs_fiadb.pop_eval.notes
  is 'Evaluation notes';
comment on column fs_fiadb.pop_eval.created_by
  is 'Created by';
comment on column fs_fiadb.pop_eval.created_date
  is 'Created date';
comment on column fs_fiadb.pop_eval.created_in_instance
  is 'Created in instance';
comment on column fs_fiadb.pop_eval.modified_by
  is 'Modified by';
comment on column fs_fiadb.pop_eval.modified_date
  is 'Modified date';
comment on column fs_fiadb.pop_eval.modified_in_instance
  is 'Modified in instance';
CREATE TABLE fs_fiadb.beginend
(
oneortwo             DOUBLE PRECISION,
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6)
);
comment on column fs_fiadb.beginend.oneortwo
  is 'NA';
comment on column fs_fiadb.beginend.created_by
  is 'NA';
comment on column fs_fiadb.beginend.created_date
  is 'NA';
comment on column fs_fiadb.beginend.created_in_instance
  is 'NA';
comment on column fs_fiadb.beginend.modified_by
  is 'NA';
comment on column fs_fiadb.beginend.modified_date
  is 'NA';
comment on column fs_fiadb.beginend.modified_in_instance
  is 'NA';
CREATE TABLE fs_fiadb.tree_grm_estn
(
cn                   VARCHAR(34) NOT NULL,
statecd              DOUBLE PRECISION,
invyr                INTEGER NOT NULL,
plt_cn               VARCHAR(34) NOT NULL,
tre_cn               VARCHAR(34) NOT NULL,
land_basis           VARCHAR(10),
estimate             VARCHAR(20),
estn_type            VARCHAR(10),
estn_units           VARCHAR(3),
component            VARCHAR(15),
subptyp_grm          INTEGER,
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
comment on column fs_fiadb.tree_grm_estn.created_by
  is 'Created by';
comment on column fs_fiadb.tree_grm_estn.created_date
  is 'Created Date';
comment on column fs_fiadb.tree_grm_estn.created_in_instance
  is 'Created in Instance';
comment on column fs_fiadb.tree_grm_estn.modified_by
  is 'Modified by';
comment on column fs_fiadb.tree_grm_estn.modified_date
  is 'Modified Date';
comment on column fs_fiadb.tree_grm_estn.modified_in_instance
  is 'Modified in Instance';
CREATE TABLE fs_fiadb.invasive_subplot_spp
(
cn                   VARCHAR(34) NOT NULL,
plt_cn               VARCHAR(34) NOT NULL,
invyr                INTEGER NOT NULL,
statecd              INTEGER NOT NULL,
unitcd               INTEGER,
countycd             INTEGER NOT NULL,
plot                 INTEGER NOT NULL,
subp                 INTEGER NOT NULL,
condid               INTEGER NOT NULL,
veg_fldspcd          VARCHAR(10) NOT NULL,
unique_sp_nbr        INTEGER NOT NULL,
veg_spcd             VARCHAR(10) NOT NULL,
cover_pct            INTEGER NOT NULL,
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6),
cycle                INTEGER NOT NULL,
subcycle             INTEGER NOT NULL
);
comment on column fs_fiadb.invasive_subplot_spp.cn
  is 'Sequence number (surrogate primary key';
comment on column fs_fiadb.invasive_subplot_spp.plt_cn
  is 'Foreign key to Plot table CN';
comment on column fs_fiadb.invasive_subplot_spp.invyr
  is 'Inventory year';
comment on column fs_fiadb.invasive_subplot_spp.statecd
  is 'State code';
comment on column fs_fiadb.invasive_subplot_spp.unitcd
  is 'Survey unit code';
comment on column fs_fiadb.invasive_subplot_spp.countycd
  is 'County code';
comment on column fs_fiadb.invasive_subplot_spp.plot
  is 'Plot number';
comment on column fs_fiadb.invasive_subplot_spp.subp
  is 'Subplot number';
comment on column fs_fiadb.invasive_subplot_spp.condid
  is 'Condition number';
comment on column fs_fiadb.invasive_subplot_spp.veg_fldspcd
  is 'Veg Field Species Code';
comment on column fs_fiadb.invasive_subplot_spp.unique_sp_nbr
  is 'Unique Species Number identifies the number of species occurrences within each NRCS genus or unknown code. For example, 2 unidentifiable CAREX species would be entered as 2 separate records with differing Unique Species Numbers to show that they are not the same species.';
comment on column fs_fiadb.invasive_subplot_spp.veg_spcd
  is 'Veg Species Code';
comment on column fs_fiadb.invasive_subplot_spp.cover_pct
  is 'Species percent canopy cover';
comment on column fs_fiadb.invasive_subplot_spp.created_by
  is 'Created by';
comment on column fs_fiadb.invasive_subplot_spp.created_date
  is 'Created Date';
comment on column fs_fiadb.invasive_subplot_spp.created_in_instance
  is 'Created in Instance';
comment on column fs_fiadb.invasive_subplot_spp.modified_by
  is 'Modified by';
comment on column fs_fiadb.invasive_subplot_spp.modified_date
  is 'Modified Date';
comment on column fs_fiadb.invasive_subplot_spp.modified_in_instance
  is 'Modified in Instance';
comment on column fs_fiadb.invasive_subplot_spp.cycle
  is 'Inventory cycle number';
comment on column fs_fiadb.invasive_subplot_spp.subcycle
  is 'Inventory subcycle number';
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
created_by             VARCHAR(30) NOT NULL,
created_date           TIMESTAMP(0) NOT NULL,
created_in_instance    VARCHAR(6) NOT NULL,
modified_by            VARCHAR(30),
modified_date          TIMESTAMP(0),
modified_in_instance   VARCHAR(6),
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
comment on column fs_fiadb.cond_dwm_calc.created_by
  is 'Created by';
comment on column fs_fiadb.cond_dwm_calc.created_date
  is 'Created Date';
comment on column fs_fiadb.cond_dwm_calc.created_in_instance
  is 'Created in Instance';
comment on column fs_fiadb.cond_dwm_calc.modified_by
  is 'Modified by';
comment on column fs_fiadb.cond_dwm_calc.modified_date
  is 'Modified Date';
comment on column fs_fiadb.cond_dwm_calc.modified_in_instance
  is 'Modified in Instance';
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
CREATE TABLE fs_fiadb.dwm_transect_segment
(
cn                        VARCHAR(34) NOT NULL,
plt_cn                    VARCHAR(34) NOT NULL,
invyr                     INTEGER NOT NULL,
statecd                   INTEGER NOT NULL,
countycd                  INTEGER NOT NULL,
plot                      INTEGER NOT NULL,
subp                      INTEGER NOT NULL,
transect                  INTEGER NOT NULL,
segmnt                    INTEGER NOT NULL,
measyear                  INTEGER,
condid                    INTEGER,
slope_begndist            DOUBLE PRECISION,
slope_enddist             DOUBLE PRECISION,
slope                     INTEGER,
horiz_length              DOUBLE PRECISION,
horiz_begndist            DOUBLE PRECISION,
horiz_enddist             DOUBLE PRECISION,
created_by                VARCHAR(30),
created_date              TIMESTAMP(0),
created_in_instance       VARCHAR(6),
modified_by               VARCHAR(30),
modified_in_instance      VARCHAR(6),
modified_date             TIMESTAMP(0),
segmnt_status_cd          INTEGER,
segmnt_nonsample_reasn_cd INTEGER,
transect_length           DECIMAL(4,1)
);
comment on column fs_fiadb.dwm_transect_segment.cn
  is 'Unique Index';
comment on column fs_fiadb.dwm_transect_segment.plt_cn
  is 'Foreign Key to NIMS_PLOT';
comment on column fs_fiadb.dwm_transect_segment.invyr
  is 'NA';
comment on column fs_fiadb.dwm_transect_segment.statecd
  is 'state code';
comment on column fs_fiadb.dwm_transect_segment.countycd
  is 'County Code';
comment on column fs_fiadb.dwm_transect_segment.plot
  is 'P2 Plot Number';
comment on column fs_fiadb.dwm_transect_segment.subp
  is 'Subplot Number';
comment on column fs_fiadb.dwm_transect_segment.transect
  is 'Subplot Transect (deg)';
comment on column fs_fiadb.dwm_transect_segment.segmnt
  is 'Segment nbr';
comment on column fs_fiadb.dwm_transect_segment.measyear
  is 'Measurement Year';
comment on column fs_fiadb.dwm_transect_segment.condid
  is 'Segment cond class nbr';
comment on column fs_fiadb.dwm_transect_segment.slope_begndist
  is 'Slope distance from begining of transect to begining of segment';
comment on column fs_fiadb.dwm_transect_segment.slope_enddist
  is 'Slopte distance from begining of transect to end of segment';
comment on column fs_fiadb.dwm_transect_segment.slope
  is 'Segment slope (%)';
comment on column fs_fiadb.dwm_transect_segment.horiz_length
  is 'Segment horizontal length (ft)';
comment on column fs_fiadb.dwm_transect_segment.horiz_begndist
  is 'Horizontal distance from begining of transect to begining of segment';
comment on column fs_fiadb.dwm_transect_segment.horiz_enddist
  is 'Horizontal distance from begining of transect to end of segment';
comment on column fs_fiadb.dwm_transect_segment.created_by
  is 'Created by';
comment on column fs_fiadb.dwm_transect_segment.created_date
  is 'Created Date';
comment on column fs_fiadb.dwm_transect_segment.created_in_instance
  is 'Created in Instance';
comment on column fs_fiadb.dwm_transect_segment.modified_by
  is 'Modified by';
comment on column fs_fiadb.dwm_transect_segment.modified_in_instance
  is 'Modified in Instance';
comment on column fs_fiadb.dwm_transect_segment.modified_date
  is 'Modified Date';
comment on column fs_fiadb.dwm_transect_segment.segmnt_status_cd
  is 'Segment sample status code';
comment on column fs_fiadb.dwm_transect_segment.segmnt_nonsample_reasn_cd
  is 'Segment nonsample reason code';
comment on column fs_fiadb.dwm_transect_segment.transect_length
  is 'the target length of the full transect';
CREATE TABLE fs_fiadb.dwm_duff_litter_fuel
(
cn                         VARCHAR(34) NOT NULL,
plt_cn                     VARCHAR(34) NOT NULL,
invyr                      INTEGER NOT NULL,
statecd                    INTEGER NOT NULL,
countycd                   INTEGER NOT NULL,
plot                       INTEGER NOT NULL,
transect                   INTEGER NOT NULL,
subp                       INTEGER NOT NULL,
smploccd                   INTEGER NOT NULL,
measyear                   INTEGER,
condid                     INTEGER,
duffdep                    DOUBLE PRECISION,
littdep                    DOUBLE PRECISION,
fueldep                    DOUBLE PRECISION,
created_by                 VARCHAR(30),
created_date               TIMESTAMP(0),
created_in_instance        VARCHAR(6),
modified_by                VARCHAR(30),
modified_date              TIMESTAMP(0),
modified_in_instance       VARCHAR(6),
dlf_sample_method          VARCHAR(6),
duff_method                INTEGER,
duff_nonsample_reasn_cd    INTEGER,
litter_method              INTEGER,
litter_nonsample_reasn_cd  INTEGER,
fuelbed_method             INTEGER,
fuelbed_nonsample_reasn_cd INTEGER,
dl_status_cd               INTEGER
);
comment on column fs_fiadb.dwm_duff_litter_fuel.cn
  is 'Unique Index';
comment on column fs_fiadb.dwm_duff_litter_fuel.plt_cn
  is 'Foreign Key to NIMS_PLOT';
comment on column fs_fiadb.dwm_duff_litter_fuel.invyr
  is 'NA';
comment on column fs_fiadb.dwm_duff_litter_fuel.statecd
  is 'state code';
comment on column fs_fiadb.dwm_duff_litter_fuel.countycd
  is 'County Code';
comment on column fs_fiadb.dwm_duff_litter_fuel.plot
  is 'P2 Plot Number';
comment on column fs_fiadb.dwm_duff_litter_fuel.transect
  is 'Subplot Transect (deg)';
comment on column fs_fiadb.dwm_duff_litter_fuel.subp
  is 'Subplot Number';
comment on column fs_fiadb.dwm_duff_litter_fuel.smploccd
  is 'Duff;Litter sample location';
comment on column fs_fiadb.dwm_duff_litter_fuel.measyear
  is 'Measurement Year';
comment on column fs_fiadb.dwm_duff_litter_fuel.condid
  is 'Condition ID';
comment on column fs_fiadb.dwm_duff_litter_fuel.duffdep
  is 'Depth of duff layer';
comment on column fs_fiadb.dwm_duff_litter_fuel.littdep
  is 'Depth of litter layer (in)';
comment on column fs_fiadb.dwm_duff_litter_fuel.fueldep
  is 'Depth of fuelbed (ft)';
comment on column fs_fiadb.dwm_duff_litter_fuel.created_by
  is 'Created by';
comment on column fs_fiadb.dwm_duff_litter_fuel.created_date
  is 'Created Date';
comment on column fs_fiadb.dwm_duff_litter_fuel.created_in_instance
  is 'Created in Instance';
comment on column fs_fiadb.dwm_duff_litter_fuel.modified_by
  is 'Modified by';
comment on column fs_fiadb.dwm_duff_litter_fuel.modified_date
  is 'Modified Date';
comment on column fs_fiadb.dwm_duff_litter_fuel.modified_in_instance
  is 'Modified in Instance';
comment on column fs_fiadb.dwm_duff_litter_fuel.dlf_sample_method
  is 'Code indicating what design and sampling protocol were used to collect the record';
comment on column fs_fiadb.dwm_duff_litter_fuel.duff_method
  is 'The measurement method used for DUFF';
comment on column fs_fiadb.dwm_duff_litter_fuel.duff_nonsample_reasn_cd
  is 'The DUFF nonsample reason code';
comment on column fs_fiadb.dwm_duff_litter_fuel.litter_method
  is 'The measuremnt method used for LITTER';
comment on column fs_fiadb.dwm_duff_litter_fuel.litter_nonsample_reasn_cd
  is 'The LITTER nonsample reason code';
comment on column fs_fiadb.dwm_duff_litter_fuel.fuelbed_method
  is 'The measuremnt method used for FUELBED';
comment on column fs_fiadb.dwm_duff_litter_fuel.fuelbed_nonsample_reasn_cd
  is 'The FUELBED nonsample reason code';
comment on column fs_fiadb.dwm_duff_litter_fuel.dl_status_cd
  is 'the sample status for duff, litter, and fuelbed';
CREATE TABLE fs_fiadb.dwm_coarse_woody_debris
(
cn                   VARCHAR(34) NOT NULL,
plt_cn               VARCHAR(34) NOT NULL,
invyr                INTEGER NOT NULL,
statecd              INTEGER NOT NULL,
countycd             INTEGER NOT NULL,
plot                 INTEGER NOT NULL,
subp                 INTEGER NOT NULL,
transect             INTEGER NOT NULL,
cwdid                DOUBLE PRECISION NOT NULL,
measyear             INTEGER,
condid               INTEGER,
slopdist             DOUBLE PRECISION,
horiz_dist           DOUBLE PRECISION,
spcd                 DOUBLE PRECISION,
decaycd              INTEGER,
transdia             INTEGER,
smalldia             INTEGER,
largedia             INTEGER,
length               INTEGER,
hollowcd             VARCHAR(1),
cwdhstcd             INTEGER,
volcf                DOUBLE PRECISION,
drybio               DOUBLE PRECISION,
carbon               DOUBLE PRECISION,
cover_pct            DOUBLE PRECISION,
lpa_unadj            DOUBLE PRECISION,
lpa_plot             DOUBLE PRECISION,
lpa_cond             DOUBLE PRECISION,
lpa_unadj_rgn        DOUBLE PRECISION,
lpa_plot_rgn         DOUBLE PRECISION,
lpa_cond_rgn         DOUBLE PRECISION,
cover_pct_rgn        DOUBLE PRECISION,
charred_cd           INTEGER,
orntcd_pnwrs         VARCHAR(1),
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6),
cwd_sample_method    VARCHAR(6),
hollow_dia           INTEGER,
horiz_dist_cd        INTEGER,
inclination          INTEGER,
large_end_dia_class  INTEGER,
length_cd            INTEGER,
volcf_ac_unadj       DOUBLE PRECISION,
volcf_ac_plot        DOUBLE PRECISION,
volcf_ac_cond        DOUBLE PRECISION,
drybio_ac_unadj      DOUBLE PRECISION,
drybio_ac_plot       DOUBLE PRECISION,
drybio_ac_cond       DOUBLE PRECISION,
carbon_ac_unadj      DOUBLE PRECISION,
carbon_ac_plot       DOUBLE PRECISION,
carbon_ac_cond       DOUBLE PRECISION
);
comment on column fs_fiadb.dwm_coarse_woody_debris.cn
  is 'Unique Index';
comment on column fs_fiadb.dwm_coarse_woody_debris.plt_cn
  is 'Foreign Key to NIMS_PLOT';
comment on column fs_fiadb.dwm_coarse_woody_debris.invyr
  is 'NA';
comment on column fs_fiadb.dwm_coarse_woody_debris.statecd
  is 'state code';
comment on column fs_fiadb.dwm_coarse_woody_debris.countycd
  is 'County Code';
comment on column fs_fiadb.dwm_coarse_woody_debris.plot
  is 'P2 Plot Number';
comment on column fs_fiadb.dwm_coarse_woody_debris.subp
  is 'Subplot Number';
comment on column fs_fiadb.dwm_coarse_woody_debris.transect
  is 'Subplot Transect (deg)';
comment on column fs_fiadb.dwm_coarse_woody_debris.cwdid
  is 'CWD ID';
comment on column fs_fiadb.dwm_coarse_woody_debris.measyear
  is 'Measurement Year';
comment on column fs_fiadb.dwm_coarse_woody_debris.condid
  is 'Condition ID';
comment on column fs_fiadb.dwm_coarse_woody_debris.slopdist
  is 'Slope Distance';
comment on column fs_fiadb.dwm_coarse_woody_debris.horiz_dist
  is 'Horizontal distance along transect from transect start to piece';
comment on column fs_fiadb.dwm_coarse_woody_debris.spcd
  is 'Species Code';
comment on column fs_fiadb.dwm_coarse_woody_debris.decaycd
  is 'Decay Class';
comment on column fs_fiadb.dwm_coarse_woody_debris.transdia
  is 'Transect diameter';
comment on column fs_fiadb.dwm_coarse_woody_debris.smalldia
  is 'Small diameter';
comment on column fs_fiadb.dwm_coarse_woody_debris.largedia
  is 'Large diameter';
comment on column fs_fiadb.dwm_coarse_woody_debris.length
  is 'Length of Log';
comment on column fs_fiadb.dwm_coarse_woody_debris.hollowcd
  is 'HOLLOW?';
comment on column fs_fiadb.dwm_coarse_woody_debris.cwdhstcd
  is 'History of CWD piece';
comment on column fs_fiadb.dwm_coarse_woody_debris.volcf
  is 'Cubic foot volume of log.';
comment on column fs_fiadb.dwm_coarse_woody_debris.drybio
  is 'Dry weight of log in pounds.';
comment on column fs_fiadb.dwm_coarse_woody_debris.carbon
  is 'Carbon weight of log in pounds.';
comment on column fs_fiadb.dwm_coarse_woody_debris.cover_pct
  is 'Percent cover represented by each log.';
comment on column fs_fiadb.dwm_coarse_woody_debris.lpa_unadj
  is 'Logs per acre based on target plot transect length for P3 core measurements.';
comment on column fs_fiadb.dwm_coarse_woody_debris.lpa_plot
  is 'Logs per acre based on plot transect length actually measured.';
comment on column fs_fiadb.dwm_coarse_woody_debris.lpa_cond
  is 'Logs per acre based on condition transect length actually measured.';
comment on column fs_fiadb.dwm_coarse_woody_debris.lpa_unadj_rgn
  is 'Logs per acre based on the taret plot transect length for regional measurement.';
comment on column fs_fiadb.dwm_coarse_woody_debris.lpa_plot_rgn
  is 'Logs per acre based on the regional plot transect length actually measured';
comment on column fs_fiadb.dwm_coarse_woody_debris.lpa_cond_rgn
  is 'Logs per acre based on the regional condition transect length actually measured';
comment on column fs_fiadb.dwm_coarse_woody_debris.cover_pct_rgn
  is 'Percent cover represented by each log';
comment on column fs_fiadb.dwm_coarse_woody_debris.charred_cd
  is 'Percent of log charred by fire';
comment on column fs_fiadb.dwm_coarse_woody_debris.orntcd_pnwrs
  is 'Orientation on slope';
comment on column fs_fiadb.dwm_coarse_woody_debris.created_by
  is 'Created by';
comment on column fs_fiadb.dwm_coarse_woody_debris.created_date
  is 'Created Date';
comment on column fs_fiadb.dwm_coarse_woody_debris.created_in_instance
  is 'Created in Instance';
comment on column fs_fiadb.dwm_coarse_woody_debris.modified_by
  is 'Modified by';
comment on column fs_fiadb.dwm_coarse_woody_debris.modified_date
  is 'Modified Date';
comment on column fs_fiadb.dwm_coarse_woody_debris.modified_in_instance
  is 'Modified in Instance';
comment on column fs_fiadb.dwm_coarse_woody_debris.cwd_sample_method
  is 'Code indicating what design and sampling protocol were used to collect the record';
comment on column fs_fiadb.dwm_coarse_woody_debris.hollow_dia
  is 'Hollow diameter at point of intersection';
comment on column fs_fiadb.dwm_coarse_woody_debris.horiz_dist_cd
  is 'Code indicating whether piece is less than or greater than 24 feet from plot center (dist<=24=1 and dist>24=2)';
comment on column fs_fiadb.dwm_coarse_woody_debris.inclination
  is 'Piece inclination';
comment on column fs_fiadb.dwm_coarse_woody_debris.large_end_dia_class
  is 'Large end diameter class code';
comment on column fs_fiadb.dwm_coarse_woody_debris.length_cd
  is 'Code indicating if the length of a CWD piece is shorter than the 3-foot threshold used by protocols prior to 6.0';
comment on column fs_fiadb.dwm_coarse_woody_debris.volcf_ac_unadj
  is 'NA';
comment on column fs_fiadb.dwm_coarse_woody_debris.volcf_ac_plot
  is 'NA';
comment on column fs_fiadb.dwm_coarse_woody_debris.volcf_ac_cond
  is 'NA';
comment on column fs_fiadb.dwm_coarse_woody_debris.drybio_ac_unadj
  is 'NA';
comment on column fs_fiadb.dwm_coarse_woody_debris.drybio_ac_plot
  is 'NA';
comment on column fs_fiadb.dwm_coarse_woody_debris.drybio_ac_cond
  is 'NA';
comment on column fs_fiadb.dwm_coarse_woody_debris.carbon_ac_unadj
  is 'NA';
comment on column fs_fiadb.dwm_coarse_woody_debris.carbon_ac_plot
  is 'NA';
comment on column fs_fiadb.dwm_coarse_woody_debris.carbon_ac_cond
  is 'NA';
CREATE TABLE fs_fiadb.dwm_residual_pile
(
cn                   VARCHAR(34) NOT NULL,
plt_cn               VARCHAR(34) NOT NULL,
invyr                INTEGER NOT NULL,
statecd              INTEGER NOT NULL,
countycd             INTEGER NOT NULL,
plot                 INTEGER NOT NULL,
subp                 INTEGER NOT NULL,
pile                 DOUBLE PRECISION NOT NULL,
measyear             INTEGER,
condid               INTEGER,
shapecd              INTEGER,
azimuth              INTEGER,
density              INTEGER,
height1              INTEGER,
width1               INTEGER,
length1              INTEGER,
height2              INTEGER,
width2               INTEGER,
length2              INTEGER,
volcf                DOUBLE PRECISION,
drybio               DOUBLE PRECISION,
carbon               DOUBLE PRECISION,
ppa_unadj            DOUBLE PRECISION,
ppa_plot             DOUBLE PRECISION,
ppa_cond             DOUBLE PRECISION,
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_in_instance VARCHAR(6),
modified_date        TIMESTAMP(0),
comp_ht              INTEGER,
decaycd              INTEGER,
horiz_begndist       DECIMAL(3,1),
horiz_enddist        DECIMAL(3,1),
pile_sample_method   VARCHAR(6),
spcd                 INTEGER,
transect             INTEGER
);
comment on column fs_fiadb.dwm_residual_pile.cn
  is 'Unique Index';
comment on column fs_fiadb.dwm_residual_pile.plt_cn
  is 'Foreign Key to NIMS_PLOT';
comment on column fs_fiadb.dwm_residual_pile.invyr
  is 'NA';
comment on column fs_fiadb.dwm_residual_pile.statecd
  is 'state code';
comment on column fs_fiadb.dwm_residual_pile.countycd
  is 'County Code';
comment on column fs_fiadb.dwm_residual_pile.plot
  is 'P2 Plot Number';
comment on column fs_fiadb.dwm_residual_pile.subp
  is 'Subplot Number';
comment on column fs_fiadb.dwm_residual_pile.pile
  is 'Subplot pile nbr';
comment on column fs_fiadb.dwm_residual_pile.measyear
  is 'Measurement Year';
comment on column fs_fiadb.dwm_residual_pile.condid
  is 'Forest cond. of pile';
comment on column fs_fiadb.dwm_residual_pile.shapecd
  is 'Pile shape code';
comment on column fs_fiadb.dwm_residual_pile.azimuth
  is 'Bearing from subplot to pile (deg)';
comment on column fs_fiadb.dwm_residual_pile.density
  is 'Packing ratio of pile (%)';
comment on column fs_fiadb.dwm_residual_pile.height1
  is 'Pile height1 (ft)';
comment on column fs_fiadb.dwm_residual_pile.width1
  is 'Pile width1 (ft)';
comment on column fs_fiadb.dwm_residual_pile.length1
  is 'Pile length1 (ft)';
comment on column fs_fiadb.dwm_residual_pile.height2
  is 'Pile height2 (ft)';
comment on column fs_fiadb.dwm_residual_pile.width2
  is 'Pile width2 (ft)';
comment on column fs_fiadb.dwm_residual_pile.length2
  is 'Pile length2 (ft)';
comment on column fs_fiadb.dwm_residual_pile.volcf
  is 'Cubic foot volume of pile.';
comment on column fs_fiadb.dwm_residual_pile.drybio
  is 'Dry weight of pile in pounds.';
comment on column fs_fiadb.dwm_residual_pile.carbon
  is 'Carbon weight of pile in pounds.';
comment on column fs_fiadb.dwm_residual_pile.ppa_unadj
  is 'Piles per acre based on target area';
comment on column fs_fiadb.dwm_residual_pile.ppa_plot
  is 'Piles per acre based on the area of the plot actually measured';
comment on column fs_fiadb.dwm_residual_pile.ppa_cond
  is 'Piles per acre based on the area of the condition actually measured';
comment on column fs_fiadb.dwm_residual_pile.created_by
  is 'Created by';
comment on column fs_fiadb.dwm_residual_pile.created_date
  is 'Created Date';
comment on column fs_fiadb.dwm_residual_pile.created_in_instance
  is 'Created in Instance';
comment on column fs_fiadb.dwm_residual_pile.modified_by
  is 'Modified by';
comment on column fs_fiadb.dwm_residual_pile.modified_in_instance
  is 'Modified in Instance';
comment on column fs_fiadb.dwm_residual_pile.modified_date
  is 'Modified Date';
comment on column fs_fiadb.dwm_residual_pile.comp_ht
  is 'Compacted height of residue pile (ft)';
comment on column fs_fiadb.dwm_residual_pile.decaycd
  is 'Decay class code of the residue pile';
comment on column fs_fiadb.dwm_residual_pile.horiz_begndist
  is 'Pile beginning horizontal distance (ft)';
comment on column fs_fiadb.dwm_residual_pile.horiz_enddist
  is 'Pile ending horizontal distance (ft)';
comment on column fs_fiadb.dwm_residual_pile.pile_sample_method
  is 'Code indicating what design and sampling protocol were used to collect the record';
comment on column fs_fiadb.dwm_residual_pile.spcd
  is 'Species code for residue pile';
comment on column fs_fiadb.dwm_residual_pile.transect
  is 'Subplot transect (deg)';
CREATE TABLE fs_fiadb.dwm_fine_woody_debris
(
cn                     VARCHAR(34) NOT NULL,
plt_cn                 VARCHAR(34) NOT NULL,
invyr                  INTEGER NOT NULL,
statecd                INTEGER NOT NULL,
countycd               INTEGER NOT NULL,
plot                   INTEGER NOT NULL,
transect               INTEGER NOT NULL,
subp                   INTEGER NOT NULL,
condid                 INTEGER NOT NULL,
measyear               INTEGER,
smallct                INTEGER,
mediumct               INTEGER,
largect                INTEGER,
rsnctcd                INTEGER,
pilescd                INTEGER,
small_tl_cond          DOUBLE PRECISION,
small_tl_plot          DOUBLE PRECISION,
small_tl_unadj         DOUBLE PRECISION,
medium_tl_cond         DOUBLE PRECISION,
medium_tl_plot         DOUBLE PRECISION,
medium_tl_unadj        DOUBLE PRECISION,
large_tl_cond          DOUBLE PRECISION,
large_tl_plot          DOUBLE PRECISION,
large_tl_unadj         DOUBLE PRECISION,
created_by             VARCHAR(30),
created_date           TIMESTAMP(0),
created_in_instance    VARCHAR(6),
modified_by            VARCHAR(30),
modified_date          TIMESTAMP(0),
modified_in_instance   VARCHAR(6),
fwd_status_cd          INTEGER,
fwd_nonsample_reasn_cd INTEGER,
fwd_sample_method      VARCHAR(6),
slope                  INTEGER
);
comment on column fs_fiadb.dwm_fine_woody_debris.cn
  is 'Unique Index';
comment on column fs_fiadb.dwm_fine_woody_debris.plt_cn
  is 'Foreign Key to NIMS_PLOT';
comment on column fs_fiadb.dwm_fine_woody_debris.invyr
  is 'NA';
comment on column fs_fiadb.dwm_fine_woody_debris.statecd
  is 'state code';
comment on column fs_fiadb.dwm_fine_woody_debris.countycd
  is 'County Code';
comment on column fs_fiadb.dwm_fine_woody_debris.plot
  is 'P2 Plot Number';
comment on column fs_fiadb.dwm_fine_woody_debris.transect
  is 'Subplot Transect (deg)';
comment on column fs_fiadb.dwm_fine_woody_debris.subp
  is 'Subplot Number';
comment on column fs_fiadb.dwm_fine_woody_debris.condid
  is 'Forest condition class nbr';
comment on column fs_fiadb.dwm_fine_woody_debris.measyear
  is 'Measurement Year';
comment on column fs_fiadb.dwm_fine_woody_debris.smallct
  is '1-hr FWD tally';
comment on column fs_fiadb.dwm_fine_woody_debris.mediumct
  is '10-hr FWD tally';
comment on column fs_fiadb.dwm_fine_woody_debris.largect
  is '100-hr FWD tally';
comment on column fs_fiadb.dwm_fine_woody_debris.rsnctcd
  is 'Reason high tally?';
comment on column fs_fiadb.dwm_fine_woody_debris.pilescd
  is 'Pile obstruction?';
comment on column fs_fiadb.dwm_fine_woody_debris.small_tl_cond
  is 'Sum of transect lengths in condition.';
comment on column fs_fiadb.dwm_fine_woody_debris.small_tl_plot
  is 'Sum of transect lengths in measured and nonforest conditions on plot.';
comment on column fs_fiadb.dwm_fine_woody_debris.small_tl_unadj
  is 'Sum of transect lengths in all conditions including unmeasured on target plot design.';
comment on column fs_fiadb.dwm_fine_woody_debris.medium_tl_cond
  is 'Sum of transect lengths in condition.';
comment on column fs_fiadb.dwm_fine_woody_debris.medium_tl_plot
  is 'Sum of transect lengths in measured and nonforest conditions on plot.';
comment on column fs_fiadb.dwm_fine_woody_debris.medium_tl_unadj
  is 'Sum of transect lengths in all conditions including unmeasured on target plot design.';
comment on column fs_fiadb.dwm_fine_woody_debris.large_tl_cond
  is 'Sum of transect lengths in condition.';
comment on column fs_fiadb.dwm_fine_woody_debris.large_tl_plot
  is 'Sum of transect lengths in measured and nonforest conditions on plot.';
comment on column fs_fiadb.dwm_fine_woody_debris.large_tl_unadj
  is 'Sum of transect lengths in all conditions including unmeasured on target plot design.';
comment on column fs_fiadb.dwm_fine_woody_debris.created_by
  is 'Created by';
comment on column fs_fiadb.dwm_fine_woody_debris.created_date
  is 'Created Date';
comment on column fs_fiadb.dwm_fine_woody_debris.created_in_instance
  is 'Created in Instance';
comment on column fs_fiadb.dwm_fine_woody_debris.modified_by
  is 'Modified by';
comment on column fs_fiadb.dwm_fine_woody_debris.modified_date
  is 'Modified Date';
comment on column fs_fiadb.dwm_fine_woody_debris.modified_in_instance
  is 'Modified in Instance';
comment on column fs_fiadb.dwm_fine_woody_debris.fwd_status_cd
  is 'FWD sample status';
comment on column fs_fiadb.dwm_fine_woody_debris.fwd_nonsample_reasn_cd
  is 'FWD nonsample reason code';
comment on column fs_fiadb.dwm_fine_woody_debris.fwd_sample_method
  is 'Code indicating what design and sampling protocol were used to collect the record';
comment on column fs_fiadb.dwm_fine_woody_debris.slope
  is 'FWD transect slope %';
CREATE TABLE fs_fiadb.ref_research_station
(
statecd              INTEGER NOT NULL,
rscd                 INTEGER,
rs                   VARCHAR(5),
state_name           VARCHAR(40) NOT NULL,
state_abbr           VARCHAR(4) NOT NULL,
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6)
);
comment on column fs_fiadb.ref_research_station.statecd
  is 'State Code';
comment on column fs_fiadb.ref_research_station.rscd
  is 'Region or Station Code';
comment on column fs_fiadb.ref_research_station.rs
  is 'Research station abbreviation.';
comment on column fs_fiadb.ref_research_station.state_name
  is 'State Name';
comment on column fs_fiadb.ref_research_station.state_abbr
  is 'State Abbreviation';
comment on column fs_fiadb.ref_research_station.created_by
  is 'Created by';
comment on column fs_fiadb.ref_research_station.created_date
  is 'Created Date';
comment on column fs_fiadb.ref_research_station.created_in_instance
  is 'Created in Instance';
comment on column fs_fiadb.ref_research_station.modified_by
  is 'Modified by';
comment on column fs_fiadb.ref_research_station.modified_date
  is 'Modified Date';
comment on column fs_fiadb.ref_research_station.modified_in_instance
  is 'Modified in Instance';
CREATE TABLE fs_fiadb.evalidator_variable_library
(
db_var               VARCHAR(32),
label_var            VARCHAR(48) NOT NULL,
type_var             DOUBLE PRECISION,
type_var_name        CHAR(14),
attribute_list       CHAR(1),
page_list            CHAR(1),
row_list             CHAR(1),
col_list             CHAR(1),
max_cols             DOUBLE PRECISION,
decode_statement     VARCHAR(4000),
function_name        VARCHAR(4000),
prc_metadata         VARCHAR(4000),
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6),
sql_select           VARCHAR(4000),
sql_join             VARCHAR(4000),
sql_groupby          VARCHAR(4000),
sql_alias            VARCHAR(200)
);
comment on column fs_fiadb.evalidator_variable_library.db_var
  is 'The FIADB database variable that is most reflective of the classification variable (note: some classification variables may use more than one database variable)';
comment on column fs_fiadb.evalidator_variable_library.label_var
  is 'The way the classification variable will appear in the page variable/row variable/column variable drop down boxes in step 3 of the EVALIDator program';
comment on column fs_fiadb.evalidator_variable_library.type_var
  is 'No longer needed - has no meaning';
comment on column fs_fiadb.evalidator_variable_library.type_var_name
  is 'No longer needed - has no meaning  - value is always "CLASSIFICATION"';
comment on column fs_fiadb.evalidator_variable_library.attribute_list
  is 'No longer needed - has no meaning';
comment on column fs_fiadb.evalidator_variable_library.page_list
  is 'Can this classification variable be used for pages in the report - values of "Y" and "N"';
comment on column fs_fiadb.evalidator_variable_library.row_list
  is 'Can this classification variable be used for rows in the report - values of "Y" and "N"';
comment on column fs_fiadb.evalidator_variable_library.col_list
  is 'Can this classification variable be used for columns in the report - values of "Y" and "N"';
comment on column fs_fiadb.evalidator_variable_library.max_cols
  is 'Maximum number of classes for this classification variable (note: a value of 99 will result in the classification not showing up in the EVALIDator program)';
comment on column fs_fiadb.evalidator_variable_library.decode_statement
  is 'Oracle decode statement used that converts database variable(s) to categorical values for reporting purposes (only used by EVALIDator program when 'Trend analysis - StateInventories for rowsno pages' is selected as the row variable)';
comment on column fs_fiadb.evalidator_variable_library.function_name
  is 'Oracle decode statement or function that converts database variable(s) to categorical values for reporting purposes (used by EVALIDator program when 'Trend analysis - StateInventories for rowsno pages' is NOT selected as the row variable)';
comment on column fs_fiadb.evalidator_variable_library.prc_metadata
  is 'NA';
comment on column fs_fiadb.evalidator_variable_library.created_by
  is 'Created by';
comment on column fs_fiadb.evalidator_variable_library.created_date
  is 'Created date';
comment on column fs_fiadb.evalidator_variable_library.created_in_instance
  is 'Created in instance';
comment on column fs_fiadb.evalidator_variable_library.modified_by
  is 'Modified by';
comment on column fs_fiadb.evalidator_variable_library.modified_date
  is 'Modified date';
comment on column fs_fiadb.evalidator_variable_library.modified_in_instance
  is 'Modified in instance';
comment on column fs_fiadb.evalidator_variable_library.sql_select
  is 'NA';
comment on column fs_fiadb.evalidator_variable_library.sql_join
  is 'NA';
comment on column fs_fiadb.evalidator_variable_library.sql_groupby
  is 'NA';
comment on column fs_fiadb.evalidator_variable_library.sql_alias
  is 'NA';
CREATE TABLE fs_fiadb.ozone_biosite_summary
(
cn                       VARCHAR(34) NOT NULL,
invyr                    INTEGER NOT NULL,
statecd                  INTEGER NOT NULL,
countycd                 INTEGER NOT NULL,
o3plot                   DOUBLE PRECISION NOT NULL,
field_id                 INTEGER NOT NULL,
location_cnt             DOUBLE PRECISION NOT NULL,
ground_loc_cd            INTEGER NOT NULL,
measyear                 INTEGER NOT NULL,
plant_inj_cnt            DOUBLE PRECISION NOT NULL,
plant_eval_cnt           DOUBLE PRECISION NOT NULL,
plant_ratio              DOUBLE PRECISION NOT NULL,
species_eval_cnt         DOUBLE PRECISION NOT NULL,
biosite_index            DOUBLE PRECISION NOT NULL,
biosite_index_multiplier DOUBLE PRECISION,
svrty_class_zero         DOUBLE PRECISION,
svrty_class_one          DOUBLE PRECISION,
svrty_class_two          DOUBLE PRECISION,
svrty_class_three        DOUBLE PRECISION,
svrty_class_four         DOUBLE PRECISION,
svrty_class_five         DOUBLE PRECISION,
created_by               VARCHAR(30),
created_date             TIMESTAMP(0),
created_in_instance      VARCHAR(6),
modified_by              VARCHAR(30),
modified_date            TIMESTAMP(0),
modified_in_instance     VARCHAR(6)
);
comment on column fs_fiadb.ozone_biosite_summary.cn
  is 'NA';
comment on column fs_fiadb.ozone_biosite_summary.invyr
  is 'NA';
comment on column fs_fiadb.ozone_biosite_summary.statecd
  is 'NA';
comment on column fs_fiadb.ozone_biosite_summary.countycd
  is 'NA';
comment on column fs_fiadb.ozone_biosite_summary.o3plot
  is 'NA';
comment on column fs_fiadb.ozone_biosite_summary.field_id
  is 'the 7-digit number used by the field crew for all current and active biosites';
comment on column fs_fiadb.ozone_biosite_summary.location_cnt
  is 'If location count = 1, then the plant injury data is collected from a single location. If location count = 2, then the plant injury data is collected from two or more locations with the same 7-digit hex number (P3HEX). Two locations are selected as needed to obtain optimal species and plant counts for each biosite. The injury data and plant counts from both locations are combined in the formulation of the biosite index.';
comment on column fs_fiadb.ozone_biosite_summary.ground_loc_cd
  is 'GROUND_LOC_CD = 1 means the GPS values stayed the same from one year to the next.  GROUND_LOC_CD = 2 means the biosite has been moved more than 3 miles and has a second set of GPS values.  GROUND_LOC_CD = 3 means the biosite has moved more than 3 miles for a third time and has a third set of GPS values.';
comment on column fs_fiadb.ozone_biosite_summary.measyear
  is 'NA';
comment on column fs_fiadb.ozone_biosite_summary.plant_inj_cnt
  is 'The number of injured plants at a biosite (P3Hex) equals the number of plants that have injury amounts greater than zero.plant_inj_cnt = count ( plants at a hexagon that have an injury amount greater than zero )';
comment on column fs_fiadb.ozone_biosite_summary.plant_eval_cnt
  is 'The number of plants evaluated equals the total number of plants examined at a biosite (P3Hex).plant_eval_cnt = count ( all plants evaluated at a hexagon )';
comment on column fs_fiadb.ozone_biosite_summary.plant_ratio
  is 'The plants ratio is the ratio of the number of plants injured to the number of  plants evaluated.  That is, the plants ratio equals the number of plants injured divided by the number of plants evaluated.plant_ratio = plants_inj_cnt ; plants_eval_cnt';
comment on column fs_fiadb.ozone_biosite_summary.species_eval_cnt
  is 'The species evaluation count equals the number of species evaluated at a biosite (P3Hex).species_eval_cnt = count ( the unique species evaluated at a hexagon )';
comment on column fs_fiadb.ozone_biosite_summary.biosite_index
  is 'The biosite index at a biosite (P3Hex) equals the sum of the species index (BIOSPCD_INDEX) divided by the species evaluation count.biosite_index = summation ( biospcd_index ) ; species_eval_cnt';
comment on column fs_fiadb.ozone_biosite_summary.biosite_index_multiplier
  is 'The biosite index (BI) is formulated from the injury amount and severity ratings recorded for each plant and the numbers of plants and species evaluated at each biosite.  BI values are classified into categories of ozone risk designed to capture differences in plant damage to ozone sensitive species in areas of low, moderate, and high ozone exposure. The biosite index multiplier is the BI multiplied by 1000 to allow the ozone risk categories to be defined by integers. 	biosite_index_multiplier = biosite_index * (1000)';
comment on column fs_fiadb.ozone_biosite_summary.svrty_class_zero
  is 'The percent of all evaluated plants at a given biosite that have no symptoms of ozone-induced foliar injury1.svrty_class_zero = count (all plants with injury severity equal to zero) * 100;count (all plants evaluated at a hexagon, i.e., plant_eval_count )';
comment on column fs_fiadb.ozone_biosite_summary.svrty_class_one
  is 'The percent of all evaluated plants at a given biosite that have 1 to 6 percent injury. The injury estimate is based on the mean severity of ozone-induced injury symptoms on the injured foliage for each plant. Injury class one may be considered slight injury. svrty_class_one = count (all plants with injury severity equal to 1 or 3.5%) * 100;count (all plants evaluated at a hexagon, i.e., plant_eval_count )';
comment on column fs_fiadb.ozone_biosite_summary.svrty_class_two
  is 'The percent of all evaluated plants at a given biosite that have 7 to 25 percent injury. The injury estimate is based on the mean severity of ozone-induced injury symptoms on the injured foliage for each plant. Injury class two may be considered low to moderate ozone injury. svrty_class_two = count (all plants with injury severity equal to 2 or 16%) * 100;count (all plants evaluated at a hexagon, i.e., plant_eval_count )';
comment on column fs_fiadb.ozone_biosite_summary.svrty_class_three
  is 'The percent of all evaluated plants at a given biosite that have 26 to 50 percent injury. The injury estimate is based on the mean severity of ozone-induced injury symptoms on the injured foliage for each plant. Injury class three may be considered moderate ozone injury. svrty_class_three = count (all plants with injury severity equal to 3 or 38%) * 100;count (all plants evaluated at a hexagon, i.e., plant_eval_count )';
comment on column fs_fiadb.ozone_biosite_summary.svrty_class_four
  is 'The percent of all evaluated plants at a given biosite that have 51 to 75 percent injury. The injury estimate is based on the mean severity of ozone-induced injury symptoms on the injured foliage for each plant. Injury class four may be considered moderate to severe ozone injury. svrty_class_four = count (all plants with injury severity equal to 4 or 63%) * 100;count (all plants evaluated at a hexagon, i.e., plant_eval_count )';
comment on column fs_fiadb.ozone_biosite_summary.svrty_class_five
  is 'The percent of all evaluated plants at a given biosite that have greater than 75 percent injury. The injury estimate is based on the mean severity of ozone-induced injury symptoms on the injured foliage for each plant. Injury class five may be considered severe ozone injury. svrty_class_five = count (all plants with injury severity equal to 5 or 88%) * 100;count (all plants evaluated at a hexagon, i.e., plant_eval_count )';
comment on column fs_fiadb.ozone_biosite_summary.created_by
  is 'NA';
comment on column fs_fiadb.ozone_biosite_summary.created_date
  is 'NA';
comment on column fs_fiadb.ozone_biosite_summary.created_in_instance
  is 'NA';
comment on column fs_fiadb.ozone_biosite_summary.modified_by
  is 'NA';
comment on column fs_fiadb.ozone_biosite_summary.modified_date
  is 'NA';
comment on column fs_fiadb.ozone_biosite_summary.modified_in_instance
  is 'NA';
CREATE TABLE fs_fiadb.lichen_plot_summary
(
cn                   VARCHAR(34) NOT NULL,
plt_cn               VARCHAR(34) NOT NULL,
invyr                INTEGER NOT NULL,
statecd              INTEGER NOT NULL,
countycd             INTEGER NOT NULL,
plot                 INTEGER NOT NULL,
measyear             INTEGER NOT NULL,
summation            DECIMAL(7,4) NOT NULL,
richness             INTEGER NOT NULL,
evenness             DECIMAL(5,4),
diversity            DECIMAL(5,4) NOT NULL,
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6)
);
comment on column fs_fiadb.lichen_plot_summary.cn
  is 'NA';
comment on column fs_fiadb.lichen_plot_summary.plt_cn
  is 'NA';
comment on column fs_fiadb.lichen_plot_summary.invyr
  is 'NA';
comment on column fs_fiadb.lichen_plot_summary.statecd
  is 'statecd code';
comment on column fs_fiadb.lichen_plot_summary.countycd
  is 'county code';
comment on column fs_fiadb.lichen_plot_summary.plot
  is 'p2 plot number';
comment on column fs_fiadb.lichen_plot_summary.measyear
  is 'measurement year';
comment on column fs_fiadb.lichen_plot_summary.summation
  is 'NA';
comment on column fs_fiadb.lichen_plot_summary.richness
  is 'NA';
comment on column fs_fiadb.lichen_plot_summary.evenness
  is 'NA';
comment on column fs_fiadb.lichen_plot_summary.diversity
  is 'NA';
comment on column fs_fiadb.lichen_plot_summary.created_by
  is 'NA';
comment on column fs_fiadb.lichen_plot_summary.created_date
  is 'NA';
comment on column fs_fiadb.lichen_plot_summary.created_in_instance
  is 'NA';
comment on column fs_fiadb.lichen_plot_summary.modified_by
  is 'NA';
comment on column fs_fiadb.lichen_plot_summary.modified_date
  is 'NA';
comment on column fs_fiadb.lichen_plot_summary.modified_in_instance
  is 'NA';
CREATE TABLE fs_fiadb.veg_visit
(
cn                   VARCHAR(34) NOT NULL,
plt_cn               VARCHAR(34) NOT NULL,
invyr                INTEGER NOT NULL,
statecd              INTEGER NOT NULL,
countycd             INTEGER NOT NULL,
plot                 INTEGER NOT NULL,
veg_qa_status        INTEGER,
veg_kindcd           INTEGER,
veg_manual           VARCHAR(8),
trace_cover_allowed  INTEGER,
veg_measyear         INTEGER,
veg_measmon          INTEGER,
veg_measday          INTEGER,
veg_sample_basis     INTEGER,
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6),
qa_status            INTEGER
);
comment on column fs_fiadb.veg_visit.cn
  is 'CN partly identifies NIMS_VEG_VISIT_TBL';
comment on column fs_fiadb.veg_visit.plt_cn
  is 'PLT_CN is foreign key to NIMS_PLOT_TBL.CN';
comment on column fs_fiadb.veg_visit.invyr
  is 'NA';
comment on column fs_fiadb.veg_visit.statecd
  is 'state code';
comment on column fs_fiadb.veg_visit.countycd
  is 'County Code';
comment on column fs_fiadb.veg_visit.plot
  is 'NA';
comment on column fs_fiadb.veg_visit.veg_qa_status
  is 'QA Status code that refers directly to VEG. Often differs from P2 QA_STATUS, but will always be linked to P2 QA_STATUS=1 plot data. (Named differently than QA_STATUS because LOAD_ and PDR_ tables require QA_STATUS as part of key.)';
comment on column fs_fiadb.veg_visit.veg_kindcd
  is 'VEG Sample Kind (Named differently than KINDCD because PDR_ tables require KINDCD as part of key.)';
comment on column fs_fiadb.veg_visit.veg_manual
  is 'P3 Veg field guide version number, usually recorded as';
comment on column fs_fiadb.veg_visit.trace_cover_allowed
  is 'TRACE_COVER_ALLOWED - added 10;24;2005; 0 = trace cover value (0.01) was not allowed in the protocol under which the plot was measured (pre-2005); 1 = trace cover value was allowed (2005 and later)';
comment on column fs_fiadb.veg_visit.veg_measyear
  is 'Measurement Year';
comment on column fs_fiadb.veg_visit.veg_measmon
  is 'VEG Measurement Month';
comment on column fs_fiadb.veg_visit.veg_measday
  is 'VEG Measurement Day';
comment on column fs_fiadb.veg_visit.veg_sample_basis
  is 'VEG_SAMPLE_BASIS: 1 = plant cover;presence sampled on all subplot conditions (possibly even hazardous and access denied) - applies to NIMS_VEG_VISIT.VEG_MANUAL = 1.7 plots; 2  = plant cover;presence sampled only on accessible forest conditions - applies to NIMS_VEG_VISIT.VEG_MANUAL = 2.0 and later plots.';
comment on column fs_fiadb.veg_visit.created_by
  is 'CREATED_BY user';
comment on column fs_fiadb.veg_visit.created_date
  is 'CREATED_DATE';
comment on column fs_fiadb.veg_visit.created_in_instance
  is 'CREATED_IN_INSTANCE';
comment on column fs_fiadb.veg_visit.modified_by
  is 'MODIFIED_BY user';
comment on column fs_fiadb.veg_visit.modified_date
  is 'MODIFIED_DATE';
comment on column fs_fiadb.veg_visit.modified_in_instance
  is 'MODIFIED_IN_INSTANCE';
comment on column fs_fiadb.veg_visit.qa_status
  is 'qa status code';
CREATE TABLE fs_fiadb.soils_erosion
(
cn                   VARCHAR(34) NOT NULL,
plt_cn               VARCHAR(34) NOT NULL,
invyr                INTEGER NOT NULL,
statecd              INTEGER NOT NULL,
countycd             INTEGER NOT NULL,
plot                 INTEGER NOT NULL,
subp                 INTEGER NOT NULL,
measyear             INTEGER NOT NULL,
soilspct             DOUBLE PRECISION,
compcpct             DOUBLE PRECISION,
typrtdcd             DOUBLE PRECISION,
typcmpcd             DOUBLE PRECISION,
typareacd            DOUBLE PRECISION,
typothrcd            DOUBLE PRECISION,
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6)
);
comment on column fs_fiadb.soils_erosion.cn
  is 'Unique Index';
comment on column fs_fiadb.soils_erosion.plt_cn
  is 'Foreign Key to NIMS_PLOT';
comment on column fs_fiadb.soils_erosion.invyr
  is 'NA';
comment on column fs_fiadb.soils_erosion.statecd
  is 'state code';
comment on column fs_fiadb.soils_erosion.countycd
  is 'County Code';
comment on column fs_fiadb.soils_erosion.plot
  is 'P2 Plot Number';
comment on column fs_fiadb.soils_erosion.subp
  is 'Subplot Number';
comment on column fs_fiadb.soils_erosion.measyear
  is 'Measurement Year';
comment on column fs_fiadb.soils_erosion.soilspct
  is '% Bare Soil';
comment on column fs_fiadb.soils_erosion.compcpct
  is '% Compacted Area';
comment on column fs_fiadb.soils_erosion.typrtdcd
  is 'Rutted trail';
comment on column fs_fiadb.soils_erosion.typcmpcd
  is 'Compacted Trail';
comment on column fs_fiadb.soils_erosion.typareacd
  is 'Compacted Area';
comment on column fs_fiadb.soils_erosion.typothrcd
  is 'Other Type of Compaction';
comment on column fs_fiadb.soils_erosion.created_by
  is 'Created by';
comment on column fs_fiadb.soils_erosion.created_date
  is 'Created Date';
comment on column fs_fiadb.soils_erosion.created_in_instance
  is 'Created in Instance';
comment on column fs_fiadb.soils_erosion.modified_by
  is 'Modified by';
comment on column fs_fiadb.soils_erosion.modified_date
  is 'Modified Date';
comment on column fs_fiadb.soils_erosion.modified_in_instance
  is 'Modified in Instance';
CREATE TABLE fs_fiadb.ref_lichen_spp_comments
(
lich_sppcd           INTEGER NOT NULL,
spp_name             VARCHAR(80) NOT NULL,
yearend              INTEGER,
yearstart            INTEGER NOT NULL,
spp_comments         VARCHAR(2000) NOT NULL,
cn                   VARCHAR(34) NOT NULL,
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6)
);
comment on column fs_fiadb.ref_lichen_spp_comments.lich_sppcd
  is 'NA';
comment on column fs_fiadb.ref_lichen_spp_comments.spp_name
  is 'NA';
comment on column fs_fiadb.ref_lichen_spp_comments.yearend
  is 'NA';
comment on column fs_fiadb.ref_lichen_spp_comments.yearstart
  is 'NA';
comment on column fs_fiadb.ref_lichen_spp_comments.spp_comments
  is 'NA';
comment on column fs_fiadb.ref_lichen_spp_comments.cn
  is 'NA';
comment on column fs_fiadb.ref_lichen_spp_comments.created_by
  is 'NA';
comment on column fs_fiadb.ref_lichen_spp_comments.created_date
  is 'NA';
comment on column fs_fiadb.ref_lichen_spp_comments.created_in_instance
  is 'NA';
comment on column fs_fiadb.ref_lichen_spp_comments.modified_by
  is 'NA';
comment on column fs_fiadb.ref_lichen_spp_comments.modified_date
  is 'NA';
comment on column fs_fiadb.ref_lichen_spp_comments.modified_in_instance
  is 'NA';
CREATE TABLE fs_fiadb.soils_lab
(
cn                            VARCHAR(34) NOT NULL,
plt_cn                        VARCHAR(34) NOT NULL,
invyr                         INTEGER NOT NULL,
statecd                       INTEGER NOT NULL,
countycd                      INTEGER NOT NULL,
plot                          INTEGER NOT NULL,
smplnnbr                      INTEGER NOT NULL,
vstnbr                        INTEGER,
layer_type                    VARCHAR(10),
sampler_type                  VARCHAR(2),
qastatcd                      INTEGER,
sample_date                   TIMESTAMP(0),
lab_id                        VARCHAR(10),
sample_id                     VARCHAR(12),
field_moist_soil_wt           DECIMAL(7,2),
air_dry_soil_wt               DECIMAL(7,2),
oven_dry_soil_wt              DECIMAL(7,2),
field_moist_water_content_pct DECIMAL(6,2),
residual_water_content_pct    DECIMAL(6,2),
total_water_content_pct       DECIMAL(6,2),
bulk_density                  DECIMAL(7,3),
coarse_fraction_pct           DECIMAL(7,3),
c_org_pct                     DECIMAL(7,3),
c_inorg_pct                   DECIMAL(7,3),
c_total_pct                   DECIMAL(7,3),
n_total_pct                   DECIMAL(7,3),
ph_h2o                        DECIMAL(7,3),
ph_cacl2                      DECIMAL(7,3),
exchng_na                     DECIMAL(9,3),
exchng_k                      DECIMAL(9,3),
exchng_mg                     DECIMAL(9,3),
exchng_ca                     DECIMAL(9,3),
exchng_al                     DECIMAL(9,3),
ecec                          DECIMAL(9,3),
exchng_mn                     DECIMAL(9,3),
exchng_fe                     DECIMAL(9,3),
exchng_ni                     DECIMAL(9,3),
exchng_cu                     DECIMAL(9,3),
exchng_zn                     DECIMAL(9,3),
exchng_cd                     DECIMAL(9,3),
exchng_pb                     DECIMAL(9,3),
exchng_s                      DECIMAL(9,3),
bray1_p                       DECIMAL(9,3),
olsen_p                       DECIMAL(9,3),
measyear                      INTEGER NOT NULL,
modified_by                   VARCHAR(30),
modified_date                 TIMESTAMP(0),
modified_in_instance          VARCHAR(6),
created_by                    VARCHAR(30),
created_date                  TIMESTAMP(0),
created_in_instance           VARCHAR(6)
);
comment on column fs_fiadb.soils_lab.cn
  is 'NA';
comment on column fs_fiadb.soils_lab.plt_cn
  is 'NA';
comment on column fs_fiadb.soils_lab.invyr
  is 'NA';
comment on column fs_fiadb.soils_lab.statecd
  is 'NA';
comment on column fs_fiadb.soils_lab.countycd
  is 'NA';
comment on column fs_fiadb.soils_lab.plot
  is 'NA';
comment on column fs_fiadb.soils_lab.smplnnbr
  is 'NA';
comment on column fs_fiadb.soils_lab.vstnbr
  is 'NA';
comment on column fs_fiadb.soils_lab.layer_type
  is 'NA';
comment on column fs_fiadb.soils_lab.sampler_type
  is 'NA';
comment on column fs_fiadb.soils_lab.qastatcd
  is 'NA';
comment on column fs_fiadb.soils_lab.sample_date
  is 'NA';
comment on column fs_fiadb.soils_lab.lab_id
  is 'NA';
comment on column fs_fiadb.soils_lab.sample_id
  is 'NA';
comment on column fs_fiadb.soils_lab.field_moist_soil_wt
  is 'NA';
comment on column fs_fiadb.soils_lab.air_dry_soil_wt
  is 'NA';
comment on column fs_fiadb.soils_lab.oven_dry_soil_wt
  is 'NA';
comment on column fs_fiadb.soils_lab.field_moist_water_content_pct
  is 'NA';
comment on column fs_fiadb.soils_lab.residual_water_content_pct
  is 'NA';
comment on column fs_fiadb.soils_lab.total_water_content_pct
  is 'NA';
comment on column fs_fiadb.soils_lab.bulk_density
  is 'NA';
comment on column fs_fiadb.soils_lab.coarse_fraction_pct
  is 'NA';
comment on column fs_fiadb.soils_lab.c_org_pct
  is 'NA';
comment on column fs_fiadb.soils_lab.c_inorg_pct
  is 'NA';
comment on column fs_fiadb.soils_lab.c_total_pct
  is 'NA';
comment on column fs_fiadb.soils_lab.n_total_pct
  is 'NA';
comment on column fs_fiadb.soils_lab.ph_h2o
  is 'NA';
comment on column fs_fiadb.soils_lab.ph_cacl2
  is 'NA';
comment on column fs_fiadb.soils_lab.exchng_na
  is 'NA';
comment on column fs_fiadb.soils_lab.exchng_k
  is 'NA';
comment on column fs_fiadb.soils_lab.exchng_mg
  is 'NA';
comment on column fs_fiadb.soils_lab.exchng_ca
  is 'NA';
comment on column fs_fiadb.soils_lab.exchng_al
  is 'NA';
comment on column fs_fiadb.soils_lab.ecec
  is 'NA';
comment on column fs_fiadb.soils_lab.exchng_mn
  is 'NA';
comment on column fs_fiadb.soils_lab.exchng_fe
  is 'NA';
comment on column fs_fiadb.soils_lab.exchng_ni
  is 'NA';
comment on column fs_fiadb.soils_lab.exchng_cu
  is 'NA';
comment on column fs_fiadb.soils_lab.exchng_zn
  is 'NA';
comment on column fs_fiadb.soils_lab.exchng_cd
  is 'NA';
comment on column fs_fiadb.soils_lab.exchng_pb
  is 'NA';
comment on column fs_fiadb.soils_lab.exchng_s
  is 'NA';
comment on column fs_fiadb.soils_lab.bray1_p
  is 'NA';
comment on column fs_fiadb.soils_lab.olsen_p
  is 'NA';
comment on column fs_fiadb.soils_lab.measyear
  is 'NA';
comment on column fs_fiadb.soils_lab.modified_by
  is 'NA';
comment on column fs_fiadb.soils_lab.modified_date
  is 'NA';
comment on column fs_fiadb.soils_lab.modified_in_instance
  is 'NA';
comment on column fs_fiadb.soils_lab.created_by
  is 'NA';
comment on column fs_fiadb.soils_lab.created_date
  is 'NA';
comment on column fs_fiadb.soils_lab.created_in_instance
  is 'NA';
CREATE TABLE fs_fiadb.soils_visit
(
cn                   VARCHAR(34) NOT NULL,
plt_cn               VARCHAR(34) NOT NULL,
invyr                INTEGER NOT NULL,
statecd              INTEGER NOT NULL,
countycd             INTEGER NOT NULL,
plot                 INTEGER NOT NULL,
measday              INTEGER,
measmon              INTEGER,
measyear             INTEGER NOT NULL,
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6),
qa_status            INTEGER
);
comment on column fs_fiadb.soils_visit.cn
  is 'Unique Index';
comment on column fs_fiadb.soils_visit.plt_cn
  is 'Foreign Key to NIMS_PLOT';
comment on column fs_fiadb.soils_visit.invyr
  is 'NA';
comment on column fs_fiadb.soils_visit.statecd
  is 'state code';
comment on column fs_fiadb.soils_visit.countycd
  is 'County Code';
comment on column fs_fiadb.soils_visit.plot
  is 'P2 Plot Number';
comment on column fs_fiadb.soils_visit.measday
  is 'Measurement Day';
comment on column fs_fiadb.soils_visit.measmon
  is 'Measurement Month';
comment on column fs_fiadb.soils_visit.measyear
  is 'Measurement Year';
comment on column fs_fiadb.soils_visit.created_by
  is 'Created By';
comment on column fs_fiadb.soils_visit.created_date
  is 'Created Date';
comment on column fs_fiadb.soils_visit.created_in_instance
  is 'Created in Instance';
comment on column fs_fiadb.soils_visit.modified_by
  is 'Modified by';
comment on column fs_fiadb.soils_visit.modified_date
  is 'Modified Date';
comment on column fs_fiadb.soils_visit.modified_in_instance
  is 'Modified in Instance';
comment on column fs_fiadb.soils_visit.qa_status
  is 'qa status code';
CREATE TABLE fs_fiadb.sitetree
(
cn                             VARCHAR(34) NOT NULL,
plt_cn                         VARCHAR(34) NOT NULL,
prev_sit_cn                    VARCHAR(34),
invyr                          INTEGER NOT NULL,
statecd                        INTEGER NOT NULL,
unitcd                         INTEGER NOT NULL,
countycd                       INTEGER NOT NULL,
plot                           INTEGER NOT NULL,
condid                         INTEGER NOT NULL,
tree                           INTEGER NOT NULL,
spcd                           DOUBLE PRECISION,
dia                            DECIMAL(5,2),
ht                             INTEGER,
agedia                         INTEGER,
spgrpcd                        INTEGER,
sitree                         INTEGER,
sibase                         INTEGER,
subp                           INTEGER,
azimuth                        INTEGER,
dist                           DECIMAL(4,1),
method                         INTEGER NOT NULL,
sitree_est                     INTEGER,
validcd                        INTEGER,
created_by                     VARCHAR(30),
created_date                   TIMESTAMP(0),
created_in_instance            VARCHAR(6),
modified_by                    VARCHAR(30),
modified_date                  TIMESTAMP(0),
modified_in_instance           VARCHAR(6),
cycle                          INTEGER,
subcycle                       INTEGER,
agechkcd_rmrs                  INTEGER,
age_determination_method_pnwrs INTEGER,
cclcd_rmrs                     INTEGER,
damage_agent_cd1_rmrs          INTEGER,
damage_agent_cd2_rmrs          INTEGER,
damage_agent_cd3_rmrs          INTEGER,
sibase_age_pnwrs               INTEGER,
sitetrcd_rmrs                  INTEGER,
site_age_tree_status_pnwrs     VARCHAR(1),
site_age_tree_type_pnwrs       INTEGER,
site_tree_method_pnwrs         VARCHAR(1),
sitree_equ_no_pnwrs            INTEGER,
treeclcd_rmrs                  INTEGER,
tree_act_rmrs                  INTEGER,
year_age_taken                 INTEGER,
sieqn_ref_cd                   VARCHAR(10),
sitree_fvs                     INTEGER,
sibase_fvs                     INTEGER,
sieqn_ref_cd_fvs               VARCHAR(10)
);
comment on column fs_fiadb.sitetree.cn
  is 'Unique index';
comment on column fs_fiadb.sitetree.plt_cn
  is 'Unique index';
comment on column fs_fiadb.sitetree.prev_sit_cn
  is 'Unique index';
comment on column fs_fiadb.sitetree.invyr
  is 'NA';
comment on column fs_fiadb.sitetree.statecd
  is 'State code';
comment on column fs_fiadb.sitetree.unitcd
  is 'Survey unit code';
comment on column fs_fiadb.sitetree.countycd
  is 'County code';
comment on column fs_fiadb.sitetree.plot
  is 'Plot number';
comment on column fs_fiadb.sitetree.condid
  is 'Condition number';
comment on column fs_fiadb.sitetree.tree
  is 'Tree number';
comment on column fs_fiadb.sitetree.spcd
  is 'Species';
comment on column fs_fiadb.sitetree.dia
  is 'Current diameter';
comment on column fs_fiadb.sitetree.ht
  is 'Height';
comment on column fs_fiadb.sitetree.agedia
  is 'Age at diameter height';
comment on column fs_fiadb.sitetree.spgrpcd
  is 'Species group code';
comment on column fs_fiadb.sitetree.sitree
  is 'Site index';
comment on column fs_fiadb.sitetree.sibase
  is 'Site index base age';
comment on column fs_fiadb.sitetree.subp
  is 'Subplot number';
comment on column fs_fiadb.sitetree.azimuth
  is 'Azimuth';
comment on column fs_fiadb.sitetree.dist
  is 'Horizontal distance';
comment on column fs_fiadb.sitetree.method
  is 'NA';
comment on column fs_fiadb.sitetree.sitree_est
  is 'NA';
comment on column fs_fiadb.sitetree.validcd
  is 'NA';
comment on column fs_fiadb.sitetree.created_by
  is 'Created by';
comment on column fs_fiadb.sitetree.created_date
  is 'Created date';
comment on column fs_fiadb.sitetree.created_in_instance
  is 'Created in instance';
comment on column fs_fiadb.sitetree.modified_by
  is 'Modified by';
comment on column fs_fiadb.sitetree.modified_date
  is 'Modified date';
comment on column fs_fiadb.sitetree.modified_in_instance
  is 'Modified in instance';
comment on column fs_fiadb.sitetree.cycle
  is 'Inventory cycle number';
comment on column fs_fiadb.sitetree.subcycle
  is 'Inventory subcycle number';
comment on column fs_fiadb.sitetree.agechkcd_rmrs
  is 'age check code';
comment on column fs_fiadb.sitetree.age_determination_method_pnwrs
  is 'code to record method by which age was determined';
comment on column fs_fiadb.sitetree.cclcd_rmrs
  is 'crown class code';
comment on column fs_fiadb.sitetree.damage_agent_cd1_rmrs
  is 'damage agent code 1';
comment on column fs_fiadb.sitetree.damage_agent_cd2_rmrs
  is 'damage agent code 2';
comment on column fs_fiadb.sitetree.damage_agent_cd3_rmrs
  is 'damage agent code 3';
comment on column fs_fiadb.sitetree.sibase_age_pnwrs
  is 'Site index equation base age, PNWRS';
comment on column fs_fiadb.sitetree.sitetrcd_rmrs
  is 'site tree code';
comment on column fs_fiadb.sitetree.site_age_tree_status_pnwrs
  is 'O for previous site/age trees, N for new trees, I for invalid';
comment on column fs_fiadb.sitetree.site_age_tree_type_pnwrs
  is 'enter the appropriate type of site/age tree being represented by this tree record';
comment on column fs_fiadb.sitetree.site_tree_method_pnwrs
  is 'K for kings method, P for primary (only if required)';
comment on column fs_fiadb.sitetree.sitree_equ_no_pnwrs
  is 'For further documentation see Research Note: PNW-RN-533, December 2002';
comment on column fs_fiadb.sitetree.treeclcd_rmrs
  is 'rmrs tree class code';
comment on column fs_fiadb.sitetree.tree_act_rmrs
  is 'actual tree number';
comment on column fs_fiadb.sitetree.year_age_taken
  is 'The year the tree was aged';
comment on column fs_fiadb.sitetree.sieqn_ref_cd
  is 'Site index equation reference code used by the Forest Vegetation Simulator';
comment on column fs_fiadb.sitetree.sitree_fvs
  is 'Site index for the tree, for the Forest Vegetation Simulator';
comment on column fs_fiadb.sitetree.sibase_fvs
  is 'Site index base age used by the Forest Vegetation Simulator';
comment on column fs_fiadb.sitetree.sieqn_ref_cd_fvs
  is 'NA';
CREATE TABLE fs_fiadb.ref_state_elev
(
statecd              INTEGER NOT NULL,
min_elev             INTEGER,
max_elev             INTEGER,
lowest_point         VARCHAR(30),
highest_point        VARCHAR(30),
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6)
);
comment on column fs_fiadb.ref_state_elev.statecd
  is 'State FIPS code.';
comment on column fs_fiadb.ref_state_elev.min_elev
  is 'Minimum elevation.';
comment on column fs_fiadb.ref_state_elev.max_elev
  is 'Maximum elevation.';
comment on column fs_fiadb.ref_state_elev.lowest_point
  is 'Name of lowest point.';
comment on column fs_fiadb.ref_state_elev.highest_point
  is 'Name of highest point.';
comment on column fs_fiadb.ref_state_elev.created_by
  is 'Created by';
comment on column fs_fiadb.ref_state_elev.created_date
  is 'Created Date';
comment on column fs_fiadb.ref_state_elev.created_in_instance
  is 'Created in Instance';
comment on column fs_fiadb.ref_state_elev.modified_by
  is 'Modified by';
comment on column fs_fiadb.ref_state_elev.modified_date
  is 'Modified Date';
comment on column fs_fiadb.ref_state_elev.modified_in_instance
  is 'Modified in Instance';
CREATE TABLE fs_fiadb.lichen_species_summary
(
cn                   VARCHAR(34) NOT NULL,
invyr                INTEGER NOT NULL,
lichen_region        INTEGER NOT NULL,
lich_sppcd           INTEGER NOT NULL,
measyear             INTEGER NOT NULL,
lichen_region_descr  VARCHAR(80) NOT NULL,
spp_acronym          VARCHAR(6) NOT NULL,
genus                VARCHAR(40) NOT NULL,
sum_abundance        DECIMAL(7,4) NOT NULL,
frequency_pct        INTEGER NOT NULL,
species              VARCHAR(50),
plots_in_region      INTEGER NOT NULL,
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6)
);
comment on column fs_fiadb.lichen_species_summary.cn
  is 'NA';
comment on column fs_fiadb.lichen_species_summary.invyr
  is 'NA';
comment on column fs_fiadb.lichen_species_summary.lichen_region
  is 'NA';
comment on column fs_fiadb.lichen_species_summary.lich_sppcd
  is 'NA';
comment on column fs_fiadb.lichen_species_summary.measyear
  is 'measurement year';
comment on column fs_fiadb.lichen_species_summary.lichen_region_descr
  is 'NA';
comment on column fs_fiadb.lichen_species_summary.spp_acronym
  is 'NA';
comment on column fs_fiadb.lichen_species_summary.genus
  is 'NA';
comment on column fs_fiadb.lichen_species_summary.sum_abundance
  is 'NA';
comment on column fs_fiadb.lichen_species_summary.frequency_pct
  is 'NA';
comment on column fs_fiadb.lichen_species_summary.species
  is 'NA';
comment on column fs_fiadb.lichen_species_summary.plots_in_region
  is 'NA';
comment on column fs_fiadb.lichen_species_summary.created_by
  is 'NA';
comment on column fs_fiadb.lichen_species_summary.created_date
  is 'NA';
comment on column fs_fiadb.lichen_species_summary.created_in_instance
  is 'NA';
comment on column fs_fiadb.lichen_species_summary.modified_by
  is 'NA';
comment on column fs_fiadb.lichen_species_summary.modified_date
  is 'NA';
comment on column fs_fiadb.lichen_species_summary.modified_in_instance
  is 'NA';
CREATE TABLE fs_fiadb.county
(
statecd              INTEGER NOT NULL,
unitcd               INTEGER NOT NULL,
countycd             INTEGER NOT NULL,
countynm             VARCHAR(50) NOT NULL,
cn                   VARCHAR(34) NOT NULL,
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6)
);
comment on column fs_fiadb.county.statecd
  is 'State code';
comment on column fs_fiadb.county.unitcd
  is 'Survey unit code';
comment on column fs_fiadb.county.countycd
  is 'County code';
comment on column fs_fiadb.county.countynm
  is 'County name';
comment on column fs_fiadb.county.cn
  is 'Unique index';
comment on column fs_fiadb.county.created_by
  is 'Created by';
comment on column fs_fiadb.county.created_date
  is 'Created date';
comment on column fs_fiadb.county.created_in_instance
  is 'Created in instance';
comment on column fs_fiadb.county.modified_by
  is 'Modified by';
comment on column fs_fiadb.county.modified_date
  is 'Modified date';
comment on column fs_fiadb.county.modified_in_instance
  is 'Modified in instance';
CREATE TABLE fs_fiadb.survey
(
cn                   VARCHAR(34) NOT NULL,
invyr                INTEGER NOT NULL,
p3_ozone_ind         VARCHAR(1) NOT NULL,
statecd              INTEGER NOT NULL,
stateab              VARCHAR(2) NOT NULL,
statenm              VARCHAR(40) NOT NULL,
rscd                 INTEGER,
ann_inventory        VARCHAR(1),
notes                VARCHAR(2000),
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6),
cycle                INTEGER,
subcycle             INTEGER,
prj_cn               VARCHAR(34) NOT NULL
);
comment on column fs_fiadb.survey.cn
  is 'Unique index';
comment on column fs_fiadb.survey.invyr
  is 'Inventory year';
comment on column fs_fiadb.survey.p3_ozone_ind
  is 'P3 OZONE INDICATOR - VALUES ARE Y AND N.  IF Y, THEN SURVEY IS FOR A P3 OZONE PLOT.  IF N, THEN SURVEY IS FOR A P2;P3 PLOT.';
comment on column fs_fiadb.survey.statecd
  is 'State code';
comment on column fs_fiadb.survey.stateab
  is 'State abbreviation';
comment on column fs_fiadb.survey.statenm
  is 'State name';
comment on column fs_fiadb.survey.rscd
  is 'Research station code';
comment on column fs_fiadb.survey.ann_inventory
  is 'Annual inventory';
comment on column fs_fiadb.survey.notes
  is 'Notes (about the inventory)';
comment on column fs_fiadb.survey.created_by
  is 'Created by';
comment on column fs_fiadb.survey.created_date
  is 'Created date';
comment on column fs_fiadb.survey.created_in_instance
  is 'Created in instance';
comment on column fs_fiadb.survey.modified_by
  is 'Modified by';
comment on column fs_fiadb.survey.modified_date
  is 'Modified date';
comment on column fs_fiadb.survey.modified_in_instance
  is 'Modified in instance';
comment on column fs_fiadb.survey.cycle
  is 'Inventory cycle number';
comment on column fs_fiadb.survey.subcycle
  is 'Inventory subcycle number';
comment on column fs_fiadb.survey.prj_cn
  is 'Foreign key to project';
CREATE TABLE fs_fiadb.ref_habtyp_publication
(
cn                   VARCHAR(34) NOT NULL,
pub_cd               VARCHAR(10) NOT NULL,
title                VARCHAR(200) NOT NULL,
author               VARCHAR(200) NOT NULL,
type                 VARCHAR(10) NOT NULL,
valid                VARCHAR(1) NOT NULL,
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6)
);
comment on column fs_fiadb.ref_habtyp_publication.cn
  is 'Sequence number (surrogate primary key';
comment on column fs_fiadb.ref_habtyp_publication.pub_cd
  is 'NA';
comment on column fs_fiadb.ref_habtyp_publication.title
  is 'NA';
comment on column fs_fiadb.ref_habtyp_publication.author
  is 'NA';
comment on column fs_fiadb.ref_habtyp_publication.type
  is 'NA';
comment on column fs_fiadb.ref_habtyp_publication.valid
  is 'NA';
comment on column fs_fiadb.ref_habtyp_publication.created_by
  is 'Created by';
comment on column fs_fiadb.ref_habtyp_publication.created_date
  is 'Created Date ';
comment on column fs_fiadb.ref_habtyp_publication.created_in_instance
  is 'Created in Instance ';
comment on column fs_fiadb.ref_habtyp_publication.modified_by
  is 'Modified by ';
comment on column fs_fiadb.ref_habtyp_publication.modified_date
  is 'Modified Date';
comment on column fs_fiadb.ref_habtyp_publication.modified_in_instance
  is 'Modified in Instance ';
CREATE TABLE fs_fiadb.evalidator_log
(
session_id      VARCHAR(50),
session_date    TIMESTAMP(0),
retrieval_type  VARCHAR(12),
latitude        DOUBLE PRECISION,
longitude       DOUBLE PRECISION,
radius          DOUBLE PRECISION,
geographic_area VARCHAR(2000),
attribute       VARCHAR(200),
filter          VARCHAR(2000),
page_name       VARCHAR(200),
row_name        VARCHAR(200),
column_name     VARCHAR(200),
mapped          VARCHAR(1),
remote_address  VARCHAR(15),
calc_se         VARCHAR(50),
page_time       VARCHAR(200),
row_time        VARCHAR(200),
col_time        VARCHAR(200)
);
comment on column fs_fiadb.evalidator_log.session_id
  is 'Unique identifier for EVALIDator session';
comment on column fs_fiadb.evalidator_log.session_date
  is 'Date and time of retrieval';
comment on column fs_fiadb.evalidator_log.retrieval_type
  is 'Always "evalid"';
comment on column fs_fiadb.evalidator_log.latitude
  is 'Fuzzed and swapped lat for center of circular retrievals';
comment on column fs_fiadb.evalidator_log.longitude
  is 'Fuzzed and swapped lon for center of circular retrievals';
comment on column fs_fiadb.evalidator_log.radius
  is 'Radius in miles for circular retrievals';
comment on column fs_fiadb.evalidator_log.geographic_area
  is 'States and evalids included in retrieval';
comment on column fs_fiadb.evalidator_log.attribute
  is 'Type of estimate as described by REF_ATTRIBUTE_ACCESS1.ATTRIBUTE_DESCR';
comment on column fs_fiadb.evalidator_log.filter
  is 'User defined SQL where clause that restricts the data included in the retrieval';
comment on column fs_fiadb.evalidator_log.page_name
  is 'Classification variable used for pages of the report as described in FIM_401_VARIABLE_LIBRARY.LABEL_VAR';
comment on column fs_fiadb.evalidator_log.row_name
  is 'Classification variable used for rows of the report as described in FIM_401_VARIABLE_LIBRARY.LABEL_VAR';
comment on column fs_fiadb.evalidator_log.column_name
  is 'Classification variable used for columns of the report as described in FIM_401_VARIABLE_LIBRARY.LABEL_VAR';
comment on column fs_fiadb.evalidator_log.mapped
  is 'Always null';
comment on column fs_fiadb.evalidator_log.remote_address
  is 'Users Ipaddress';
comment on column fs_fiadb.evalidator_log.calc_se
  is 'At one time user could specify whether they wanted sampling error estimates. No longer an option.';
comment on column fs_fiadb.evalidator_log.page_time
  is 'NA';
comment on column fs_fiadb.evalidator_log.row_time
  is 'NA';
comment on column fs_fiadb.evalidator_log.col_time
  is 'NA';
CREATE TABLE fs_fiadb.subp_cond_chng_mtrx
(
cn                   VARCHAR(34) NOT NULL,
statecd              INTEGER NOT NULL,
subp                 INTEGER NOT NULL,
subptyp              INTEGER,
plt_cn               VARCHAR(34) NOT NULL,
condid               INTEGER NOT NULL,
prev_plt_cn          VARCHAR(34) NOT NULL,
prevcond             INTEGER NOT NULL,
subptyp_prop_chng    DECIMAL(5,4),
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6)
);
comment on column fs_fiadb.subp_cond_chng_mtrx.cn
  is 'Sequence number (surrogate primary key)';
comment on column fs_fiadb.subp_cond_chng_mtrx.statecd
  is 'State Code ';
comment on column fs_fiadb.subp_cond_chng_mtrx.subp
  is 'Subplot number';
comment on column fs_fiadb.subp_cond_chng_mtrx.subptyp
  is 'Subplot type';
comment on column fs_fiadb.subp_cond_chng_mtrx.plt_cn
  is 'Foreign key to Time 2 Plot record';
comment on column fs_fiadb.subp_cond_chng_mtrx.condid
  is 'Condition number for Time 2 Plot record';
comment on column fs_fiadb.subp_cond_chng_mtrx.prev_plt_cn
  is 'Foreign key to Time 1 Plot record';
comment on column fs_fiadb.subp_cond_chng_mtrx.prevcond
  is 'Previous condition number for Time 1 Plot record';
comment on column fs_fiadb.subp_cond_chng_mtrx.subptyp_prop_chng
  is ''Percent change of subplot condition between previous to currrent inventory';
comment on column fs_fiadb.subp_cond_chng_mtrx.created_by
  is 'Created by';
comment on column fs_fiadb.subp_cond_chng_mtrx.created_date
  is 'Created Date ';
comment on column fs_fiadb.subp_cond_chng_mtrx.created_in_instance
  is 'Created in Instance ';
comment on column fs_fiadb.subp_cond_chng_mtrx.modified_by
  is 'Modified by ';
comment on column fs_fiadb.subp_cond_chng_mtrx.modified_date
  is 'Modified Date';
comment on column fs_fiadb.subp_cond_chng_mtrx.modified_in_instance
  is 'Modified in Instance ';
CREATE TABLE fs_fiadb.subplot
(
cn                            VARCHAR(34) NOT NULL,
plt_cn                        VARCHAR(34) NOT NULL,
prev_sbp_cn                   VARCHAR(34),
invyr                         INTEGER NOT NULL,
statecd                       INTEGER NOT NULL,
unitcd                        INTEGER NOT NULL,
countycd                      INTEGER NOT NULL,
plot                          INTEGER NOT NULL,
subp                          INTEGER NOT NULL,
subp_status_cd                INTEGER,
point_nonsample_reasn_cd      INTEGER,
micrcond                      INTEGER,
subpcond                      INTEGER,
macrcond                      INTEGER,
condlist                      INTEGER,
slope                         INTEGER,
aspect                        INTEGER,
waterdep                      DECIMAL(2,1),
p2a_grm_flg                   VARCHAR(1),
created_by                    VARCHAR(30),
created_date                  TIMESTAMP(0),
created_in_instance           VARCHAR(6),
modified_by                   VARCHAR(30),
modified_date                 TIMESTAMP(0),
modified_in_instance          VARCHAR(6),
cycle                         INTEGER,
subcycle                      INTEGER,
root_dis_sev_cd_pnwrs         INTEGER,
nf_subp_status_cd             INTEGER,
nf_subp_nonsample_reasn_cd    INTEGER,
p2veg_subp_status_cd          INTEGER,
p2veg_subp_nonsample_reasn_cd INTEGER,
invasive_subp_status_cd       INTEGER,
invasive_nonsample_reasn_cd   INTEGER,
crown_closure_me_ners         INTEGER,
ground_tran_pts_bare_rmrs     INTEGER,
ground_tran_pts_cryp_rmrs     INTEGER,
ground_tran_pts_dev_rmrs      INTEGER,
ground_tran_pts_lichen_rmrs   INTEGER,
ground_tran_pts_litter_rmrs   INTEGER,
ground_tran_pts_moss_rmrs     INTEGER,
ground_tran_pts_notsamp_rmrs  INTEGER,
ground_tran_pts_other_rmrs    INTEGER,
ground_tran_pts_peis_rmrs     INTEGER,
ground_tran_pts_road_rmrs     INTEGER,
ground_tran_pts_rock_rmrs     INTEGER,
ground_tran_pts_tris_rmrs     INTEGER,
ground_tran_pts_veg_rmrs      INTEGER,
ground_tran_pts_water_rmrs    INTEGER,
ground_tran_pts_wood_rmrs     INTEGER,
prev_statuscd_rmrs            INTEGER,
rootsevcd_rmrs                INTEGER
);
comment on column fs_fiadb.subplot.cn
  is 'Unique index';
comment on column fs_fiadb.subplot.plt_cn
  is 'Unique index';
comment on column fs_fiadb.subplot.prev_sbp_cn
  is 'Unique index';
comment on column fs_fiadb.subplot.invyr
  is 'NA';
comment on column fs_fiadb.subplot.statecd
  is 'State code';
comment on column fs_fiadb.subplot.unitcd
  is 'Survey unit code';
comment on column fs_fiadb.subplot.countycd
  is 'County code';
comment on column fs_fiadb.subplot.plot
  is 'Plot number';
comment on column fs_fiadb.subplot.subp
  is 'Subplot number';
comment on column fs_fiadb.subplot.subp_status_cd
  is 'NA';
comment on column fs_fiadb.subplot.point_nonsample_reasn_cd
  is 'NA';
comment on column fs_fiadb.subplot.micrcond
  is 'Microplot center condition';
comment on column fs_fiadb.subplot.subpcond
  is 'Subplot center condition';
comment on column fs_fiadb.subplot.macrcond
  is 'Macroplot center condition';
comment on column fs_fiadb.subplot.condlist
  is 'SUBPLOT;ANNULAR PLOT CONDITION LIST (CORE OPTIONAL)This is a listing of all condition classes located within the 24.0-ft radius around the subplot center.  In regions measuring the CORE OPTIONAL annular plot, this is a listing of all condition classes located within the 58.9-ft radius around the annular plot center.   A maximum of four conditions is permitted at any individual subplot ; annular plot.  If a condition class has already been defined at a previously completed subplot ; annular plot, use the same condition class number whenever that condition is encountered.  Define new condition classes as they are encountered.  If more than one condition class is listed here, boundary data are required.  If only one condition class is listed, this condition is automatically assigned to the subplot center and microplot center.  If less than four condition classes occur on this subplot, complete the remainder of this field with zeros.  For example, if condition 1 is the only condition class on a subplot, record 1000.When collected:  All forested Phase 3 plots Field width:  4 digitsTolerance: No errorsMQO:  At least 99% of the timeValues:  1000 to 9876';
comment on column fs_fiadb.subplot.slope
  is 'Subplot slope';
comment on column fs_fiadb.subplot.aspect
  is 'Subplot aspect';
comment on column fs_fiadb.subplot.waterdep
  is 'Water or snow depth';
comment on column fs_fiadb.subplot.p2a_grm_flg
  is 'Periodic to annual growth, removal, and mortality flag. The flag is set to Y for those subplots that are needed for estimation and otherwise is left blank (null).';
comment on column fs_fiadb.subplot.created_by
  is 'Created by';
comment on column fs_fiadb.subplot.created_date
  is 'Created date';
comment on column fs_fiadb.subplot.created_in_instance
  is 'Created in instance';
comment on column fs_fiadb.subplot.modified_by
  is 'Modified by';
comment on column fs_fiadb.subplot.modified_date
  is 'Modified date';
comment on column fs_fiadb.subplot.modified_in_instance
  is 'Modified in instance';
comment on column fs_fiadb.subplot.cycle
  is 'Inventory cycle number';
comment on column fs_fiadb.subplot.subcycle
  is 'Inventory subcycle number';
comment on column fs_fiadb.subplot.root_dis_sev_cd_pnwrs
  is 'NA';
comment on column fs_fiadb.subplot.nf_subp_status_cd
  is 'Nonforest subplot/macroplot status code';
comment on column fs_fiadb.subplot.nf_subp_nonsample_reasn_cd
  is 'Nonforest subplot/macroplot nonsampled reason code';
comment on column fs_fiadb.subplot.p2veg_subp_status_cd
  is 'P2 vegetation subplot status code';
comment on column fs_fiadb.subplot.p2veg_subp_nonsample_reasn_cd
  is 'P2 Vegetation subplot nonsampled reason code';
comment on column fs_fiadb.subplot.invasive_subp_status_cd
  is 'Invasive subplot status code';
comment on column fs_fiadb.subplot.invasive_nonsample_reasn_cd
  is 'Invasive subplot nonsampled reason code';
comment on column fs_fiadb.subplot.crown_closure_me_ners
  is 'crown closure (me only)';
comment on column fs_fiadb.subplot.ground_tran_pts_bare_rmrs
  is 'ground transect points on bare ground';
comment on column fs_fiadb.subplot.ground_tran_pts_cryp_rmrs
  is 'ground transect points on cryptogamic crust';
comment on column fs_fiadb.subplot.ground_tran_pts_dev_rmrs
  is 'ground transect points on developed land';
comment on column fs_fiadb.subplot.ground_tran_pts_lichen_rmrs
  is 'ground transect points on lichen';
comment on column fs_fiadb.subplot.ground_tran_pts_litter_rmrs
  is 'ground transect points on litter';
comment on column fs_fiadb.subplot.ground_tran_pts_moss_rmrs
  is 'ground transect points on moss';
comment on column fs_fiadb.subplot.ground_tran_pts_notsamp_rmrs
  is 'ground transect points not sampled';
comment on column fs_fiadb.subplot.ground_tran_pts_other_rmrs
  is 'ground transect points on other';
comment on column fs_fiadb.subplot.ground_tran_pts_peis_rmrs
  is 'ground transect points on permanent ice and snow';
comment on column fs_fiadb.subplot.ground_tran_pts_road_rmrs
  is 'ground transect points on road';
comment on column fs_fiadb.subplot.ground_tran_pts_rock_rmrs
  is 'ground transect points on rock';
comment on column fs_fiadb.subplot.ground_tran_pts_tris_rmrs
  is 'ground transect points on transient ice and snow';
comment on column fs_fiadb.subplot.ground_tran_pts_veg_rmrs
  is 'ground transect points on basal vegetation';
comment on column fs_fiadb.subplot.ground_tran_pts_water_rmrs
  is 'ground transect points on water';
comment on column fs_fiadb.subplot.ground_tran_pts_wood_rmrs
  is 'ground transect points on wood';
comment on column fs_fiadb.subplot.prev_statuscd_rmrs
  is 'previous subplot status';
comment on column fs_fiadb.subplot.rootsevcd_rmrs
  is 'root disease severity rating code';
CREATE TABLE fs_fiadb.lichen_visit
(
cn                   VARCHAR(34) NOT NULL,
plt_cn               VARCHAR(34) NOT NULL,
invyr                INTEGER NOT NULL,
statecd              INTEGER NOT NULL,
countycd             INTEGER NOT NULL,
plot                 INTEGER NOT NULL,
measday              INTEGER,
measmon              INTEGER,
measyear             INTEGER NOT NULL,
lichen_statcd        INTEGER NOT NULL,
liprojcd             INTEGER,
smplstrt             INTEGER,
smplstp              INTEGER,
smpltime             INTEGER,
sftwdpct             INTEGER,
hrdwdpct             INTEGER,
shrubpct             INTEGER,
gappct               INTEGER,
gaprcnt              INTEGER,
tallshrb             INTEGER,
ftrcd1               DOUBLE PRECISION,
ftrcd2               DOUBLE PRECISION,
ftrcd3               DOUBLE PRECISION,
ftrcd4               DOUBLE PRECISION,
issuecd1             DOUBLE PRECISION,
issuecd2             DOUBLE PRECISION,
issuecd3             DOUBLE PRECISION,
issuecd4             DOUBLE PRECISION,
szclscd1             INTEGER,
szclscd2             INTEGER,
szclscd3             INTEGER,
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6),
qa_status            INTEGER
);
comment on column fs_fiadb.lichen_visit.cn
  is 'Unique Index';
comment on column fs_fiadb.lichen_visit.plt_cn
  is 'Foreign Key to NIMS_PLOT';
comment on column fs_fiadb.lichen_visit.invyr
  is 'NA';
comment on column fs_fiadb.lichen_visit.statecd
  is 'state code';
comment on column fs_fiadb.lichen_visit.countycd
  is 'County Code';
comment on column fs_fiadb.lichen_visit.plot
  is 'P2 Plot Number';
comment on column fs_fiadb.lichen_visit.measday
  is 'Measurement Day';
comment on column fs_fiadb.lichen_visit.measmon
  is 'Measurement Month';
comment on column fs_fiadb.lichen_visit.measyear
  is 'Measurement Year';
comment on column fs_fiadb.lichen_visit.lichen_statcd
  is 'Lichens Collected';
comment on column fs_fiadb.lichen_visit.liprojcd
  is 'Lichen Project Code';
comment on column fs_fiadb.lichen_visit.smplstrt
  is 'Sample Start Time';
comment on column fs_fiadb.lichen_visit.smplstp
  is 'Sample Stop Time';
comment on column fs_fiadb.lichen_visit.smpltime
  is 'Total Sample Time';
comment on column fs_fiadb.lichen_visit.sftwdpct
  is 'Percent Conifer';
comment on column fs_fiadb.lichen_visit.hrdwdpct
  is 'Percent Hardwood';
comment on column fs_fiadb.lichen_visit.shrubpct
  is 'Percent Shrub';
comment on column fs_fiadb.lichen_visit.gappct
  is 'Gap Percent';
comment on column fs_fiadb.lichen_visit.gaprcnt
  is 'Gap Recent';
comment on column fs_fiadb.lichen_visit.tallshrb
  is 'Tall Shrubs';
comment on column fs_fiadb.lichen_visit.ftrcd1
  is 'Features (1-4)';
comment on column fs_fiadb.lichen_visit.ftrcd2
  is 'Features (1-4)';
comment on column fs_fiadb.lichen_visit.ftrcd3
  is 'Features (1-4)';
comment on column fs_fiadb.lichen_visit.ftrcd4
  is 'Features (1-4)';
comment on column fs_fiadb.lichen_visit.issuecd1
  is 'Issues (1-4)';
comment on column fs_fiadb.lichen_visit.issuecd2
  is 'Issues (1-4)';
comment on column fs_fiadb.lichen_visit.issuecd3
  is 'Issues (1-4)';
comment on column fs_fiadb.lichen_visit.issuecd4
  is 'Issues (1-4)';
comment on column fs_fiadb.lichen_visit.szclscd1
  is 'Size Class Code';
comment on column fs_fiadb.lichen_visit.szclscd2
  is 'Size Class Code';
comment on column fs_fiadb.lichen_visit.szclscd3
  is 'Size Class Code';
comment on column fs_fiadb.lichen_visit.created_by
  is 'Created by';
comment on column fs_fiadb.lichen_visit.created_date
  is 'Created Date';
comment on column fs_fiadb.lichen_visit.created_in_instance
  is 'Created in Instance';
comment on column fs_fiadb.lichen_visit.modified_by
  is 'Modified by';
comment on column fs_fiadb.lichen_visit.modified_date
  is 'Modified Date';
comment on column fs_fiadb.lichen_visit.modified_in_instance
  is 'Modified in Instance';
comment on column fs_fiadb.lichen_visit.qa_status
  is 'qa status code';
CREATE TABLE fs_fiadb.ozone_species_summary
(
cn                   VARCHAR(34) NOT NULL,
invyr                INTEGER NOT NULL,
statecd              INTEGER NOT NULL,
countycd             INTEGER NOT NULL,
o3plot               DOUBLE PRECISION NOT NULL,
field_id             INTEGER NOT NULL,
split_plotid         INTEGER NOT NULL,
ground_loc_cd        INTEGER NOT NULL,
measyear             INTEGER NOT NULL,
biospcd              DOUBLE PRECISION NOT NULL,
amnt_max             DOUBLE PRECISION NOT NULL,
amnt_min             DOUBLE PRECISION NOT NULL,
amnt_mean            DOUBLE PRECISION NOT NULL,
svrty_max            DOUBLE PRECISION NOT NULL,
svrty_min            DOUBLE PRECISION NOT NULL,
svrty_mean           DOUBLE PRECISION NOT NULL,
plant_inj_cnt        DOUBLE PRECISION NOT NULL,
plant_eval_cnt       DOUBLE PRECISION NOT NULL,
plant_ratio          DOUBLE PRECISION NOT NULL,
biospcd_sum          DOUBLE PRECISION NOT NULL,
biospcd_index        DOUBLE PRECISION NOT NULL,
elev                 INTEGER,
pltsize              DOUBLE PRECISION,
aspect               INTEGER,
terrpos              DOUBLE PRECISION,
soildpth             DOUBLE PRECISION,
soildrn              DOUBLE PRECISION,
plotwet              DOUBLE PRECISION,
pltdstrb             DOUBLE PRECISION,
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6)
);
comment on column fs_fiadb.ozone_species_summary.cn
  is 'NA';
comment on column fs_fiadb.ozone_species_summary.invyr
  is 'NA';
comment on column fs_fiadb.ozone_species_summary.statecd
  is 'NA';
comment on column fs_fiadb.ozone_species_summary.countycd
  is 'NA';
comment on column fs_fiadb.ozone_species_summary.o3plot
  is 'NA';
comment on column fs_fiadb.ozone_species_summary.field_id
  is 'the 7-digit number used by the field crew for all current and active biosites';
comment on column fs_fiadb.ozone_species_summary.split_plotid
  is 'NA';
comment on column fs_fiadb.ozone_species_summary.ground_loc_cd
  is 'GROUND_LOC_CD = 1 means the GPS values stayed the same from one year to the next.  GROUND_LOC_CD = 2 means the biosite has been moved more than 3 miles and has a second set of GPS values.  GROUND_LOC_CD = 3 means the biosite has moved more than 3 miles for a third time and has a third set of GPS values.';
comment on column fs_fiadb.ozone_species_summary.measyear
  is 'NA';
comment on column fs_fiadb.ozone_species_summary.biospcd
  is 'NA';
comment on column fs_fiadb.ozone_species_summary.amnt_max
  is 'NA';
comment on column fs_fiadb.ozone_species_summary.amnt_min
  is 'NA';
comment on column fs_fiadb.ozone_species_summary.amnt_mean
  is 'NA';
comment on column fs_fiadb.ozone_species_summary.svrty_max
  is 'NA';
comment on column fs_fiadb.ozone_species_summary.svrty_min
  is 'NA';
comment on column fs_fiadb.ozone_species_summary.svrty_mean
  is 'NA';
comment on column fs_fiadb.ozone_species_summary.plant_inj_cnt
  is 'NA';
comment on column fs_fiadb.ozone_species_summary.plant_eval_cnt
  is 'NA';
comment on column fs_fiadb.ozone_species_summary.plant_ratio
  is 'NA';
comment on column fs_fiadb.ozone_species_summary.biospcd_sum
  is 'NA';
comment on column fs_fiadb.ozone_species_summary.biospcd_index
  is 'NA';
comment on column fs_fiadb.ozone_species_summary.elev
  is 'NA';
comment on column fs_fiadb.ozone_species_summary.pltsize
  is 'NA';
comment on column fs_fiadb.ozone_species_summary.aspect
  is 'NA';
comment on column fs_fiadb.ozone_species_summary.terrpos
  is 'NA';
comment on column fs_fiadb.ozone_species_summary.soildpth
  is 'NA';
comment on column fs_fiadb.ozone_species_summary.soildrn
  is 'NA';
comment on column fs_fiadb.ozone_species_summary.plotwet
  is 'NA';
comment on column fs_fiadb.ozone_species_summary.pltdstrb
  is 'NA';
comment on column fs_fiadb.ozone_species_summary.created_by
  is 'NA';
comment on column fs_fiadb.ozone_species_summary.created_date
  is 'NA';
comment on column fs_fiadb.ozone_species_summary.created_in_instance
  is 'NA';
comment on column fs_fiadb.ozone_species_summary.modified_by
  is 'NA';
comment on column fs_fiadb.ozone_species_summary.modified_date
  is 'NA';
comment on column fs_fiadb.ozone_species_summary.modified_in_instance
  is 'NA';
CREATE TABLE fs_fiadb.pop_estn_unit
(
cn                   VARCHAR(34) NOT NULL,
eval_cn              VARCHAR(34) NOT NULL,
rscd                 INTEGER NOT NULL,
evalid               INTEGER NOT NULL,
estn_unit            INTEGER NOT NULL,
estn_unit_descr      VARCHAR(255),
statecd              INTEGER NOT NULL,
arealand_eu          DECIMAL(12,2),
areatot_eu           DECIMAL(12,2),
area_used            DECIMAL(12,2),
area_source          VARCHAR(50),
p1pntcnt_eu          INTEGER,
p1source             VARCHAR(50),
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6)
);
comment on column fs_fiadb.pop_estn_unit.cn
  is 'NA';
comment on column fs_fiadb.pop_estn_unit.eval_cn
  is 'NA';
comment on column fs_fiadb.pop_estn_unit.rscd
  is 'Region or Station Code';
comment on column fs_fiadb.pop_estn_unit.evalid
  is 'Evaluation ID';
comment on column fs_fiadb.pop_estn_unit.estn_unit
  is 'Estimation unit';
comment on column fs_fiadb.pop_estn_unit.estn_unit_descr
  is 'Estimation unit description';
comment on column fs_fiadb.pop_estn_unit.statecd
  is 'State Code of primary state being evaluated';
comment on column fs_fiadb.pop_estn_unit.arealand_eu
  is 'Land area within the estimation unit';
comment on column fs_fiadb.pop_estn_unit.areatot_eu
  is 'Total area within the estimation unit';
comment on column fs_fiadb.pop_estn_unit.area_used
  is 'AREA USED TO CALCULATE EXPANSION FACTORS';
comment on column fs_fiadb.pop_estn_unit.area_source
  is 'Source of area figures usually Census Bureau or from pixel counts';
comment on column fs_fiadb.pop_estn_unit.p1pntcnt_eu
  is 'total number of pixels in the estimation unit';
comment on column fs_fiadb.pop_estn_unit.p1source
  is 'Phase 1 source';
comment on column fs_fiadb.pop_estn_unit.created_by
  is 'Created by';
comment on column fs_fiadb.pop_estn_unit.created_date
  is 'Created date';
comment on column fs_fiadb.pop_estn_unit.created_in_instance
  is 'Created in instance';
comment on column fs_fiadb.pop_estn_unit.modified_by
  is 'Modified by';
comment on column fs_fiadb.pop_estn_unit.modified_date
  is 'Modified date';
comment on column fs_fiadb.pop_estn_unit.modified_in_instance
  is 'Modified in instance';
CREATE TABLE fs_fiadb.ref_nvcs_level_1_codes
(
cn                    VARCHAR(34) NOT NULL,
primary_class         VARCHAR(8) NOT NULL,
hierarchy_level       INTEGER NOT NULL,
hierarchy_level_label VARCHAR(30) NOT NULL,
nvcs_code             VARCHAR(20) NOT NULL,
meaning               VARCHAR(100) NOT NULL,
note                  VARCHAR(1000),
created_by            VARCHAR(30),
created_date          TIMESTAMP(0),
created_in_instance   VARCHAR(6),
modified_by           VARCHAR(30),
modified_date         TIMESTAMP(0),
modified_in_instance  VARCHAR(6)
);
comment on column fs_fiadb.ref_nvcs_level_1_codes.cn
  is 'Unique record identifier for the current hierarchy record';
comment on column fs_fiadb.ref_nvcs_level_1_codes.primary_class
  is 'The primary classification of the algorithm [NATURAL|CULTURAL]';
comment on column fs_fiadb.ref_nvcs_level_1_codes.hierarchy_level
  is 'An integer value indicating at what level in the National Vegetation Classification System hierarchy the current record exists';
comment on column fs_fiadb.ref_nvcs_level_1_codes.hierarchy_level_label
  is 'A label assigned to the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_level_1_codes.nvcs_code
  is 'A code representing the classification at the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_level_1_codes.meaning
  is 'The meaning of the code at the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_level_1_codes.note
  is 'Any remark relevant to the hierarchy structure record.';
comment on column fs_fiadb.ref_nvcs_level_1_codes.created_by
  is 'Created by';
comment on column fs_fiadb.ref_nvcs_level_1_codes.created_date
  is 'Created date';
comment on column fs_fiadb.ref_nvcs_level_1_codes.created_in_instance
  is 'Created in instance';
comment on column fs_fiadb.ref_nvcs_level_1_codes.modified_by
  is 'Modified by';
comment on column fs_fiadb.ref_nvcs_level_1_codes.modified_date
  is 'Modified date';
comment on column fs_fiadb.ref_nvcs_level_1_codes.modified_in_instance
  is 'Modified in instance';
CREATE TABLE fs_fiadb.ref_nvcs_level_2_codes
(
cn                    VARCHAR(34) NOT NULL,
primary_class         VARCHAR(8) NOT NULL,
hierarchy_level       INTEGER NOT NULL,
hierarchy_level_label VARCHAR(30) NOT NULL,
nvcs_code             VARCHAR(20) NOT NULL,
meaning               VARCHAR(100) NOT NULL,
note                  VARCHAR(1000),
created_by            VARCHAR(30),
created_date          TIMESTAMP(0),
created_in_instance   VARCHAR(6),
modified_by           VARCHAR(30),
modified_date         TIMESTAMP(0),
modified_in_instance  VARCHAR(6)
);
comment on column fs_fiadb.ref_nvcs_level_2_codes.cn
  is 'Unique record identifier for the current hierarchy record';
comment on column fs_fiadb.ref_nvcs_level_2_codes.primary_class
  is 'The primary classification of the algorithm [NATURAL|CULTURAL]';
comment on column fs_fiadb.ref_nvcs_level_2_codes.hierarchy_level
  is 'An integer value indicating at what level in the National Vegetation Classification System hierarchy the current record exists';
comment on column fs_fiadb.ref_nvcs_level_2_codes.hierarchy_level_label
  is 'A label assigned to the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_level_2_codes.nvcs_code
  is 'A code representing the classification at the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_level_2_codes.meaning
  is 'The meaning of the code at the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_level_2_codes.note
  is 'Any remark relevant to the hierarchy structure record.';
comment on column fs_fiadb.ref_nvcs_level_2_codes.created_by
  is 'Created by';
comment on column fs_fiadb.ref_nvcs_level_2_codes.created_date
  is 'Created date';
comment on column fs_fiadb.ref_nvcs_level_2_codes.created_in_instance
  is 'Created in instance';
comment on column fs_fiadb.ref_nvcs_level_2_codes.modified_by
  is 'Modified by';
comment on column fs_fiadb.ref_nvcs_level_2_codes.modified_date
  is 'Modified date';
comment on column fs_fiadb.ref_nvcs_level_2_codes.modified_in_instance
  is 'Modified in instance';
CREATE TABLE fs_fiadb.ref_nvcs_level_3_codes
(
cn                    VARCHAR(34) NOT NULL,
primary_class         VARCHAR(8) NOT NULL,
hierarchy_level       INTEGER NOT NULL,
hierarchy_level_label VARCHAR(30) NOT NULL,
nvcs_code             VARCHAR(20) NOT NULL,
meaning               VARCHAR(100) NOT NULL,
note                  VARCHAR(1000),
created_by            VARCHAR(30),
created_date          TIMESTAMP(0),
created_in_instance   VARCHAR(6),
modified_by           VARCHAR(30),
modified_date         TIMESTAMP(0),
modified_in_instance  VARCHAR(6)
);
comment on column fs_fiadb.ref_nvcs_level_3_codes.cn
  is 'Unique record identifier for the current hierarchy record';
comment on column fs_fiadb.ref_nvcs_level_3_codes.primary_class
  is 'The primary classification of the algorithm [NATURAL|CULTURAL]';
comment on column fs_fiadb.ref_nvcs_level_3_codes.hierarchy_level
  is 'An integer value indicating at what level in the National Vegetation Classification System hierarchy the current record exists';
comment on column fs_fiadb.ref_nvcs_level_3_codes.hierarchy_level_label
  is 'A label assigned to the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_level_3_codes.nvcs_code
  is 'A code representing the classification at the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_level_3_codes.meaning
  is 'The meaning of the code at the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_level_3_codes.note
  is 'Any remark relevant to the hierarchy structure record.';
comment on column fs_fiadb.ref_nvcs_level_3_codes.created_by
  is 'Created by';
comment on column fs_fiadb.ref_nvcs_level_3_codes.created_date
  is 'Created date';
comment on column fs_fiadb.ref_nvcs_level_3_codes.created_in_instance
  is 'Created in instance';
comment on column fs_fiadb.ref_nvcs_level_3_codes.modified_by
  is 'Modified by';
comment on column fs_fiadb.ref_nvcs_level_3_codes.modified_date
  is 'Modified date';
comment on column fs_fiadb.ref_nvcs_level_3_codes.modified_in_instance
  is 'Modified in instance';
CREATE TABLE fs_fiadb.ref_nvcs_level_4_codes
(
cn                    VARCHAR(34) NOT NULL,
primary_class         VARCHAR(8) NOT NULL,
hierarchy_level       INTEGER NOT NULL,
hierarchy_level_label VARCHAR(30) NOT NULL,
nvcs_code             VARCHAR(20) NOT NULL,
meaning               VARCHAR(100) NOT NULL,
note                  VARCHAR(1000),
created_by            VARCHAR(30),
created_date          TIMESTAMP(0),
created_in_instance   VARCHAR(6),
modified_by           VARCHAR(30),
modified_date         TIMESTAMP(0),
modified_in_instance  VARCHAR(6)
);
comment on column fs_fiadb.ref_nvcs_level_4_codes.cn
  is 'Unique record identifier for the current hierarchy record';
comment on column fs_fiadb.ref_nvcs_level_4_codes.primary_class
  is 'The primary classification of the algorithm [NATURAL|CULTURAL]';
comment on column fs_fiadb.ref_nvcs_level_4_codes.hierarchy_level
  is 'An integer value indicating at what level in the National Vegetation Classification System hierarchy the current record exists';
comment on column fs_fiadb.ref_nvcs_level_4_codes.hierarchy_level_label
  is 'A label assigned to the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_level_4_codes.nvcs_code
  is 'A code representing the classification at the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_level_4_codes.meaning
  is 'The meaning of the code at the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_level_4_codes.note
  is 'Any remark relevant to the hierarchy structure record.';
comment on column fs_fiadb.ref_nvcs_level_4_codes.created_by
  is 'Created by';
comment on column fs_fiadb.ref_nvcs_level_4_codes.created_date
  is 'Created date';
comment on column fs_fiadb.ref_nvcs_level_4_codes.created_in_instance
  is 'Created in instance';
comment on column fs_fiadb.ref_nvcs_level_4_codes.modified_by
  is 'Modified by';
comment on column fs_fiadb.ref_nvcs_level_4_codes.modified_date
  is 'Modified date';
comment on column fs_fiadb.ref_nvcs_level_4_codes.modified_in_instance
  is 'Modified in instance';
CREATE TABLE fs_fiadb.ref_nvcs_level_5_codes
(
cn                    VARCHAR(34) NOT NULL,
primary_class         VARCHAR(8) NOT NULL,
hierarchy_level       INTEGER NOT NULL,
hierarchy_level_label VARCHAR(30) NOT NULL,
nvcs_code             VARCHAR(20) NOT NULL,
meaning               VARCHAR(100) NOT NULL,
note                  VARCHAR(1000),
created_by            VARCHAR(30),
created_date          TIMESTAMP(0),
created_in_instance   VARCHAR(6),
modified_by           VARCHAR(30),
modified_date         TIMESTAMP(0),
modified_in_instance  VARCHAR(6)
);
comment on column fs_fiadb.ref_nvcs_level_5_codes.cn
  is 'Unique record identifier for the current hierarchy record';
comment on column fs_fiadb.ref_nvcs_level_5_codes.primary_class
  is 'The primary classification of the algorithm [NATURAL|CULTURAL]';
comment on column fs_fiadb.ref_nvcs_level_5_codes.hierarchy_level
  is 'An integer value indicating at what level in the National Vegetation Classification System hierarchy the current record exists';
comment on column fs_fiadb.ref_nvcs_level_5_codes.hierarchy_level_label
  is 'A label assigned to the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_level_5_codes.nvcs_code
  is 'A code representing the classification at the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_level_5_codes.meaning
  is 'The meaning of the code at the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_level_5_codes.note
  is 'Any remark relevant to the hierarchy structure record.';
comment on column fs_fiadb.ref_nvcs_level_5_codes.created_by
  is 'Created by';
comment on column fs_fiadb.ref_nvcs_level_5_codes.created_date
  is 'Created date';
comment on column fs_fiadb.ref_nvcs_level_5_codes.created_in_instance
  is 'Created in instance';
comment on column fs_fiadb.ref_nvcs_level_5_codes.modified_by
  is 'Modified by';
comment on column fs_fiadb.ref_nvcs_level_5_codes.modified_date
  is 'Modified date';
comment on column fs_fiadb.ref_nvcs_level_5_codes.modified_in_instance
  is 'Modified in instance';
CREATE TABLE fs_fiadb.ref_nvcs_level_6_codes
(
cn                    VARCHAR(34) NOT NULL,
primary_class         VARCHAR(8) NOT NULL,
hierarchy_level       INTEGER NOT NULL,
hierarchy_level_label VARCHAR(30) NOT NULL,
nvcs_code             VARCHAR(20) NOT NULL,
meaning               VARCHAR(100) NOT NULL,
note                  VARCHAR(1000),
created_by            VARCHAR(30),
created_date          TIMESTAMP(0),
created_in_instance   VARCHAR(6),
modified_by           VARCHAR(30),
modified_date         TIMESTAMP(0),
modified_in_instance  VARCHAR(6)
);
comment on column fs_fiadb.ref_nvcs_level_6_codes.cn
  is 'Unique record identifier for the current hierarchy record';
comment on column fs_fiadb.ref_nvcs_level_6_codes.primary_class
  is 'The primary classification of the algorithm [NATURAL|CULTURAL]';
comment on column fs_fiadb.ref_nvcs_level_6_codes.hierarchy_level
  is 'An integer value indicating at what level in the National Vegetation Classification System hierarchy the current record exists';
comment on column fs_fiadb.ref_nvcs_level_6_codes.hierarchy_level_label
  is 'A label assigned to the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_level_6_codes.nvcs_code
  is 'A code representing the classification at the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_level_6_codes.meaning
  is 'The meaning of the code at the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_level_6_codes.note
  is 'Any remark relevant to the hierarchy structure record.';
comment on column fs_fiadb.ref_nvcs_level_6_codes.created_by
  is 'Created by';
comment on column fs_fiadb.ref_nvcs_level_6_codes.created_date
  is 'Created date';
comment on column fs_fiadb.ref_nvcs_level_6_codes.created_in_instance
  is 'Created in instance';
comment on column fs_fiadb.ref_nvcs_level_6_codes.modified_by
  is 'Modified by';
comment on column fs_fiadb.ref_nvcs_level_6_codes.modified_date
  is 'Modified date';
comment on column fs_fiadb.ref_nvcs_level_6_codes.modified_in_instance
  is 'Modified in instance';
CREATE TABLE fs_fiadb.ref_nvcs_level_7_codes
(
cn                    VARCHAR(34) NOT NULL,
primary_class         VARCHAR(8) NOT NULL,
hierarchy_level       INTEGER NOT NULL,
hierarchy_level_label VARCHAR(30) NOT NULL,
nvcs_code             VARCHAR(20) NOT NULL,
meaning               VARCHAR(100) NOT NULL,
note                  VARCHAR(1000),
created_by            VARCHAR(30),
created_date          TIMESTAMP(0),
created_in_instance   VARCHAR(6),
modified_by           VARCHAR(30),
modified_date         TIMESTAMP(0),
modified_in_instance  VARCHAR(6)
);
comment on column fs_fiadb.ref_nvcs_level_7_codes.cn
  is 'Unique record identifier for the current hierarchy record';
comment on column fs_fiadb.ref_nvcs_level_7_codes.primary_class
  is 'The primary classification of the algorithm [NATURAL|CULTURAL]';
comment on column fs_fiadb.ref_nvcs_level_7_codes.hierarchy_level
  is 'An integer value indicating at what level in the National Vegetation Classification System hierarchy the current record exists';
comment on column fs_fiadb.ref_nvcs_level_7_codes.hierarchy_level_label
  is 'A label assigned to the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_level_7_codes.nvcs_code
  is 'A code representing the classification at the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_level_7_codes.meaning
  is 'The meaning of the code at the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_level_7_codes.note
  is 'Any remark relevant to the hierarchy structure record.';
comment on column fs_fiadb.ref_nvcs_level_7_codes.created_by
  is 'Created by';
comment on column fs_fiadb.ref_nvcs_level_7_codes.created_date
  is 'Created date';
comment on column fs_fiadb.ref_nvcs_level_7_codes.created_in_instance
  is 'Created in instance';
comment on column fs_fiadb.ref_nvcs_level_7_codes.modified_by
  is 'Modified by';
comment on column fs_fiadb.ref_nvcs_level_7_codes.modified_date
  is 'Modified date';
comment on column fs_fiadb.ref_nvcs_level_7_codes.modified_in_instance
  is 'Modified in instance';
CREATE TABLE fs_fiadb.ref_nvcs_level_8_codes
(
cn                    VARCHAR(34) NOT NULL,
primary_class         VARCHAR(8) NOT NULL,
hierarchy_level       INTEGER NOT NULL,
hierarchy_level_label VARCHAR(30) NOT NULL,
nvcs_code             VARCHAR(25) NOT NULL,
meaning               VARCHAR(100) NOT NULL,
note                  VARCHAR(1000),
created_by            VARCHAR(30),
created_date          TIMESTAMP(0),
created_in_instance   VARCHAR(6),
modified_by           VARCHAR(30),
modified_date         TIMESTAMP(0),
modified_in_instance  VARCHAR(6)
);
comment on column fs_fiadb.ref_nvcs_level_8_codes.cn
  is 'Unique record identifier for the current hierarchy record';
comment on column fs_fiadb.ref_nvcs_level_8_codes.primary_class
  is 'The primary classification of the algorithm [NATURAL|CULTURAL]';
comment on column fs_fiadb.ref_nvcs_level_8_codes.hierarchy_level
  is 'An integer value indicating at what level in the National Vegetation Classification System hierarchy the current record exists';
comment on column fs_fiadb.ref_nvcs_level_8_codes.hierarchy_level_label
  is 'A label assigned to the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_level_8_codes.nvcs_code
  is 'A code representing the classification at the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_level_8_codes.meaning
  is 'The meaning of the code at the current level of the National Vegetation Classification System hierarchy';
comment on column fs_fiadb.ref_nvcs_level_8_codes.note
  is 'Any remark relevant to the hierarchy structure record.';
comment on column fs_fiadb.ref_nvcs_level_8_codes.created_by
  is 'Created by';
comment on column fs_fiadb.ref_nvcs_level_8_codes.created_date
  is 'Created date';
comment on column fs_fiadb.ref_nvcs_level_8_codes.created_in_instance
  is 'Created in instance';
comment on column fs_fiadb.ref_nvcs_level_8_codes.modified_by
  is 'Modified by';
comment on column fs_fiadb.ref_nvcs_level_8_codes.modified_date
  is 'Modified date';
comment on column fs_fiadb.ref_nvcs_level_8_codes.modified_in_instance
  is 'Modified in instance';
CREATE TABLE fs_fiadb.project
(
cn                   VARCHAR(34) NOT NULL,
rscd                 INTEGER NOT NULL,
name                 VARCHAR(200) NOT NULL,
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6)
);
comment on column fs_fiadb.project.cn
  is 'Sequence number (surrogate primary key)';
comment on column fs_fiadb.project.rscd
  is 'Region or Station Code';
comment on column fs_fiadb.project.name
  is 'The name of the project';
comment on column fs_fiadb.project.created_by
  is 'Created by';
comment on column fs_fiadb.project.created_date
  is 'Created Date ';
comment on column fs_fiadb.project.created_in_instance
  is 'Created in Instance ';
comment on column fs_fiadb.project.modified_by
  is 'Modified by ';
comment on column fs_fiadb.project.modified_date
  is 'Modified Date';
comment on column fs_fiadb.project.modified_in_instance
  is 'Modified in Instance ';
CREATE TABLE fs_fiadb.subp_soil_sample_loc
(
cn                     VARCHAR(34) NOT NULL,
plt_cn                 VARCHAR(34) NOT NULL,
statecd                INTEGER NOT NULL,
countycd               INTEGER NOT NULL,
plot                   INTEGER NOT NULL,
inv_vst_nbr            INTEGER NOT NULL,
invyr                  INTEGER NOT NULL,
cycle                  INTEGER NOT NULL,
subcycle               INTEGER NOT NULL,
unitcd                 INTEGER NOT NULL,
subp                   INTEGER NOT NULL,
vstnbr                 INTEGER,
condid                 INTEGER NOT NULL,
soils_sample_method_cd INTEGER NOT NULL,
soils_sample_status_cd INTEGER NOT NULL,
core_size              DECIMAL(4,3),
core_length            DECIMAL(3,1),
core_bottom_cd         INTEGER,
hole_depth             DECIMAL(3,1),
restriction_depth_cd_1 INTEGER,
restriction_depth_cd_2 INTEGER,
restriction_depth_cd_3 INTEGER,
restriction_depth_cd_4 INTEGER,
restriction_depth_1    DECIMAL(3,1),
restriction_depth_2    DECIMAL(3,1),
restriction_depth_3    DECIMAL(3,1),
restriction_depth_4    DECIMAL(3,1),
c_tot_3in_mg_ac        DECIMAL(10,6),
n_tot_3in_mg_ac        DECIMAL(10,6),
used_in_estimation_cd  INTEGER,
created_by             VARCHAR(30),
created_date           TIMESTAMP(0),
created_in_instance    VARCHAR(6),
modified_by            VARCHAR(30),
modified_date          TIMESTAMP(0),
modified_in_instance   VARCHAR(6)
);
comment on column fs_fiadb.subp_soil_sample_loc.cn
  is 'Sequence number (surrogate primary key';
comment on column fs_fiadb.subp_soil_sample_loc.plt_cn
  is 'Foreign key to PLOT table CN';
comment on column fs_fiadb.subp_soil_sample_loc.statecd
  is 'State Code';
comment on column fs_fiadb.subp_soil_sample_loc.countycd
  is 'County Code';
comment on column fs_fiadb.subp_soil_sample_loc.plot
  is 'Plot Number';
comment on column fs_fiadb.subp_soil_sample_loc.inv_vst_nbr
  is 'Visit number this Cycle/Inventory';
comment on column fs_fiadb.subp_soil_sample_loc.invyr
  is 'Annual Inventory Year';
comment on column fs_fiadb.subp_soil_sample_loc.cycle
  is 'Inventory cycle number';
comment on column fs_fiadb.subp_soil_sample_loc.subcycle
  is 'Inventory subcycle number';
comment on column fs_fiadb.subp_soil_sample_loc.unitcd
  is 'Survey unit code';
comment on column fs_fiadb.subp_soil_sample_loc.subp
  is 'Subplot number';
comment on column fs_fiadb.subp_soil_sample_loc.vstnbr
  is 'Visit number. The number of the soil sampling location at which the soil sample was collected.';
comment on column fs_fiadb.subp_soil_sample_loc.condid
  is 'Condition Class number';
comment on column fs_fiadb.subp_soil_sample_loc.soils_sample_method_cd
  is 'Soils method code indicating which soils protocol is used.';
comment on column fs_fiadb.subp_soil_sample_loc.soils_sample_status_cd
  is 'Soils sample status code';
comment on column fs_fiadb.subp_soil_sample_loc.core_size
  is 'Soil core size, inner diameter in inches';
comment on column fs_fiadb.subp_soil_sample_loc.core_length
  is 'Length of core to the nearest 0.1 inch';
comment on column fs_fiadb.subp_soil_sample_loc.core_bottom_cd
  is 'Code for substrate at bottom of core';
comment on column fs_fiadb.subp_soil_sample_loc.hole_depth
  is 'Depth of cored hole to the nearest 0.1 inch';
comment on column fs_fiadb.subp_soil_sample_loc.restriction_depth_cd_1
  is 'Code for estimated substrate encountered when probing (location 1)';
comment on column fs_fiadb.subp_soil_sample_loc.restriction_depth_cd_2
  is 'Code for estimated substrate encountered when probing (location 2)';
comment on column fs_fiadb.subp_soil_sample_loc.restriction_depth_cd_3
  is 'Code for estimated substrate encountered when probing (location 3)';
comment on column fs_fiadb.subp_soil_sample_loc.restriction_depth_cd_4
  is 'Code for estimated substrate encountered when probing (location 4)';
comment on column fs_fiadb.subp_soil_sample_loc.restriction_depth_1
  is 'Maximum depth encountered to the nearest 0.5 inch (location 1)';
comment on column fs_fiadb.subp_soil_sample_loc.restriction_depth_2
  is 'Maximum depth encountered to the nearest 0.5 inch (location 2)';
comment on column fs_fiadb.subp_soil_sample_loc.restriction_depth_3
  is 'Maximum depth encountered to the nearest 0.5 inch (location 3)';
comment on column fs_fiadb.subp_soil_sample_loc.restriction_depth_4
  is 'Maximum depth encountered to the nearest 0.5 inch (location 4))';
comment on column fs_fiadb.subp_soil_sample_loc.c_tot_3in_mg_ac
  is 'Total carbon content per acre to a standard depth of three inches in megagrams.';
comment on column fs_fiadb.subp_soil_sample_loc.n_tot_3in_mg_ac
  is 'Total nitrogen content per acre to a standard depth of three inches in megagrams.';
comment on column fs_fiadb.subp_soil_sample_loc.used_in_estimation_cd
  is 'Identifies soil cores that include mineral soil data and had no layers with > 1g weight with missing/invalid data; determines whether soil core is included in population estimates';
comment on column fs_fiadb.subp_soil_sample_loc.created_by
  is 'Created by';
comment on column fs_fiadb.subp_soil_sample_loc.created_date
  is 'Created Date';
comment on column fs_fiadb.subp_soil_sample_loc.created_in_instance
  is 'Created in Instance';
comment on column fs_fiadb.subp_soil_sample_loc.modified_by
  is 'Modified by';
comment on column fs_fiadb.subp_soil_sample_loc.modified_date
  is 'Modified Date';
comment on column fs_fiadb.subp_soil_sample_loc.modified_in_instance
  is 'Modified in Instance';
CREATE TABLE fs_fiadb.subp_soil_sample_layer
(
cn                            VARCHAR(34) NOT NULL,
sssl_cn                       VARCHAR(34) NOT NULL,
plt_cn                        VARCHAR(34) NOT NULL,
statecd                       INTEGER NOT NULL,
countycd                      INTEGER NOT NULL,
plot                          INTEGER NOT NULL,
invyr                         INTEGER NOT NULL,
inv_vst_nbr                   INTEGER NOT NULL,
cycle                         INTEGER NOT NULL,
subcycle                      INTEGER NOT NULL,
subp                          INTEGER NOT NULL,
vstnbr                        INTEGER,
sampler_type                  VARCHAR(2),
sample_dia                    DECIMAL(7,3),
layer_type                    VARCHAR(30) NOT NULL,
soil_samp_per_ac              DECIMAL(14,6),
layer_thickness               DECIMAL(5,3),
layer_collected_cd            INTEGER,
wt_field_moist                DECIMAL(7,2),
wt_air_dry                    DECIMAL(7,2),
wt_oven_dry                   DECIMAL(7,2),
wt_rock                       DECIMAL(7,2),
water_content_pct_field_moist DECIMAL(6,2),
water_content_pct_residual    DECIMAL(6,2),
water_content_pct_total       DECIMAL(6,2),
bulk_density                  DECIMAL(10,6),
coarse_fraction_pct           DECIMAL(7,3),
bulk_density_fines            DECIMAL(10,6),
texture_cd                    INTEGER,
ph_h2o                        DECIMAL(7,3),
ph_cacl2                      DECIMAL(7,3),
ecec                          DECIMAL(9,3),
exchng_al                     DECIMAL(9,3),
exchng_ca                     DECIMAL(9,3),
exchng_cd                     DECIMAL(9,3),
exchng_cu                     DECIMAL(9,3),
exchng_fe                     DECIMAL(9,3),
exchng_k                      DECIMAL(9,3),
exchng_mg                     DECIMAL(9,3),
exchng_mn                     DECIMAL(9,3),
exchng_na                     DECIMAL(9,3),
exchng_ni                     DECIMAL(9,3),
exchng_pb                     DECIMAL(9,3),
exchng_s                      DECIMAL(9,3),
exchng_zn                     DECIMAL(9,3),
bray1_p                       DECIMAL(9,3),
olsen_p                       DECIMAL(9,3),
c_org_pct                     DECIMAL(7,3),
c_inorg_pct                   DECIMAL(7,3),
c_total_pct                   DECIMAL(7,3),
c_mg_ac                       DECIMAL(10,6),
c_min3_mg_ac                  DECIMAL(10,6),
n_total_pct                   DECIMAL(7,3),
n_mg_ac                       DECIMAL(10,6),
n_min3_mg_ac                  DECIMAL(10,6),
created_by                    VARCHAR(30),
created_date                  TIMESTAMP(0),
created_in_instance           VARCHAR(6),
modified_by                   VARCHAR(30),
modified_date                 TIMESTAMP(0),
modified_in_instance          VARCHAR(6)
);
comment on column fs_fiadb.subp_soil_sample_layer.cn
  is 'Sequence number (surrogate primary key)';
comment on column fs_fiadb.subp_soil_sample_layer.sssl_cn
  is 'Foreign key to SUBP_SOIL_SAMPLE_LOC CN';
comment on column fs_fiadb.subp_soil_sample_layer.plt_cn
  is 'Foreign key to PLOT table CN';
comment on column fs_fiadb.subp_soil_sample_layer.statecd
  is 'State Code';
comment on column fs_fiadb.subp_soil_sample_layer.countycd
  is 'County Code';
comment on column fs_fiadb.subp_soil_sample_layer.plot
  is 'Plot Number';
comment on column fs_fiadb.subp_soil_sample_layer.invyr
  is 'Annual Inventory Year';
comment on column fs_fiadb.subp_soil_sample_layer.inv_vst_nbr
  is 'Visit number this Cycle/Inventory';
comment on column fs_fiadb.subp_soil_sample_layer.cycle
  is 'Inventory cycle number';
comment on column fs_fiadb.subp_soil_sample_layer.subcycle
  is 'Inventory subcycle number';
comment on column fs_fiadb.subp_soil_sample_layer.subp
  is 'Subplot number';
comment on column fs_fiadb.subp_soil_sample_layer.vstnbr
  is 'Visit number. The number of the soil sampling location at which the soil sample was collected.';
comment on column fs_fiadb.subp_soil_sample_layer.sampler_type
  is 'Code indicating the type of sampler used for the layer.  Valid codes:  BD (bulk density, SF (sample frame), O (other)';
comment on column fs_fiadb.subp_soil_sample_layer.sample_dia
  is 'Diameter of sample area in inches.';
comment on column fs_fiadb.subp_soil_sample_layer.layer_type
  is 'Layer Type. Indicates the soil layer type. Valid values: LITTER, GREEN_MOSS_LICHEN, IDENT_PARTS (identifiable parts), UNIDENT_PARTS (unidentifiable parts), MINERAL_SOIL, UNK_SOIL (unknown soil), MINERAL_SOIL_0-20_CM, MINERAL_SOIL_20-40_CM, MINERAL_SOIL_40-60_CM, MINERAL_SOIL_60-80_CM, MINERAL_SOIL_80-100_CM';
comment on column fs_fiadb.subp_soil_sample_layer.soil_samp_per_ac
  is 'Expansion factor from the layer sampling area to an acre.';
comment on column fs_fiadb.subp_soil_sample_layer.layer_thickness
  is 'Layer thickness to the nearest 0.1 inch';
comment on column fs_fiadb.subp_soil_sample_layer.layer_collected_cd
  is 'Code indicating if soil layer was collected';
comment on column fs_fiadb.subp_soil_sample_layer.wt_field_moist
  is 'Field moist soil weight. The weight of the soil sample as received from the field in g.';
comment on column fs_fiadb.subp_soil_sample_layer.wt_air_dry
  is 'Air-dry soil weight. The weight of the soil sample after air-drying at ambient temperature in g.';
comment on column fs_fiadb.subp_soil_sample_layer.wt_oven_dry
  is 'Oven-dry soil weight. The calculated weight of the soil sample based on an oven-dried subsample in g.';
comment on column fs_fiadb.subp_soil_sample_layer.wt_rock
  is 'Rock (particle size > 2mm) weight in g.';
comment on column fs_fiadb.subp_soil_sample_layer.water_content_pct_field_moist
  is 'Field moist water content percent. The field-moist to air-dry water content in percent.';
comment on column fs_fiadb.subp_soil_sample_layer.water_content_pct_residual
  is 'Residual water content percent. The air-dry to oven-dry water content in percent.';
comment on column fs_fiadb.subp_soil_sample_layer.water_content_pct_total
  is 'Total water content in percent. The field-moist to air-dry + air-dry to oven-dry water contents in percent.';
comment on column fs_fiadb.subp_soil_sample_layer.bulk_density
  is 'Bulk density. The soil bulk density calculated as weight per unit volume of soil, g/cm3.';
comment on column fs_fiadb.subp_soil_sample_layer.coarse_fraction_pct
  is 'Coarse fraction percent. The percentage of mineral soil particles greater than 2-mm in size.';
comment on column fs_fiadb.subp_soil_sample_layer.bulk_density_fines
  is 'The soil bulk density of particles less than 2mm calculated as weight per unit volume of soil, g/cm3.';
comment on column fs_fiadb.subp_soil_sample_layer.texture_cd
  is 'Code for the soil texture of the mineral soil layer';
comment on column fs_fiadb.subp_soil_sample_layer.ph_h2o
  is 'pH in water. Soil pH in a 1:1 soil/water suspension';
comment on column fs_fiadb.subp_soil_sample_layer.ph_cacl2
  is 'pH in calcium chloride. Soil pH in 0.01 M CaCl2 solution.';
comment on column fs_fiadb.subp_soil_sample_layer.ecec
  is 'Effective cation exchange capacity. Exchangeable Na + K + Mg + Ca + Al) in cmolc/kg';
comment on column fs_fiadb.subp_soil_sample_layer.exchng_al
  is 'Exchangeable aluminum in mg/kg';
comment on column fs_fiadb.subp_soil_sample_layer.exchng_ca
  is 'Exchangeable calcium in mg/kg.';
comment on column fs_fiadb.subp_soil_sample_layer.exchng_cd
  is 'Exchangeable cadmium in mg/kg';
comment on column fs_fiadb.subp_soil_sample_layer.exchng_cu
  is 'Exchangeable copper in mg/kg.';
comment on column fs_fiadb.subp_soil_sample_layer.exchng_fe
  is 'Exchangeable iron in mg/kg.';
comment on column fs_fiadb.subp_soil_sample_layer.exchng_k
  is 'Exchangeable potassium in mg/kg.';
comment on column fs_fiadb.subp_soil_sample_layer.exchng_mg
  is 'Exchangeable magnesium in mg/kg.';
comment on column fs_fiadb.subp_soil_sample_layer.exchng_mn
  is 'Exchangeable manganese in mg/kg';
comment on column fs_fiadb.subp_soil_sample_layer.exchng_na
  is 'Exchangeable sodium in mg/kg.';
comment on column fs_fiadb.subp_soil_sample_layer.exchng_ni
  is 'Exchangeable nickel in mg/kg.';
comment on column fs_fiadb.subp_soil_sample_layer.exchng_pb
  is 'Exchangeable lead in mg/kg.';
comment on column fs_fiadb.subp_soil_sample_layer.exchng_s
  is 'Exchangeable sulfur in mg/kg.';
comment on column fs_fiadb.subp_soil_sample_layer.exchng_zn
  is 'Exchangeable zinc in mg/kg.';
comment on column fs_fiadb.subp_soil_sample_layer.bray1_p
  is 'Bray 1 phosphorus. Bray 1 extractable phosphorus in mg/kg.';
comment on column fs_fiadb.subp_soil_sample_layer.olsen_p
  is 'Olsen phosphorus. Olsen extractable phosphorus in mg/kg.';
comment on column fs_fiadb.subp_soil_sample_layer.c_org_pct
  is 'Carbon organic percent. Organic carbon in percent';
comment on column fs_fiadb.subp_soil_sample_layer.c_inorg_pct
  is 'Carbon inorganic percent. Inorganic carbon (carbonates) in percent.';
comment on column fs_fiadb.subp_soil_sample_layer.c_total_pct
  is 'Carbon total percent. Total carbon (organic + inorganic) in percent.';
comment on column fs_fiadb.subp_soil_sample_layer.c_mg_ac
  is 'Carbon content per acre in megagrams.';
comment on column fs_fiadb.subp_soil_sample_layer.c_min3_mg_ac
  is 'Carbon content per acre to a standard depth of three inches in megagrams.';
comment on column fs_fiadb.subp_soil_sample_layer.n_total_pct
  is 'Nitrogen total percent. Total nitrogen in percent.';
comment on column fs_fiadb.subp_soil_sample_layer.n_mg_ac
  is 'Nitrogen content per acre in megagrams.';
comment on column fs_fiadb.subp_soil_sample_layer.n_min3_mg_ac
  is 'Nitrogen content per acre to a standard depth of three inches in megagrams.';
comment on column fs_fiadb.subp_soil_sample_layer.created_by
  is 'Created by';
comment on column fs_fiadb.subp_soil_sample_layer.created_date
  is 'Created Date';
comment on column fs_fiadb.subp_soil_sample_layer.created_in_instance
  is 'Created in Instance';
comment on column fs_fiadb.subp_soil_sample_layer.modified_by
  is 'Modified by';
comment on column fs_fiadb.subp_soil_sample_layer.modified_date
  is 'Modified Date';
comment on column fs_fiadb.subp_soil_sample_layer.modified_in_instance
  is 'Modified in Instance';
CREATE TABLE fs_fiadb.ref_intl_to_doyle_factor
(
dia_2inch_class      INTEGER NOT NULL,
softwood             VARCHAR(1) NOT NULL,
factor               DECIMAL(5,4),
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6)
);
comment on column fs_fiadb.ref_intl_to_doyle_factor.dia_2inch_class
  is 'The two inch diameter class of the tree';
comment on column fs_fiadb.ref_intl_to_doyle_factor.softwood
  is 'N = Hardwoods species, Y = Softwood species';
comment on column fs_fiadb.ref_intl_to_doyle_factor.factor
  is 'The factor to multiply International 1/4 Inch log rule board feet by to produce Doyle log rule board foot volume';
comment on column fs_fiadb.ref_intl_to_doyle_factor.created_by
  is 'Created by';
comment on column fs_fiadb.ref_intl_to_doyle_factor.created_date
  is 'Created Date ';
comment on column fs_fiadb.ref_intl_to_doyle_factor.created_in_instance
  is 'Created in Instance ';
comment on column fs_fiadb.ref_intl_to_doyle_factor.modified_by
  is 'Modified by ';
comment on column fs_fiadb.ref_intl_to_doyle_factor.modified_date
  is 'Modified Date';
comment on column fs_fiadb.ref_intl_to_doyle_factor.modified_in_instance
  is 'Modified in Instance ';
CREATE TABLE fs_fiadb.tree_grm_begin
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
comment on column fs_fiadb.tree_grm_begin.tre_cn
  is 'Foreign key to TREE table CN';
comment on column fs_fiadb.tree_grm_begin.prev_tre_cn
  is 'Foreign key to time 1 tree CN';
comment on column fs_fiadb.tree_grm_begin.plt_cn
  is 'Foreign key to NIMS_PLOT_TBL CN';
comment on column fs_fiadb.tree_grm_begin.statecd
  is 'State Code';
comment on column fs_fiadb.tree_grm_begin.subptyp
  is 'Subplot type code';
comment on column fs_fiadb.tree_grm_begin.spcd
  is 'Species code';
comment on column fs_fiadb.tree_grm_begin.statuscd
  is 'Tree status code';
comment on column fs_fiadb.tree_grm_begin.dia
  is 'Diameter ';
comment on column fs_fiadb.tree_grm_begin.ht
  is 'NA';
comment on column fs_fiadb.tree_grm_begin.actualht
  is 'NA';
comment on column fs_fiadb.tree_grm_begin.cr
  is 'Compacted crown ratio';
comment on column fs_fiadb.tree_grm_begin.standing_dead_cd
  is 'NA';
comment on column fs_fiadb.tree_grm_begin.diahtcd
  is 'Height of diameter measurement code';
comment on column fs_fiadb.tree_grm_begin.cull
  is 'Rotten and missing cull percent';
comment on column fs_fiadb.tree_grm_begin.roughcull
  is 'Rough cull percentage';
comment on column fs_fiadb.tree_grm_begin.cullform
  is 'Form cull';
comment on column fs_fiadb.tree_grm_begin.cullmstop
  is 'Missing top cull';
comment on column fs_fiadb.tree_grm_begin.decaycd
  is 'NA';
comment on column fs_fiadb.tree_grm_begin.treeclcd
  is 'Tree class code';
comment on column fs_fiadb.tree_grm_begin.htdmp
  is 'NA';
comment on column fs_fiadb.tree_grm_begin.wdldstem
  is 'NA';
comment on column fs_fiadb.tree_grm_begin.stdorgcd
  is 'NA';
comment on column fs_fiadb.tree_grm_begin.sitree
  is 'Calculated site index';
comment on column fs_fiadb.tree_grm_begin.balive
  is 'Basal area of all live trees';
comment on column fs_fiadb.tree_grm_begin.voltsgrs
  is 'Gross total stem wood cubic foot volume.';
comment on column fs_fiadb.tree_grm_begin.voltsgrs_bark
  is 'Gross total stem bark cubic foot volume.';
comment on column fs_fiadb.tree_grm_begin.voltssnd
  is 'Sound total stem wood cubic foot volume.';
comment on column fs_fiadb.tree_grm_begin.voltssnd_bark
  is 'Sound total stem bark cubic foot volume.';
comment on column fs_fiadb.tree_grm_begin.volcfgrs_stump
  is 'Gross stump wood cubic foot volume for trees 5 inches and larger.';
comment on column fs_fiadb.tree_grm_begin.volcfgrs_stump_bark
  is 'Gross stump bark cubic foot volume for trees 5 inches and larger.';
comment on column fs_fiadb.tree_grm_begin.volcfsnd_stump
  is 'Sound stump wood cubic foot volume for trees 5 inches and larger.';
comment on column fs_fiadb.tree_grm_begin.volcfsnd_stump_bark
  is 'Sound stump bark cubic foot volume for trees 5 inches and larger.';
comment on column fs_fiadb.tree_grm_begin.volcfgrs
  is 'NA';
comment on column fs_fiadb.tree_grm_begin.volcfgrs_bark
  is 'Gross cubic-foot bark volume';
comment on column fs_fiadb.tree_grm_begin.volcfgrs_top
  is 'Gross cubic-foot wood volume in the 4-inch dob to top for trees 5 inches and larger.';
comment on column fs_fiadb.tree_grm_begin.volcfgrs_top_bark
  is 'Gross cubic-foot bark volume in the 4-inch dob to top for trees 5 inches and larger.';
comment on column fs_fiadb.tree_grm_begin.volcfsnd
  is 'Sound cubic-foot volume ';
comment on column fs_fiadb.tree_grm_begin.volcfsnd_bark
  is 'Sound cubic-foot bark volume';
comment on column fs_fiadb.tree_grm_begin.volcfsnd_top
  is 'Sound cubic-foot wood volume in the 4-inch dob to top for trees 5 inches and larger.';
comment on column fs_fiadb.tree_grm_begin.volcfsnd_top_bark
  is 'Sound cubic-foot wood volume in the 4-inch dob to top for trees 5 inches and larger.';
comment on column fs_fiadb.tree_grm_begin.volcfnet
  is 'Net cubic-foot volume ';
comment on column fs_fiadb.tree_grm_begin.volcfnet_bark
  is 'Net cubic-foot wood volume';
comment on column fs_fiadb.tree_grm_begin.volcsgrs
  is 'Gross cubic-foot wood volume in the saw-log portion';
comment on column fs_fiadb.tree_grm_begin.volcsgrs_bark
  is 'Gross cubic-foot wood volume in the saw-log portion';
comment on column fs_fiadb.tree_grm_begin.volcssnd
  is 'Sound cubic-foot wood volume in the saw-log portion';
comment on column fs_fiadb.tree_grm_begin.volcssnd_bark
  is 'Sound cubic-foot wood volume in the saw-log portion';
comment on column fs_fiadb.tree_grm_begin.volcsnet
  is 'Net cubic-foot volume in the saw-log portion ';
comment on column fs_fiadb.tree_grm_begin.volcsnet_bark
  is 'Net cubic-foot wood volume in the saw-log portion';
comment on column fs_fiadb.tree_grm_begin.volbfgrs
  is 'Gross board-foot volume in the saw-log portion';
comment on column fs_fiadb.tree_grm_begin.volbfnet
  is 'Net board-foot volume in the saw-log portion ';
comment on column fs_fiadb.tree_grm_begin.volbsgrs
  is 'NA';
comment on column fs_fiadb.tree_grm_begin.volbsnet
  is 'Net Scribner board foot volume.';
comment on column fs_fiadb.tree_grm_begin.drybio_stem
  is 'NA';
comment on column fs_fiadb.tree_grm_begin.drybio_stem_bark
  is 'Bark dry biomass for the total stem of trees 5 inches or larger in diameter (pounds)';
comment on column fs_fiadb.tree_grm_begin.drybio_stump
  is 'Dry biomass in the stump of trees 5 inches or larger in diameter (pounds)';
comment on column fs_fiadb.tree_grm_begin.drybio_stump_bark
  is 'Bark dry biomass in the stump of trees 5 inches or larger in diameter (pounds)';
comment on column fs_fiadb.tree_grm_begin.drybio_bole
  is 'Dry biomass in the bole of trees 5 inches or larger in diameter (pounds)';
comment on column fs_fiadb.tree_grm_begin.drybio_bole_bark
  is 'Bark dry biomass in the bole of trees 5 inches or larger in diameter (pounds)';
comment on column fs_fiadb.tree_grm_begin.drybio_branch
  is 'Dry biomass in the branches of trees 1 inches or larger in diameter (pounds)';
comment on column fs_fiadb.tree_grm_begin.drybio_foliage
  is 'Foliage biomass in trees 1 inches or larger in diameter (pounds)';
comment on column fs_fiadb.tree_grm_begin.drybio_ag
  is 'Dry biomass aboveground of trees 1 inch and larger in diameter (pounds)';
comment on column fs_fiadb.tree_grm_begin.drybio_bg
  is 'Dry biomass in the roots of trees 1 inch and larger in diameter (pounds)';
comment on column fs_fiadb.tree_grm_begin.carbon_ag
  is 'NA';
comment on column fs_fiadb.tree_grm_begin.carbon_bg
  is 'NA';
comment on column fs_fiadb.tree_grm_begin.drybio_sawlog
  is 'Dry biomass in the sawlog portion (pounds)';
comment on column fs_fiadb.tree_grm_begin.drybio_sawlog_bark
  is 'Bark dry biomass in the sawlog portion (pounds)';
comment on column fs_fiadb.tree_grm_begin.created_by
  is 'Created by';
comment on column fs_fiadb.tree_grm_begin.created_date
  is 'Created Date';
comment on column fs_fiadb.tree_grm_begin.created_in_instance
  is 'Created in Instance';
comment on column fs_fiadb.tree_grm_begin.modified_by
  is 'Modified by';
comment on column fs_fiadb.tree_grm_begin.modified_date
  is 'Modified Date';
comment on column fs_fiadb.tree_grm_begin.modified_in_instance
  is 'Modified in Instance';
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
created_by                   VARCHAR(30),
created_date                 TIMESTAMP(0),
created_in_instance          VARCHAR(6),
modified_by                  VARCHAR(30),
modified_date                TIMESTAMP(0),
modified_in_instance         VARCHAR(6)
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
comment on column fs_fiadb.tree_grm_component.created_by
  is 'Created by';
comment on column fs_fiadb.tree_grm_component.created_date
  is 'Created Date';
comment on column fs_fiadb.tree_grm_component.created_in_instance
  is 'Created in Instance';
comment on column fs_fiadb.tree_grm_component.modified_by
  is 'Modified by';
comment on column fs_fiadb.tree_grm_component.modified_date
  is 'Modified Date';
comment on column fs_fiadb.tree_grm_component.modified_in_instance
  is 'Modified in Instance';
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
CREATE TABLE fs_fiadb.tree_grm_threshold
(
tre_cn               VARCHAR(34) NOT NULL,
prev_tre_cn          VARCHAR(34),
plt_cn               VARCHAR(34),
statecd              INTEGER,
threshold_type       VARCHAR(10) NOT NULL,
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
comment on column fs_fiadb.tree_grm_threshold.tre_cn
  is 'Foreign key to TREE table CN';
comment on column fs_fiadb.tree_grm_threshold.prev_tre_cn
  is 'Foreign key to time 1 tree CN';
comment on column fs_fiadb.tree_grm_threshold.plt_cn
  is 'Foreign key to NIMS_PLOT_TBL CN';
comment on column fs_fiadb.tree_grm_threshold.statecd
  is 'State Code';
comment on column fs_fiadb.tree_grm_threshold.threshold_type
  is 'Diameter threshold type: MICROPLOT, SUBPLOT, MACROPLOT, or SAWLOG';
comment on column fs_fiadb.tree_grm_threshold.subptyp
  is 'Subplot type code';
comment on column fs_fiadb.tree_grm_threshold.spcd
  is 'Species code';
comment on column fs_fiadb.tree_grm_threshold.statuscd
  is 'Tree status code';
comment on column fs_fiadb.tree_grm_threshold.dia
  is 'Diameter ';
comment on column fs_fiadb.tree_grm_threshold.ht
  is 'NA';
comment on column fs_fiadb.tree_grm_threshold.actualht
  is 'NA';
comment on column fs_fiadb.tree_grm_threshold.cr
  is 'Compacted crown ratio';
comment on column fs_fiadb.tree_grm_threshold.standing_dead_cd
  is 'NA';
comment on column fs_fiadb.tree_grm_threshold.diahtcd
  is 'Height of diameter measurement code';
comment on column fs_fiadb.tree_grm_threshold.cull
  is 'Rotten and missing cull percent';
comment on column fs_fiadb.tree_grm_threshold.roughcull
  is 'Rough cull percentage';
comment on column fs_fiadb.tree_grm_threshold.cullform
  is 'Form cull';
comment on column fs_fiadb.tree_grm_threshold.cullmstop
  is 'Missing top cull';
comment on column fs_fiadb.tree_grm_threshold.decaycd
  is 'NA';
comment on column fs_fiadb.tree_grm_threshold.treeclcd
  is 'Tree class code';
comment on column fs_fiadb.tree_grm_threshold.htdmp
  is 'NA';
comment on column fs_fiadb.tree_grm_threshold.wdldstem
  is 'NA';
comment on column fs_fiadb.tree_grm_threshold.stdorgcd
  is 'NA';
comment on column fs_fiadb.tree_grm_threshold.sitree
  is 'Calculated site index';
comment on column fs_fiadb.tree_grm_threshold.balive
  is 'Basal area of all live trees';
comment on column fs_fiadb.tree_grm_threshold.voltsgrs
  is 'Gross total stem wood cubic foot volume.';
comment on column fs_fiadb.tree_grm_threshold.voltsgrs_bark
  is 'Gross total stem bark cubic foot volume.';
comment on column fs_fiadb.tree_grm_threshold.voltssnd
  is 'Sound total stem wood cubic foot volume.';
comment on column fs_fiadb.tree_grm_threshold.voltssnd_bark
  is 'Sound total stem bark cubic foot volume.';
comment on column fs_fiadb.tree_grm_threshold.volcfgrs_stump
  is 'Gross stump wood cubic foot volume for trees 5 inches and larger.';
comment on column fs_fiadb.tree_grm_threshold.volcfgrs_stump_bark
  is 'Gross stump bark cubic foot volume for trees 5 inches and larger.';
comment on column fs_fiadb.tree_grm_threshold.volcfsnd_stump
  is 'Sound stump wood cubic foot volume for trees 5 inches and larger.';
comment on column fs_fiadb.tree_grm_threshold.volcfsnd_stump_bark
  is 'Sound stump bark cubic foot volume for trees 5 inches and larger.';
comment on column fs_fiadb.tree_grm_threshold.volcfgrs
  is 'NA';
comment on column fs_fiadb.tree_grm_threshold.volcfgrs_bark
  is 'Gross cubic-foot bark volume';
comment on column fs_fiadb.tree_grm_threshold.volcfgrs_top
  is 'Gross cubic-foot wood volume in the 4-inch dob to top for trees 5 inches and larger.';
comment on column fs_fiadb.tree_grm_threshold.volcfgrs_top_bark
  is 'Gross cubic-foot bark volume in the 4-inch dob to top for trees 5 inches and larger.';
comment on column fs_fiadb.tree_grm_threshold.volcfsnd
  is 'Sound cubic-foot volume ';
comment on column fs_fiadb.tree_grm_threshold.volcfsnd_bark
  is 'Sound cubic-foot bark volume';
comment on column fs_fiadb.tree_grm_threshold.volcfsnd_top
  is 'Sound cubic-foot wood volume in the 4-inch dob to top for trees 5 inches and larger.';
comment on column fs_fiadb.tree_grm_threshold.volcfsnd_top_bark
  is 'Sound cubic-foot wood volume in the 4-inch dob to top for trees 5 inches and larger.';
comment on column fs_fiadb.tree_grm_threshold.volcfnet
  is 'Net cubic-foot volume ';
comment on column fs_fiadb.tree_grm_threshold.volcfnet_bark
  is 'Net cubic-foot wood volume';
comment on column fs_fiadb.tree_grm_threshold.volcsgrs
  is 'Gross cubic-foot wood volume in the saw-log portion';
comment on column fs_fiadb.tree_grm_threshold.volcsgrs_bark
  is 'Gross cubic-foot wood volume in the saw-log portion';
comment on column fs_fiadb.tree_grm_threshold.volcssnd
  is 'Sound cubic-foot wood volume in the saw-log portion';
comment on column fs_fiadb.tree_grm_threshold.volcssnd_bark
  is 'Sound cubic-foot wood volume in the saw-log portion';
comment on column fs_fiadb.tree_grm_threshold.volcsnet
  is 'Net cubic-foot volume in the saw-log portion ';
comment on column fs_fiadb.tree_grm_threshold.volcsnet_bark
  is 'Net cubic-foot wood volume in the saw-log portion';
comment on column fs_fiadb.tree_grm_threshold.volbfgrs
  is 'Gross board-foot volume in the saw-log portion';
comment on column fs_fiadb.tree_grm_threshold.volbfnet
  is 'Net board-foot volume in the saw-log portion ';
comment on column fs_fiadb.tree_grm_threshold.volbsgrs
  is 'NA';
comment on column fs_fiadb.tree_grm_threshold.volbsnet
  is 'Net Scribner board foot volume.';
comment on column fs_fiadb.tree_grm_threshold.drybio_stem
  is 'NA';
comment on column fs_fiadb.tree_grm_threshold.drybio_stem_bark
  is 'Bark dry biomass for the total stem of trees 5 inches or larger in diameter (pounds)';
comment on column fs_fiadb.tree_grm_threshold.drybio_stump
  is 'Dry biomass in the stump of trees 5 inches or larger in diameter (pounds)';
comment on column fs_fiadb.tree_grm_threshold.drybio_stump_bark
  is 'Bark dry biomass in the stump of trees 5 inches or larger in diameter (pounds)';
comment on column fs_fiadb.tree_grm_threshold.drybio_bole
  is 'Dry biomass in the bole of trees 5 inches or larger in diameter (pounds)';
comment on column fs_fiadb.tree_grm_threshold.drybio_bole_bark
  is 'Bark dry biomass in the bole of trees 5 inches or larger in diameter (pounds)';
comment on column fs_fiadb.tree_grm_threshold.drybio_branch
  is 'Dry biomass in the branches of trees 1 inches or larger in diameter (pounds)';
comment on column fs_fiadb.tree_grm_threshold.drybio_foliage
  is 'Foliage biomass in trees 1 inches or larger in diameter (pounds)';
comment on column fs_fiadb.tree_grm_threshold.drybio_ag
  is 'Dry biomass aboveground of trees 1 inch and larger in diameter (pounds)';
comment on column fs_fiadb.tree_grm_threshold.drybio_bg
  is 'Dry biomass in the roots of trees 1 inch and larger in diameter (pounds)';
comment on column fs_fiadb.tree_grm_threshold.carbon_ag
  is 'NA';
comment on column fs_fiadb.tree_grm_threshold.carbon_bg
  is 'NA';
comment on column fs_fiadb.tree_grm_threshold.drybio_sawlog
  is 'Dry biomass in the sawlog portion (pounds)';
comment on column fs_fiadb.tree_grm_threshold.drybio_sawlog_bark
  is 'Bark dry biomass in the sawlog portion (pounds)';
comment on column fs_fiadb.tree_grm_threshold.created_by
  is 'Created by';
comment on column fs_fiadb.tree_grm_threshold.created_date
  is 'Created Date';
comment on column fs_fiadb.tree_grm_threshold.created_in_instance
  is 'Created in Instance';
comment on column fs_fiadb.tree_grm_threshold.modified_by
  is 'Modified by';
comment on column fs_fiadb.tree_grm_threshold.modified_date
  is 'Modified Date';
comment on column fs_fiadb.tree_grm_threshold.modified_in_instance
  is 'Modified in Instance';
CREATE TABLE fs_fiadb.plotsnap
(
adj_expgrow_micr         DOUBLE PRECISION,
adj_expgrow_macr         DOUBLE PRECISION,
prev_plt_cn              VARCHAR(34),
microplot_loc            VARCHAR(12),
adj_expdwm_fwd_lg        DOUBLE PRECISION,
measmon                  INTEGER,
adj_expremv_macr         DOUBLE PRECISION,
samp_method_cd           INTEGER,
subpanel                 INTEGER,
kindcd                   INTEGER NOT NULL,
adj_expp2veg_subp        DOUBLE PRECISION,
modified_date            TIMESTAMP(0),
expregen                 DOUBLE PRECISION,
kindcd_nc                INTEGER,
cn                       VARCHAR(34) NOT NULL,
expdwm                   DOUBLE PRECISION,
congcd                   DOUBLE PRECISION,
lon                      DECIMAL(9,6),
adj_expsoil              DOUBLE PRECISION,
expinv                   DOUBLE PRECISION,
plot_status_cd           INTEGER,
adj_expchng_macr         DOUBLE PRECISION,
countycd                 INTEGER NOT NULL,
expgrow                  DOUBLE PRECISION,
manual_db                DECIMAL(3,1),
subcycle                 INTEGER,
adj_expdwm_cwd           DOUBLE PRECISION,
expchng                  DOUBLE PRECISION,
cty_cn                   VARCHAR(34) NOT NULL,
unitcd                   INTEGER NOT NULL,
adj_expregen_micr        DOUBLE PRECISION,
created_in_instance      VARCHAR(6),
rddistcd                 INTEGER,
intensity                VARCHAR(3),
expremv                  DOUBLE PRECISION,
qa_status                INTEGER,
expall                   DOUBLE PRECISION,
cycle                    INTEGER,
eval_grp                 INTEGER NOT NULL,
adj_expdwm_duff          DOUBLE PRECISION,
created_by               VARCHAR(30),
eval_grp_cn              VARCHAR(34) NOT NULL,
adj_expremv_micr         DOUBLE PRECISION,
adj_expvol_subp          DOUBLE PRECISION,
adj_expchng_micr         DOUBLE PRECISION,
mort_typ_cd              INTEGER,
expcurr                  DOUBLE PRECISION,
created_date             TIMESTAMP(0),
p3panel                  INTEGER,
expvol                   DOUBLE PRECISION,
adj_expvol_macr          DOUBLE PRECISION,
adj_expdwm_pile          DOUBLE PRECISION,
modified_by              VARCHAR(30),
grow_typ_cd              INTEGER,
plot                     INTEGER NOT NULL,
designcd                 INTEGER,
eco_unit_pnw             VARCHAR(10),
expsoil                  DOUBLE PRECISION,
expp2veg                 DOUBLE PRECISION,
adj_expinv_subp          DOUBLE PRECISION,
macro_breakpoint_dia     INTEGER,
adj_expvol_micr          DOUBLE PRECISION,
emap_hex                 DOUBLE PRECISION,
expmort                  DOUBLE PRECISION,
adj_expdwm_fwd_sm        DOUBLE PRECISION,
adj_expmort_subp         DOUBLE PRECISION,
expcrwn                  DOUBLE PRECISION,
adj_expcurr              DOUBLE PRECISION,
subp_examine_cd          INTEGER NOT NULL,
remper                   DECIMAL(3,1),
adj_expremv_subp         DOUBLE PRECISION,
adj_expmort_micr         DOUBLE PRECISION,
measday                  INTEGER,
adj_expgrow_subp         DOUBLE PRECISION,
adj_expgrndlyr_microquad DOUBLE PRECISION,
watercd                  INTEGER,
lat                      DECIMAL(8,6),
adj_expchng_subp         DOUBLE PRECISION,
measyear                 INTEGER,
invyr                    INTEGER NOT NULL,
adj_expmort_macr         DOUBLE PRECISION,
elev                     INTEGER,
declination              DECIMAL(4,1),
expgrndlyr               DOUBLE PRECISION,
statecd                  INTEGER NOT NULL,
plot_nonsample_reasn_cd  INTEGER,
modified_in_instance     VARCHAR(6),
topo_position_pnw        VARCHAR(2),
srv_cn                   VARCHAR(34) NOT NULL,
ecosubcd                 VARCHAR(7),
manual                   DECIMAL(3,1) NOT NULL,
adj_expall               DOUBLE PRECISION,
p2panel                  INTEGER
);
comment on column fs_fiadb.plotsnap.adj_expgrow_micr
  is 'Adjustment factor for EXPGROW for trees measured on the microplot';
comment on column fs_fiadb.plotsnap.adj_expgrow_macr
  is 'Adjustment factor for EXPGROW for trees measured on the macroplot';
comment on column fs_fiadb.plotsnap.prev_plt_cn
  is 'Foreign key to Time 1 Plot record';
comment on column fs_fiadb.plotsnap.microplot_loc
  is 'Microplot location';
comment on column fs_fiadb.plotsnap.adj_expdwm_fwd_lg
  is 'Adjustment factors for EXPDWM for fine woody materials measured on large transects';
comment on column fs_fiadb.plotsnap.measmon
  is 'Measurement Month';
comment on column fs_fiadb.plotsnap.adj_expremv_macr
  is 'Adjustment factor for EXPCHNG for area measurements made on the macroplot';
comment on column fs_fiadb.plotsnap.samp_method_cd
  is 'Sample method code';
comment on column fs_fiadb.plotsnap.subpanel
  is 'Subpanel number';
comment on column fs_fiadb.plotsnap.kindcd
  is 'Plot Kind Code';
comment on column fs_fiadb.plotsnap.adj_expp2veg_subp
  is 'Adjustment factors for EXPP2VEG for Phase 2 vegetation profiles measured on subplots';
comment on column fs_fiadb.plotsnap.modified_date
  is 'Modified Date';
comment on column fs_fiadb.plotsnap.expregen
  is 'Plot expansion factor for regeneration';
comment on column fs_fiadb.plotsnap.kindcd_nc
  is 'Plot kind code for North Central';
comment on column fs_fiadb.plotsnap.cn
  is 'Sequence number on corresponding plot record (ought to be renamed plt_cn)';
comment on column fs_fiadb.plotsnap.expdwm
  is 'Plot expansion factor for down woody materials';
comment on column fs_fiadb.plotsnap.congcd
  is 'Congressional district code';
comment on column fs_fiadb.plotsnap.lon
  is 'Fuzzed and swapped lon';
comment on column fs_fiadb.plotsnap.adj_expsoil
  is 'Adjustment factors for EXPSOIL soil protocols';
comment on column fs_fiadb.plotsnap.expinv
  is 'Plot expansion factor for invasive species';
comment on column fs_fiadb.plotsnap.plot_status_cd
  is 'Plot status code';
comment on column fs_fiadb.plotsnap.adj_expchng_macr
  is 'NA';
comment on column fs_fiadb.plotsnap.countycd
  is 'County Code';
comment on column fs_fiadb.plotsnap.expgrow
  is 'Plot expansion factor for growth';
comment on column fs_fiadb.plotsnap.manual_db
  is 'NA';
comment on column fs_fiadb.plotsnap.subcycle
  is 'Inventory subcycle number';
comment on column fs_fiadb.plotsnap.adj_expdwm_cwd
  is 'Adjustment factor for EXPDWM for coarse woody materials measured on transects';
comment on column fs_fiadb.plotsnap.expchng
  is 'Plot expansion factor for area change';
comment on column fs_fiadb.plotsnap.cty_cn
  is 'Unique index';
comment on column fs_fiadb.plotsnap.unitcd
  is 'Survey unit code';
comment on column fs_fiadb.plotsnap.adj_expregen_micr
  is 'Adjustment factors for EXPREGEN for seedlings measured on microplots';
comment on column fs_fiadb.plotsnap.created_in_instance
  is 'Created in Instance';
comment on column fs_fiadb.plotsnap.rddistcd
  is 'Distance to improved road code';
comment on column fs_fiadb.plotsnap.intensity
  is 'Intensity';
comment on column fs_fiadb.plotsnap.expremv
  is 'Plot expansion factor for removals';
comment on column fs_fiadb.plotsnap.qa_status
  is 'QA_STATUS';
comment on column fs_fiadb.plotsnap.expall
  is 'Plot area expansion factor where all plots (sampled and unsampled) are used';
comment on column fs_fiadb.plotsnap.cycle
  is 'Inventory cycle number';
comment on column fs_fiadb.plotsnap.eval_grp
  is 'Reporting year followed by 4 more digits to make the statecd;eval_grp combo unique';
comment on column fs_fiadb.plotsnap.adj_expdwm_duff
  is 'Adjustment factors for EXPDWM for duff measured on points';
comment on column fs_fiadb.plotsnap.created_by
  is 'Created by';
comment on column fs_fiadb.plotsnap.eval_grp_cn
  is 'NA';
comment on column fs_fiadb.plotsnap.adj_expremv_micr
  is 'Adjustment factor for EXPCHNG for area measurements made on the microplot';
comment on column fs_fiadb.plotsnap.adj_expvol_subp
  is 'Adjustment factor for EXPVOL for trees measured on the subplot';
comment on column fs_fiadb.plotsnap.adj_expchng_micr
  is 'NA';
comment on column fs_fiadb.plotsnap.mort_typ_cd
  is 'Type of annual mortality volume code';
comment on column fs_fiadb.plotsnap.expcurr
  is 'Plot area expansion factor for sampled plots';
comment on column fs_fiadb.plotsnap.created_date
  is 'Created Date';
comment on column fs_fiadb.plotsnap.p3panel
  is 'Phase 3 panel number';
comment on column fs_fiadb.plotsnap.expvol
  is 'Plot expansion factor for volume';
comment on column fs_fiadb.plotsnap.adj_expvol_macr
  is 'Adjustment factor for EXPVOL for trees measured on the macroplot';
comment on column fs_fiadb.plotsnap.adj_expdwm_pile
  is 'Adjustment factors for EXPDWM for residue piles measured on either transects or fixed-area subplot according to the field protocol';
comment on column fs_fiadb.plotsnap.modified_by
  is 'Modified by';
comment on column fs_fiadb.plotsnap.grow_typ_cd
  is 'Type of annual volume growth code';
comment on column fs_fiadb.plotsnap.plot
  is 'P2 Plot number';
comment on column fs_fiadb.plotsnap.designcd
  is 'Plot Design Code';
comment on column fs_fiadb.plotsnap.eco_unit_pnw
  is 'Ecological unit used to identify PNW stockability algorithms';
comment on column fs_fiadb.plotsnap.expsoil
  is 'Plot expansion factor for soils';
comment on column fs_fiadb.plotsnap.expp2veg
  is 'Plot expansion factor for Phase 2 plant profiles';
comment on column fs_fiadb.plotsnap.adj_expinv_subp
  is 'Adjustment factors for EXPINV for invasive species measured on subplots';
comment on column fs_fiadb.plotsnap.macro_breakpoint_dia
  is 'Macroplot breakpoint diameter';
comment on column fs_fiadb.plotsnap.adj_expvol_micr
  is 'Adjustment factor for EXPVOL for trees measured on the microplot';
comment on column fs_fiadb.plotsnap.emap_hex
  is 'EMAP hexagon';
comment on column fs_fiadb.plotsnap.expmort
  is 'Plot expansion factor for mortality';
comment on column fs_fiadb.plotsnap.adj_expdwm_fwd_sm
  is 'Adjustment factors for EXPDWM for fine woody materials measured on small transects';
comment on column fs_fiadb.plotsnap.adj_expmort_subp
  is 'Adjustment factor for EXPMORT for trees measured on the subplot';
comment on column fs_fiadb.plotsnap.expcrwn
  is 'Plot expansion factor for crowns';
comment on column fs_fiadb.plotsnap.adj_expcurr
  is 'Adjustment factor for EXPCURR';
comment on column fs_fiadb.plotsnap.subp_examine_cd
  is 'Subplots examined code';
comment on column fs_fiadb.plotsnap.remper
  is 'Remeasurement period';
comment on column fs_fiadb.plotsnap.adj_expremv_subp
  is 'Adjustment factor for EXPCHNG for area measurements made on the subplot';
comment on column fs_fiadb.plotsnap.adj_expmort_micr
  is 'Adjustment factor for EXPMORT for trees measured on the microplot';
comment on column fs_fiadb.plotsnap.measday
  is 'Measurement Day';
comment on column fs_fiadb.plotsnap.adj_expgrow_subp
  is 'Adjustment factor for EXPGROW for trees measured on the subplot';
comment on column fs_fiadb.plotsnap.adj_expgrndlyr_microquad
  is 'Adjustment factors for EXPGRNDLYR for ground layer measurements made on microquads';
comment on column fs_fiadb.plotsnap.watercd
  is 'Water on Plot Code';
comment on column fs_fiadb.plotsnap.lat
  is 'Fuzzed and swapped lat';
comment on column fs_fiadb.plotsnap.adj_expchng_subp
  is 'NA';
comment on column fs_fiadb.plotsnap.measyear
  is 'Measurement Year';
comment on column fs_fiadb.plotsnap.invyr
  is 'Inventory year';
comment on column fs_fiadb.plotsnap.adj_expmort_macr
  is 'Adjustment factor for EXPMORT for trees measured on the macroplot';
comment on column fs_fiadb.plotsnap.elev
  is 'Elevation WGS84 datum';
comment on column fs_fiadb.plotsnap.declination
  is 'Declination';
comment on column fs_fiadb.plotsnap.expgrndlyr
  is 'Plot expansion factor for ground layers';
comment on column fs_fiadb.plotsnap.statecd
  is 'State Code';
comment on column fs_fiadb.plotsnap.plot_nonsample_reasn_cd
  is 'Plot nonsampled reason code';
comment on column fs_fiadb.plotsnap.modified_in_instance
  is 'Modified in Instance';
comment on column fs_fiadb.plotsnap.topo_position_pnw
  is 'Topographic position';
comment on column fs_fiadb.plotsnap.srv_cn
  is 'Unique index';
comment on column fs_fiadb.plotsnap.ecosubcd
  is 'Ecological subsection code';
comment on column fs_fiadb.plotsnap.manual
  is 'Field manual version';
comment on column fs_fiadb.plotsnap.adj_expall
  is 'Adjustment factor for EXPALL';
comment on column fs_fiadb.plotsnap.p2panel
  is 'Phase 2 panel number';
CREATE TABLE fs_fiadb.ref_pop_attribute
(
created_by           VARCHAR(30),
eval_typ             VARCHAR(15),
created_date         TIMESTAMP(0),
modified_date        TIMESTAMP(0),
active               VARCHAR(1),
modified_in_instance VARCHAR(6),
sql_query_se         TEXT,
growth_acct          VARCHAR(1),
attribute_descr      VARCHAR(255),
sql_query            VARCHAR(4000),
attribute_nbr        DOUBLE PRECISION,
land_basis           VARCHAR(32),
notes                VARCHAR(2000),
modified_by          VARCHAR(30),
created_in_instance  VARCHAR(6)
);
comment on column fs_fiadb.ref_pop_attribute.created_by
  is 'Created by';
comment on column fs_fiadb.ref_pop_attribute.eval_typ
  is 'Evaluation type - used by JAVA program PopEstFIADB4';
comment on column fs_fiadb.ref_pop_attribute.created_date
  is 'Created date';
comment on column fs_fiadb.ref_pop_attribute.modified_date
  is 'Modified date';
comment on column fs_fiadb.ref_pop_attribute.active
  is 'Y/N to indicate if attribute record is active or retired';
comment on column fs_fiadb.ref_pop_attribute.modified_in_instance
  is 'Modified in instance';
comment on column fs_fiadb.ref_pop_attribute.sql_query_se
  is 'NA';
comment on column fs_fiadb.ref_pop_attribute.growth_acct
  is 'Y if attribute record can be used for growth accounting, N if it cannot be used for growth accounting, null if eval_typ for record is not EXPGROW';
comment on column fs_fiadb.ref_pop_attribute.attribute_descr
  is 'Estimation attribute e.g. Area of timberland';
comment on column fs_fiadb.ref_pop_attribute.sql_query
  is 'NA';
comment on column fs_fiadb.ref_pop_attribute.attribute_nbr
  is 'Arbitrary unique number';
comment on column fs_fiadb.ref_pop_attribute.land_basis
  is 'Land basis for estimate. Timberland or Forest land';
comment on column fs_fiadb.ref_pop_attribute.notes
  is 'Notes';
comment on column fs_fiadb.ref_pop_attribute.modified_by
  is 'Modified by';
comment on column fs_fiadb.ref_pop_attribute.created_in_instance
  is 'Created in instance';
CREATE TABLE fs_fiadb.ref_tree_carbon_ratio_dead
(
cn           DOUBLE PRECISION NOT NULL,
sftwd_hrdwd  VARCHAR(1) NOT NULL,
decaycd      INTEGER NOT NULL,
carbon_ratio DECIMAL(6,5) NOT NULL
);
comment on column fs_fiadb.ref_tree_carbon_ratio_dead.cn
  is 'Surrogate primary key.';
comment on column fs_fiadb.ref_tree_carbon_ratio_dead.sftwd_hrdwd
  is 'Flag indicating softwood or hardwood.  Values are S or H respectively.';
comment on column fs_fiadb.ref_tree_carbon_ratio_dead.decaycd
  is 'Decay class code.';
comment on column fs_fiadb.ref_tree_carbon_ratio_dead.carbon_ratio
  is 'The biomass to carbon ratio.';
CREATE TABLE fs_fiadb.ref_tree_decay_prop
(
cn               DOUBLE PRECISION NOT NULL,
decaycd          INTEGER NOT NULL,
sftwd_hrdwd      VARCHAR(1) NOT NULL,
density_prop     DECIMAL(3,2),
bark_loss_prop   DECIMAL(3,2),
branch_loss_prop DECIMAL(3,2)
);
comment on column fs_fiadb.ref_tree_decay_prop.cn
  is 'Surrogate primary key.';
comment on column fs_fiadb.ref_tree_decay_prop.decaycd
  is 'The decay code.';
comment on column fs_fiadb.ref_tree_decay_prop.sftwd_hrdwd
  is 'Flag indicating softwood or hardwood.  Values are S or H respectively.';
comment on column fs_fiadb.ref_tree_decay_prop.density_prop
  is 'The remaining proportion of the tree.';
comment on column fs_fiadb.ref_tree_decay_prop.bark_loss_prop
  is 'The proportion of tree volume losses in the bark component.';
comment on column fs_fiadb.ref_tree_decay_prop.branch_loss_prop
  is 'The proportion of tree volume losses in the branch component.';
CREATE TABLE fs_fiadb.ref_tree_stnd_dead_cr_prop
(
cn          DOUBLE PRECISION NOT NULL,
ecoprov     VARCHAR(10) NOT NULL,
sftwd_hrdwd VARCHAR(1) NOT NULL,
cr_mean     DECIMAL(4,3)
);
comment on column fs_fiadb.ref_tree_stnd_dead_cr_prop.cn
  is 'Surrogate primary key.';
comment on column fs_fiadb.ref_tree_stnd_dead_cr_prop.ecoprov
  is 'The ecological provence.';
comment on column fs_fiadb.ref_tree_stnd_dead_cr_prop.sftwd_hrdwd
  is 'Flag indicating softwood or hardwood.  Values are S or H respectively.';
comment on column fs_fiadb.ref_tree_stnd_dead_cr_prop.cr_mean
  is 'The mean crown ratio for the ecoprov and sftwd_hrdwood combination.';
CREATE TABLE fs_fiadb.ref_grnd_lyr
(
cn                  DOUBLE PRECISION NOT NULL,
grnd_lyr_config     VARCHAR(20) NOT NULL,
functional_group_cd VARCHAR(10) NOT NULL,
carbon_pct          DECIMAL(5,2),
nitrogen_pct        DECIMAL(5,2),
bulkdensity_coeff_m DECIMAL(5,4),
bulkdensity_coeff_a DECIMAL(5,4),
bulkdensity_coeff_b DECIMAL(6,4),
created_date        TIMESTAMP(0) NOT NULL,
modified_date       TIMESTAMP(0)
);
comment on column fs_fiadb.ref_grnd_lyr.cn
  is 'Surrogate primary key';
comment on column fs_fiadb.ref_grnd_lyr.grnd_lyr_config
  is 'Ground layer configuration name';
comment on column fs_fiadb.ref_grnd_lyr.functional_group_cd
  is 'Ground layer functional group code';
comment on column fs_fiadb.ref_grnd_lyr.carbon_pct
  is 'Percent carbon content';
comment on column fs_fiadb.ref_grnd_lyr.nitrogen_pct
  is 'Percent nitrogen content';
comment on column fs_fiadb.ref_grnd_lyr.bulkdensity_coeff_m
  is 'Coefficient m for calculating bulk density';
comment on column fs_fiadb.ref_grnd_lyr.bulkdensity_coeff_a
  is 'Coefficient a for calculating bulk density';
comment on column fs_fiadb.ref_grnd_lyr.bulkdensity_coeff_b
  is 'Coefficient b for calculating bulk density';
comment on column fs_fiadb.ref_grnd_lyr.created_date
  is 'The date on which the record was originally created.';
comment on column fs_fiadb.ref_grnd_lyr.modified_date
  is 'The date on which the record was last modified.';
CREATE TABLE fs_fiadb.ref_species_group
(
spgrpcd       INTEGER NOT NULL,
name          VARCHAR(40) NOT NULL,
region        VARCHAR(4000),
class         VARCHAR(4000),
created_date  TIMESTAMP(0),
modified_date TIMESTAMP(0)
);
comment on column fs_fiadb.ref_species_group.spgrpcd
  is 'Species group code.';
comment on column fs_fiadb.ref_species_group.name
  is 'Species group label.';
comment on column fs_fiadb.ref_species_group.region
  is 'Geographic region indicator generally associated with a species group. Examples are All, Eastern, Western, Tropical/Subtropical.';
comment on column fs_fiadb.ref_species_group.class
  is 'Class of the group.  Examples are  Hardwood , Softwood.';
comment on column fs_fiadb.ref_species_group.created_date
  is 'Created Date; the earliest date a species group code (TAXA_GROUP_CODE) was created.';
comment on column fs_fiadb.ref_species_group.modified_date
  is 'Modified Date; the most recent date a species group code (TAXA_GROUP_CODE) was modified.';
CREATE TABLE fs_fiadb.ref_species
(
spcd                         DOUBLE PRECISION,
common_name                  VARCHAR(100) NOT NULL,
shared_common_name_ind       CHAR(1),
genus                        VARCHAR(4000),
species                      VARCHAR(4000),
variety                      VARCHAR(4000),
subspecies                   VARCHAR(4000),
scientific_name              VARCHAR(4000),
species_symbol               VARCHAR(10),
e_spgrpcd                    DOUBLE PRECISION,
w_spgrpcd                    DOUBLE PRECISION,
c_spgrpcd                    DOUBLE PRECISION,
p_spgrpcd                    DOUBLE PRECISION,
major_spgrpcd                DOUBLE PRECISION,
stocking_spgrpcd             DOUBLE PRECISION,
forest_type_spgrpcd          DOUBLE PRECISION,
jenkins_spgrpcd              DOUBLE PRECISION,
jenkins_sapling_adjustment   DOUBLE PRECISION,
sitetree                     VARCHAR(1),
sftwd_hrdwd                  VARCHAR(1),
woodland                     VARCHAR(1),
wood_spgr_greenvol_drywt     DOUBLE PRECISION,
wood_spgr_greenvol_drywt_cit DOUBLE PRECISION,
bark_spgr_greenvol_drywt     DOUBLE PRECISION,
bark_spgr_greenvol_drywt_cit DOUBLE PRECISION,
mc_pct_green_wood            DOUBLE PRECISION,
mc_pct_green_wood_cit        DOUBLE PRECISION,
mc_pct_green_bark            DOUBLE PRECISION,
mc_pct_green_bark_cit        DOUBLE PRECISION,
bark_vol_pct                 DOUBLE PRECISION,
bark_vol_pct_cit             DOUBLE PRECISION,
cwd_decay_ratio1             DOUBLE PRECISION,
cwd_decay_ratio2             DOUBLE PRECISION,
cwd_decay_ratio3             DOUBLE PRECISION,
cwd_decay_ratio4             DOUBLE PRECISION,
cwd_decay_ratio5             DOUBLE PRECISION,
dwm_carbon_ratio             DOUBLE PRECISION,
carbon_ratio_live            DOUBLE PRECISION,
drywt_to_greenwt_conversion  DOUBLE PRECISION,
created_date                 TIMESTAMP(0) NOT NULL,
modified_date                TIMESTAMP(0)
);
comment on column fs_fiadb.ref_species.spcd
  is 'The assigned Species Code Number';
comment on column fs_fiadb.ref_species.common_name
  is 'A Common Name associated with Taxa Name';
comment on column fs_fiadb.ref_species.shared_common_name_ind
  is 'A Y/N indicator which denotes whether a common name is shared by multiple species. N indicates that the common name is unique to the species.';
comment on column fs_fiadb.ref_species.genus
  is 'The Genus of the species';
comment on column fs_fiadb.ref_species.species
  is 'The specific species within the genus';
comment on column fs_fiadb.ref_species.variety
  is 'A specific subdivision of a species typically associated with a locality with distinct characteristics that are retained through breeding';
comment on column fs_fiadb.ref_species.subspecies
  is 'A specific subdivision of a species typically associated with a locality with distinct charactgeristics that are retained through breeding';
comment on column fs_fiadb.ref_species.scientific_name
  is 'The scientific name (starting with genus) for the taxa';
comment on column fs_fiadb.ref_species.species_symbol
  is 'A symbol usied to identify the species. This symbol originated from the PLANTS database at the time the species was adopted by FIA. FIA has held these symbols constant over time for trees and has not updated updated these sybols as the PLANTS database has. FIA does update species symbols for non-tree species.';
comment on column fs_fiadb.ref_species.e_spgrpcd
  is 'A grouping code used for reporting in the eastern United States consisting of AL, AR, CT, DC, DE, FL, GA, IA, IL, IN, KS, KY, LA, MA, MD, ME, MI, MN, MO, MS, NC, ND, NE, NH, NJ, NY, OH, OK, PA, RI, SC, SD, TN, TX, VA, VT, WI, WV';
comment on column fs_fiadb.ref_species.w_spgrpcd
  is 'A grouping code used for reporting in the western United States consisting of AK, AZ, CA, CO, HI, ID, MT, NM, NV, OR, UT, WA, WY';
comment on column fs_fiadb.ref_species.c_spgrpcd
  is 'A grouping code used for reporting in the caribbean consisting of PR, VI';
comment on column fs_fiadb.ref_species.p_spgrpcd
  is 'A grouping code used for reporting in the Pacific islands consisting of AS, FM, GU, MH, MP, PW';
comment on column fs_fiadb.ref_species.major_spgrpcd
  is 'A grouping code used for reporting that collects species into high-level groups of species';
comment on column fs_fiadb.ref_species.stocking_spgrpcd
  is 'A grouping code used for stocking equations.';
comment on column fs_fiadb.ref_species.forest_type_spgrpcd
  is 'A grouping code used for forest typing.';
comment on column fs_fiadb.ref_species.jenkins_spgrpcd
  is 'A grouping code used for reporting the Jenkins species group.';
comment on column fs_fiadb.ref_species.jenkins_sapling_adjustment
  is 'Jenkins sapling adjusment factor for estimation of sapling biomass (Heath et al. 2009)';
comment on column fs_fiadb.ref_species.sitetree
  is 'A Y/N flag indicating if the species serves as a valid site tree within the FIA program';
comment on column fs_fiadb.ref_species.sftwd_hrdwd
  is 'A high-level classification of a species as either hardwood (angiosperm) or softwood (gynmosperm)';
comment on column fs_fiadb.ref_species.woodland
  is 'A Y/N flag indicating if the species is classifed as a woodland species or not under the FIA program. Woodland species are considered to be a mult-stem organism and the diameters are measured at the root collar. Non-woodland species are cosidered single-stem species and diameters are taken at DBH';
comment on column fs_fiadb.ref_species.wood_spgr_greenvol_drywt
  is 'Green specific gravity wood (green volume and oven-dry weight)';
comment on column fs_fiadb.ref_species.wood_spgr_greenvol_drywt_cit
  is 'Green specific gravity wood citation';
comment on column fs_fiadb.ref_species.bark_spgr_greenvol_drywt
  is 'Green specific gravity bark (green volume and oven-dry weight)';
comment on column fs_fiadb.ref_species.bark_spgr_greenvol_drywt_cit
  is 'Green specific gravity bark citation';
comment on column fs_fiadb.ref_species.mc_pct_green_wood
  is 'Moisture content of green wood as a percent of oven-dry weight. Wood and bark is often sold based on green weight. The user is cautioned that green weights can be extremely variable geographically, seasonally, within species and across various portions of individual trees.';
comment on column fs_fiadb.ref_species.mc_pct_green_wood_cit
  is 'Citation for MC_PCT_GREEN_WOOD. The value of this variable can be linked to the corresponding value in the CITATION_NBR variable in the REF_CITATION table to find the source of the MC_PCT_GREEN_WOOD variable.';
comment on column fs_fiadb.ref_species.mc_pct_green_bark
  is 'Moisture content of green bark as a percent of oven-dry weight. Wood and bark is often sold based on green weight. The user is cautioned that green weights can be extremely variable geographically, seasonally, within species and across various portions of individual trees.';
comment on column fs_fiadb.ref_species.mc_pct_green_bark_cit
  is 'Citation for MC_PCT GREEN_BARK . The value of this variable can be linked to the corresponding value in the CITATION_NBR variable in the REF_CITATION table to find the source of the MC_PCT GREEN_BARK variable.';
comment on column fs_fiadb.ref_species.bark_vol_pct
  is 'Bark volume as a percent of  wood volume';
comment on column fs_fiadb.ref_species.bark_vol_pct_cit
  is 'Bark volume as a percent of  wood volume citation';
comment on column fs_fiadb.ref_species.cwd_decay_ratio1
  is 'Ratio of decayed to sound wood weight of CWD indicated by decay class 1';
comment on column fs_fiadb.ref_species.cwd_decay_ratio2
  is 'Ratio of decayed to sound wood weight of CWD indicated by decay class 2';
comment on column fs_fiadb.ref_species.cwd_decay_ratio3
  is 'Ratio of decayed to sound wood weight of CWD indicated by decay class 3';
comment on column fs_fiadb.ref_species.cwd_decay_ratio4
  is 'Ratio of decayed to sound wood weight of CWD indicated by decay class 4';
comment on column fs_fiadb.ref_species.cwd_decay_ratio5
  is 'Ratio of decayed to sound wood weight of CWD indicated by decay class 5';
comment on column fs_fiadb.ref_species.dwm_carbon_ratio
  is 'Ratio of carbon to dry wood weight';
comment on column fs_fiadb.ref_species.carbon_ratio_live
  is 'The Biomass to Carbon ration for a live tree.';
comment on column fs_fiadb.ref_species.drywt_to_greenwt_conversion
  is 'A coefficient used to convert oven-dry weight to green weight';
comment on column fs_fiadb.ref_species.created_date
  is 'The date on which the TAXA record was originally created.';
comment on column fs_fiadb.ref_species.modified_date
  is 'The date on which the TAXA record was last modified.';