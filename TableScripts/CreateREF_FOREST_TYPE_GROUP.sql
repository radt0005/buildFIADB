CREATE TABLE fs_fiadb.ref_forest_type_group
(
value               INTEGER NOT NULL,
meaning             VARCHAR(80),
abbr                VARCHAR(40),
duff_density        DECIMAL(12,10),
duff_carbon_ratio   DECIMAL(12,11),
litter_density      DECIMAL(12,10),
litter_carbon_ratio DECIMAL(12,11),
pile_density        DECIMAL(12,10),
pile_carbon_ratio   DECIMAL(12,11),
pile_decay_ratio    DECIMAL(12,11),
fwd_density         DECIMAL(12,10),
fwd_carbon_ratio    DECIMAL(12,11),
fwd_decay_ratio     DECIMAL(12,11),
fwd_small_qmd       DECIMAL(12,10),
fwd_medium_qmd      DECIMAL(12,10),
fwd_large_qmd       DECIMAL(12,10),
created_date        TIMESTAMP(0),
modified_date       TIMESTAMP(0)
);
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
comment on column fs_fiadb.ref_forest_type_group.created_date
  is 'Created Date';
comment on column fs_fiadb.ref_forest_type_group.modified_date
  is 'Modified Date';
alter table FS_FIADB.REF_FOREST_TYPE_GROUP add constraint FTGP_PK primary key (VALUE);