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
created_date             TIMESTAMP(0),
modified_date            TIMESTAMP(0)
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
  is 'New Symbol is only populated for Symbol Type Old.  It represents the new NRCS accepted code that has been reclassified from the Old synonym symbol.';
comment on column fs_fiadb.ref_plant_dictionary.new_scientific_name
  is 'New Scientific Namel is only populated for Symbol Type Old.  It represents the new NRCS accepted scientific name that has been reclassified from the Old synonym scientific name.';
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
  is 'Subspecies indicator ssp.';
comment on column fs_fiadb.ref_plant_dictionary.xsubspecies
  is 'Cross-Subspecies hybridization indicator.';
comment on column fs_fiadb.ref_plant_dictionary.subspecies
  is 'Subspecies';
comment on column fs_fiadb.ref_plant_dictionary.var
  is 'Variety indicator var.';
comment on column fs_fiadb.ref_plant_dictionary.xvariety
  is 'Cross-Variety hybridization indicator.';
comment on column fs_fiadb.ref_plant_dictionary.variety
  is 'Variety';
comment on column fs_fiadb.ref_plant_dictionary.subvar
  is 'Subspecies indicator subvar.';
comment on column fs_fiadb.ref_plant_dictionary.subvariety
  is 'Subvariety';
comment on column fs_fiadb.ref_plant_dictionary.f
  is 'Forma indicator f.';
comment on column fs_fiadb.ref_plant_dictionary.forma
  is 'Forma';
comment on column fs_fiadb.ref_plant_dictionary.notes
  is 'Field notes pertaining to this record';
comment on column fs_fiadb.ref_plant_dictionary.created_date
  is 'Created Date ';
comment on column fs_fiadb.ref_plant_dictionary.modified_date
  is 'Modified Date';
create index RPD_SYMBOL_I on FS_FIADB.REF_PLANT_DICTIONARY (SYMBOL);
create index RPD_COMMON_NAME_I on FS_FIADB.REF_PLANT_DICTIONARY (COMMON_NAME);
create index RPD_SCI_NAME_I on FS_FIADB.REF_PLANT_DICTIONARY (SCIENTIFIC_NAME);
alter table FS_FIADB.REF_PLANT_DICTIONARY add constraint RPD_PK primary key (CN);
alter table FS_FIADB.REF_PLANT_DICTIONARY add constraint RPD_UK unique (NEW_SYMBOL, SYMBOL_TYPE, SYMBOL);