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
create index RPD_SCI_NAME_I on FS_FIADB.REF_PLANT_DICTIONARY (SCIENTIFIC_NAME);
create index RPD_SYMBOL_I on FS_FIADB.REF_PLANT_DICTIONARY (SYMBOL);
create index RPD_COMMON_NAME_I on FS_FIADB.REF_PLANT_DICTIONARY (COMMON_NAME);
alter table FS_FIADB.REF_PLANT_DICTIONARY add constraint RPD_PK primary key (CN);
alter table FS_FIADB.REF_PLANT_DICTIONARY add constraint RPD_UK unique (SYMBOL_TYPE, SYMBOL, NEW_SYMBOL);