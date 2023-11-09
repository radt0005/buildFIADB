-- Create table
create table FS_FIADB.REF_FOREST_TYPE_GROUP
(
  value                SMALLINT not null,
  meaning              VARCHAR(80),
  abbr                 VARCHAR(40),
  duff_density         DECIMAL(12,10),
  duff_carbon_ratio    DECIMAL(12,11),
  litter_density       DECIMAL(12,10),
  litter_carbon_ratio  DECIMAL(12,11),
  pile_density         DECIMAL(12,10),
  pile_carbon_ratio    DECIMAL(12,11),
  pile_decay_ratio     DECIMAL(12,11),
  fwd_density          DECIMAL(12,10),
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
  modified_in_instance VARCHAR(6)
);
-- Add comments to the table 
comment on table FS_FIADB.REF_FOREST_TYPE_GROUP
  is '6.0';
-- Add comments to the columns 
comment on column FS_FIADB.REF_FOREST_TYPE_GROUP.value
  is 'Forest type group code';
comment on column FS_FIADB.REF_FOREST_TYPE_GROUP.meaning
  is 'Forest type group description';
comment on column FS_FIADB.REF_FOREST_TYPE_GROUP.abbr
  is 'Forest type group abbreviation';
comment on column FS_FIADB.REF_FOREST_TYPE_GROUP.duff_density
  is 'Average oven dry density of duff in pounds per cubic foot';
comment on column FS_FIADB.REF_FOREST_TYPE_GROUP.duff_carbon_ratio
  is 'Ratio of carbon weight to biomass of duff';
comment on column FS_FIADB.REF_FOREST_TYPE_GROUP.litter_density
  is 'Average oven dry density of litter in pounds per cubic foot';
comment on column FS_FIADB.REF_FOREST_TYPE_GROUP.litter_carbon_ratio
  is 'Ratio of carbon weight to biomass of litter';
comment on column FS_FIADB.REF_FOREST_TYPE_GROUP.pile_density
  is 'Average oven dry density of piles in pounds per cubic foot';
comment on column FS_FIADB.REF_FOREST_TYPE_GROUP.pile_carbon_ratio
  is 'Ratio of carbon weight to biomass of piles';
comment on column FS_FIADB.REF_FOREST_TYPE_GROUP.pile_decay_ratio
  is 'Ratio of decayed to sound wood weight of piles';
comment on column FS_FIADB.REF_FOREST_TYPE_GROUP.fwd_density
  is 'Average oven dry density of FWD in pounds per cubic foot';
comment on column FS_FIADB.REF_FOREST_TYPE_GROUP.fwd_carbon_ratio
  is 'Ratio of carbon weight to biomass of FWD';
comment on column FS_FIADB.REF_FOREST_TYPE_GROUP.fwd_decay_ratio
  is 'Ratio of decayed to sound wood weight of FWD';
comment on column FS_FIADB.REF_FOREST_TYPE_GROUP.fwd_small_qmd
  is 'Quadratic mean diameter of small FWD';
comment on column FS_FIADB.REF_FOREST_TYPE_GROUP.fwd_medium_qmd
  is 'Quadratic mean diameter of medium FWD';
comment on column FS_FIADB.REF_FOREST_TYPE_GROUP.fwd_large_qmd
  is 'Quadratic mean diameter of large FWD';
comment on column FS_FIADB.REF_FOREST_TYPE_GROUP.created_by
  is 'Created by';
comment on column FS_FIADB.REF_FOREST_TYPE_GROUP.created_date
  is 'Created Date';
comment on column FS_FIADB.REF_FOREST_TYPE_GROUP.created_in_instance
  is 'Created in Instance';
comment on column FS_FIADB.REF_FOREST_TYPE_GROUP.modified_by
  is 'Modified by';
comment on column FS_FIADB.REF_FOREST_TYPE_GROUP.modified_date
  is 'Modified Date';
comment on column FS_FIADB.REF_FOREST_TYPE_GROUP.modified_in_instance
  is 'Modified in Instance';
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.REF_FOREST_TYPE_GROUP
  add constraint FTGP_PK primary key (VALUE);