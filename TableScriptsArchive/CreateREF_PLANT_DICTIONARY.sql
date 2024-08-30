-- Create table
create table FS_FIADB.REF_PLANT_DICTIONARY
(
  cn                       VARCHAR(34) not null,
  symbol_type              VARCHAR(20) not null,
  symbol                   VARCHAR(16) not null,
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
-- Add comments to the table 
comment on table FS_FIADB.REF_PLANT_DICTIONARY
  is '6.0';
-- Add comments to the columns 
comment on column FS_FIADB.REF_PLANT_DICTIONARY.cn
  is 'Sequence number (surrogate primary key';
comment on column FS_FIADB.REF_PLANT_DICTIONARY.symbol_type
  is 'Symbol Type describes the type of NRCS symbol (from 2010 download): Species - accepted symbol identified to species, subspecies or variety; Genus - accepted symbol identified to Genus;  Old - synonym symbol for an old scientific name; Unknown - symbol to identify generic categories of unknown plants.';
comment on column FS_FIADB.REF_PLANT_DICTIONARY.symbol
  is 'Symbol is the NRCS code (2010 download) used to represent a plant species.';
comment on column FS_FIADB.REF_PLANT_DICTIONARY.scientific_name
  is 'Scientific Name for the plant symbol.';
comment on column FS_FIADB.REF_PLANT_DICTIONARY.new_symbol
  is 'New Symbol is only populated for Symbol Type ''Old''.  It represents the new NRCS accepted code that has been reclassified from the Old synonym symbol.';
comment on column FS_FIADB.REF_PLANT_DICTIONARY.new_scientific_name
  is 'New Scientific Namel is only populated for Symbol Type ''Old''.  It represents the new NRCS accepted scientific name that has been reclassified from the Old synonym scientific name.';
comment on column FS_FIADB.REF_PLANT_DICTIONARY.common_name
  is 'Common Name for the symbol.';
comment on column FS_FIADB.REF_PLANT_DICTIONARY.category
  is 'Category indicates the broad taxonomic category for the symbol: Dicot, Fern, Gymnosperm, Horsetail, Lycopod, Monocot, Psilophyte, Quillwort.  (Please note that Unknown symbols do not have a category.)';
comment on column FS_FIADB.REF_PLANT_DICTIONARY.family
  is 'Plant Family of symbol';
comment on column FS_FIADB.REF_PLANT_DICTIONARY.growth_habit
  is 'Growth Habit of symbol according to NRCS 2010: Forb/herb, Graminoid, Liana, Shrub, Subshrub, Tree, Vine.  Some plants have different Growth Habits depending on environment or location, so a plant can have more than one value.  Genus codes were not populated by NRCS, but FIA summarized the NRCS list for all species within the Genus.';
comment on column FS_FIADB.REF_PLANT_DICTIONARY.duration
  is 'Duration of plant according to NRCS 2010: Annual, Biennial, Perennial, Unknown.  Some plants have different Durations depending on environment or location, so a plant can have more than one value.';
comment on column FS_FIADB.REF_PLANT_DICTIONARY.us_nativity
  is 'US Nativity of symbol.  A plant that is native to any part of the US is considered Native, even if some populations within the United States are introduced.  However, a plant like dandelion (Taraxacum officinale) with some populations that are native to the US and some that are native to another country is considered Native and Introduced.';
comment on column FS_FIADB.REF_PLANT_DICTIONARY.state_distribution
  is 'State Distribution of plant according to NRCS 2010.  Genus codes were not populated by NRCS, but FIA summarized the NRCS list for all species within the Genus.';
comment on column FS_FIADB.REF_PLANT_DICTIONARY.state_and_province
  is 'State and Province distribution of plant according to NRCS 2010.';
comment on column FS_FIADB.REF_PLANT_DICTIONARY.scientific_name_w_author
  is 'Scientific name with author';
comment on column FS_FIADB.REF_PLANT_DICTIONARY.genera_binomial_author
  is 'Genera binomial author';
comment on column FS_FIADB.REF_PLANT_DICTIONARY.trinomial_author
  is 'Trinomial author';
comment on column FS_FIADB.REF_PLANT_DICTIONARY.quadrinomial_author
  is 'Quadrinomial author';
comment on column FS_FIADB.REF_PLANT_DICTIONARY.xgenus
  is 'Cross-Genus hybridization indicator.';
comment on column FS_FIADB.REF_PLANT_DICTIONARY.genus
  is 'Genus';
comment on column FS_FIADB.REF_PLANT_DICTIONARY.xspecies
  is 'Cross-Species hybridization indicator.';
comment on column FS_FIADB.REF_PLANT_DICTIONARY.species
  is 'Species';
comment on column FS_FIADB.REF_PLANT_DICTIONARY.ssp
  is 'Subspecies indicator ''ssp.''';
comment on column FS_FIADB.REF_PLANT_DICTIONARY.xsubspecies
  is 'Cross-Subspecies hybridization indicator.';
comment on column FS_FIADB.REF_PLANT_DICTIONARY.subspecies
  is 'Subspecies';
comment on column FS_FIADB.REF_PLANT_DICTIONARY.var
  is 'Variety indicator ''var.''';
comment on column FS_FIADB.REF_PLANT_DICTIONARY.xvariety
  is 'Cross-Variety hybridization indicator.';
comment on column FS_FIADB.REF_PLANT_DICTIONARY.variety
  is 'Variety';
comment on column FS_FIADB.REF_PLANT_DICTIONARY.subvar
  is 'Subspecies indicator ''subvar.''';
comment on column FS_FIADB.REF_PLANT_DICTIONARY.subvariety
  is 'Subvariety';
comment on column FS_FIADB.REF_PLANT_DICTIONARY.f
  is 'Forma indicator ''f.''';
comment on column FS_FIADB.REF_PLANT_DICTIONARY.forma
  is 'Forma';
comment on column FS_FIADB.REF_PLANT_DICTIONARY.notes
  is 'Notes';
comment on column FS_FIADB.REF_PLANT_DICTIONARY.created_by
  is 'Created by';
comment on column FS_FIADB.REF_PLANT_DICTIONARY.created_date
  is 'Created Date';
comment on column FS_FIADB.REF_PLANT_DICTIONARY.created_in_instance
  is 'Created in Instance';
comment on column FS_FIADB.REF_PLANT_DICTIONARY.modified_by
  is 'Modified by';
comment on column FS_FIADB.REF_PLANT_DICTIONARY.modified_date
  is 'Modified Date';
comment on column FS_FIADB.REF_PLANT_DICTIONARY.modified_in_instance
  is 'Modified in Instance';
-- Create/Recreate indexes 
create index RPD_COMMON_NAME_I on FS_FIADB.REF_PLANT_DICTIONARY (COMMON_NAME);
create index RPD_SCI_NAME_I on FS_FIADB.REF_PLANT_DICTIONARY (SCIENTIFIC_NAME);
create index RPD_SYMBOL_I on FS_FIADB.REF_PLANT_DICTIONARY (SYMBOL);
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.REF_PLANT_DICTIONARY
  add constraint RPD_PK primary key (CN);
alter table FS_FIADB.REF_PLANT_DICTIONARY
  add constraint RPD_UK unique (SYMBOL_TYPE, SYMBOL, NEW_SYMBOL);