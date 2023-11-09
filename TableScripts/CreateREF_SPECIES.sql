-- Create table
create table FS_FIADB.REF_SPECIES
(
  cn                           VARCHAR(34) not null,
  spcd                         DOUBLE PRECISION not null,
  common_name                  VARCHAR(100),
  shared_common_name_ind       VARCHAR(1),
  genus                        VARCHAR(40),
  species                      VARCHAR(50),
  variety                      VARCHAR(50),
  subspecies                   VARCHAR(50),
  species_symbol               VARCHAR(8) not null,
  e_spgrpcd                    SMALLINT not null,
  w_spgrpcd                    SMALLINT not null,
  c_spgrpcd                    SMALLINT,
  p_spgrpcd                    SMALLINT,
  woodland                     VARCHAR(1),
  sftwd_hrdwd                  VARCHAR(1),
  major_spgrpcd                SMALLINT not null,
  stocking_spgrpcd             SMALLINT,
  forest_type_spgrpcd          SMALLINT,
  core                         VARCHAR(1) default 'Y' not null,
  east                         VARCHAR(1),
  west                         VARCHAR(1),
  caribbean                    VARCHAR(1),
  pacific                      VARCHAR(1),
  exists_in_ncrs               VARCHAR(1),
  exists_in_ners               VARCHAR(1),
  exists_in_pnwrs              VARCHAR(1),
  exists_in_rmrs               VARCHAR(1),
  exists_in_srs                VARCHAR(1),
  sitetree                     VARCHAR(1),
  st_exists_in_ncrs            VARCHAR(1),
  st_exists_in_ners            VARCHAR(1),
  st_exists_in_pnwrs           VARCHAR(1),
  st_exists_in_rmrs            VARCHAR(1),
  st_exists_in_srs             VARCHAR(1),
  jenkins_spgrpcd              SMALLINT,
  jenkins_total_b1             DECIMAL(8,5),
  jenkins_total_b2             DECIMAL(8,5),
  jenkins_stem_wood_ratio_b1   DECIMAL(8,5),
  jenkins_stem_wood_ratio_b2   DECIMAL(8,5),
  jenkins_stem_bark_ratio_b1   DECIMAL(8,5),
  jenkins_stem_bark_ratio_b2   DECIMAL(8,5),
  jenkins_foliage_ratio_b1     DECIMAL(8,5),
  jenkins_foliage_ratio_b2     DECIMAL(8,5),
  jenkins_root_ratio_b1        DECIMAL(8,5),
  jenkins_root_ratio_b2        DECIMAL(8,5),
  jenkins_sapling_adjustment   DECIMAL(8,5),
  drywt_to_greenwt_conversion  DOUBLE PRECISION,
  wood_spgr_greenvol_drywt     DECIMAL(8,5),
  wood_spgr_greenvol_drywt_cit INT,
  bark_spgr_greenvol_drywt     DECIMAL(8,5),
  bark_spgr_greenvol_drywt_cit INT,
  mc_pct_green_bark            DECIMAL(8,5),
  mc_pct_green_bark_cit        INT,
  mc_pct_green_wood            DECIMAL(8,5),
  mc_pct_green_wood_cit        INT,
  wood_spgr_mc12vol_drywt      DECIMAL(8,5),
  wood_spgr_mc12vol_drywt_cit  INT,
  bark_vol_pct                 DECIMAL(8,5),
  bark_vol_pct_cit             INT,
  raile_stump_dob_b1           DECIMAL(8,5),
  raile_stump_dib_b1           DECIMAL(8,5),
  raile_stump_dib_b2           DECIMAL(8,5),
  cwd_decay_ratio1             DECIMAL(6,5),
  cwd_decay_ratio2             DECIMAL(6,5),
  cwd_decay_ratio3             DECIMAL(6,5),
  cwd_decay_ratio4             DECIMAL(6,5),
  cwd_decay_ratio5             DECIMAL(6,5),
  dwm_carbon_ratio             DECIMAL(6,5),
  standing_dead_decay_ratio1   DECIMAL(6,5),
  standing_dead_decay_ratio2   DECIMAL(6,5),
  standing_dead_decay_ratio3   DECIMAL(6,5),
  standing_dead_decay_ratio4   DECIMAL(6,5),
  standing_dead_decay_ratio5   DECIMAL(6,5),
  carbon_ratio_live            DECIMAL(4,3),
  manual_start                 DECIMAL(3,1) not null,
  manual_end                   DECIMAL(3,1),
  created_by                   VARCHAR(30),
  created_date                 TIMESTAMP(0),
  created_in_instance          VARCHAR(6),
  modified_by                  VARCHAR(30),
  modified_date                TIMESTAMP(0),
  modified_in_instance         VARCHAR(6)
);
-- Add comments to the table 
comment on table FS_FIADB.REF_SPECIES
  is '6.0';
-- Add comments to the columns 
comment on column FS_FIADB.REF_SPECIES.spcd
  is 'FIA species code';
comment on column FS_FIADB.REF_SPECIES.common_name
  is 'Common name';
comment on column FS_FIADB.REF_SPECIES.genus
  is 'Genus';
comment on column FS_FIADB.REF_SPECIES.species
  is 'Species';
comment on column FS_FIADB.REF_SPECIES.variety
  is 'Variety';
comment on column FS_FIADB.REF_SPECIES.subspecies
  is 'Subspecies';
comment on column FS_FIADB.REF_SPECIES.species_symbol
  is 'NRCS Plant code';
comment on column FS_FIADB.REF_SPECIES.e_spgrpcd
  is 'FIADB species group assignment for eastern species';
comment on column FS_FIADB.REF_SPECIES.w_spgrpcd
  is 'FIADB species group assignment for western species';
comment on column FS_FIADB.REF_SPECIES.c_spgrpcd
  is 'FIADB species group assignment for Caribbean species';
comment on column FS_FIADB.REF_SPECIES.p_spgrpcd
  is 'FIADB species group assignment for Pacific species';
comment on column FS_FIADB.REF_SPECIES.major_spgrpcd
  is '1=pine, 2=oth conf, 3=soft hrdwd, 4=hard hrdwd';
comment on column FS_FIADB.REF_SPECIES.stocking_spgrpcd
  is 'species group assignment for Arner stocking equations';
comment on column FS_FIADB.REF_SPECIES.forest_type_spgrpcd
  is 'species group assignment for Arner forest typing';
comment on column FS_FIADB.REF_SPECIES.exists_in_ncrs
  is 'species found in North Central Research Station states';
comment on column FS_FIADB.REF_SPECIES.exists_in_ners
  is 'species found in Northeastern Research Station states';
comment on column FS_FIADB.REF_SPECIES.exists_in_pnwrs
  is 'species found in Pacific Northwest Research Station states';
comment on column FS_FIADB.REF_SPECIES.exists_in_rmrs
  is 'species found in Rocky Mountain Research Station states';
comment on column FS_FIADB.REF_SPECIES.exists_in_srs
  is 'species found in Southern Research Station states';
comment on column FS_FIADB.REF_SPECIES.sitetree
  is 'Species is a sitetree';
comment on column FS_FIADB.REF_SPECIES.sftwd_hrdwd
  is 'Softwood or Hardwood';
comment on column FS_FIADB.REF_SPECIES.st_exists_in_ncrs
  is 'Sitetree Exists In NCRS';
comment on column FS_FIADB.REF_SPECIES.st_exists_in_ners
  is 'Sitetree Exists In NERS';
comment on column FS_FIADB.REF_SPECIES.st_exists_in_pnwrs
  is 'Sitetree Exists In PNWRS';
comment on column FS_FIADB.REF_SPECIES.st_exists_in_rmrs
  is 'Sitetree Exists In RMRS';
comment on column FS_FIADB.REF_SPECIES.st_exists_in_srs
  is 'Sitetree Exists In SRS';
comment on column FS_FIADB.REF_SPECIES.core
  is 'Core';
comment on column FS_FIADB.REF_SPECIES.east
  is 'East species';
comment on column FS_FIADB.REF_SPECIES.west
  is 'West species';
comment on column FS_FIADB.REF_SPECIES.caribbean
  is 'Caribbean species';
comment on column FS_FIADB.REF_SPECIES.pacific
  is 'Pacific species';
comment on column FS_FIADB.REF_SPECIES.woodland
  is 'Woodland species';
comment on column FS_FIADB.REF_SPECIES.manual_start
  is 'Manual start';
comment on column FS_FIADB.REF_SPECIES.manual_end
  is 'Manual end';
comment on column FS_FIADB.REF_SPECIES.jenkins_spgrpcd
  is 'Jenkins species group';
comment on column FS_FIADB.REF_SPECIES.jenkins_total_b1
  is 'Jenkins coefficient B1';
comment on column FS_FIADB.REF_SPECIES.jenkins_total_b2
  is 'Jenkins coefficient B2';
comment on column FS_FIADB.REF_SPECIES.jenkins_stem_wood_ratio_b1
  is 'Jenkins stem wood ratio B1';
comment on column FS_FIADB.REF_SPECIES.jenkins_stem_wood_ratio_b2
  is 'Jenkins stem wood ratio B2';
comment on column FS_FIADB.REF_SPECIES.jenkins_stem_bark_ratio_b1
  is 'Jenkins stem bark ratio B1';
comment on column FS_FIADB.REF_SPECIES.jenkins_stem_bark_ratio_b2
  is 'Jenkins stem bark ratio B2';
comment on column FS_FIADB.REF_SPECIES.jenkins_foliage_ratio_b1
  is 'Jenkins foliage ratio B1';
comment on column FS_FIADB.REF_SPECIES.jenkins_foliage_ratio_b2
  is 'Jenkins foliage ratio B2';
comment on column FS_FIADB.REF_SPECIES.jenkins_root_ratio_b1
  is 'Jenkins root ratio B1';
comment on column FS_FIADB.REF_SPECIES.jenkins_root_ratio_b2
  is 'Jenkins root ratio B2';
comment on column FS_FIADB.REF_SPECIES.jenkins_sapling_adjustment
  is 'Jenkins sapling adjustment factor';
comment on column FS_FIADB.REF_SPECIES.wood_spgr_greenvol_drywt
  is 'Green specific gravity wood (green volume and oven-dry weight)';
comment on column FS_FIADB.REF_SPECIES.wood_spgr_greenvol_drywt_cit
  is 'Green specific gravity wood citation';
comment on column FS_FIADB.REF_SPECIES.bark_spgr_greenvol_drywt
  is 'Green specific gravity bark (green volume and oven-dry weight)';
comment on column FS_FIADB.REF_SPECIES.bark_spgr_greenvol_drywt_cit
  is 'Green specific gravity bark citation';
comment on column FS_FIADB.REF_SPECIES.mc_pct_green_bark
  is 'Moisture content of green bark as a percent of oven-dry weight. Wood and bark is often sold based on green weight. The user is cautioned that green weights can be extremely variable geographically, seasonally, within species and across various portions of individual trees.';
comment on column FS_FIADB.REF_SPECIES.mc_pct_green_bark_cit
  is 'Citation for MC_PCT GREEN_BARK . The value of this variable can be linked to the corresponding value in the CITATION_NBR variable in the REF_CITATION table to find the source of the MC_PCT GREEN_BARK variable.';
comment on column FS_FIADB.REF_SPECIES.mc_pct_green_wood
  is 'Moisture content of green wood as a percent of oven-dry weight. Wood and bark is often sold based on green weight. The user is cautioned that green weights can be extremely variable geographically, seasonally, within species and across various portions of individual trees.';
comment on column FS_FIADB.REF_SPECIES.mc_pct_green_wood_cit
  is 'Citation for MC_PCT_GREEN_WOOD. The value of this variable can be linked to the corresponding value in the CITATION_NBR variable in the REF_CITATION table to find the source of the MC_PCT_GREEN_WOOD variable.';
comment on column FS_FIADB.REF_SPECIES.wood_spgr_mc12vol_drywt
  is 'Wood specific gravity (12 percent moisture content volume and oven-dry weight)';
comment on column FS_FIADB.REF_SPECIES.wood_spgr_mc12vol_drywt_cit
  is 'Wood specific gravity';
comment on column FS_FIADB.REF_SPECIES.bark_vol_pct
  is 'Bark volume as a percent of  wood volume';
comment on column FS_FIADB.REF_SPECIES.bark_vol_pct_cit
  is 'Bark volume as a percent of  wood volume citation';
comment on column FS_FIADB.REF_SPECIES.raile_stump_dob_b1
  is 'Raile stump coefficient B1';
comment on column FS_FIADB.REF_SPECIES.cwd_decay_ratio1
  is 'Ratio of decayed to sound wood weight of CWD indicated by decay class 1';
comment on column FS_FIADB.REF_SPECIES.cwd_decay_ratio2
  is 'Ratio of decayed to sound wood weight of CWD indicated by decay class 2';
comment on column FS_FIADB.REF_SPECIES.cwd_decay_ratio3
  is 'Ratio of decayed to sound wood weight of CWD indicated by decay class 3';
comment on column FS_FIADB.REF_SPECIES.cwd_decay_ratio4
  is 'Ratio of decayed to sound wood weight of CWD indicated by decay class 4';
comment on column FS_FIADB.REF_SPECIES.cwd_decay_ratio5
  is 'Ratio of decayed to sound wood weight of CWD indicated by decay class 5';
comment on column FS_FIADB.REF_SPECIES.dwm_carbon_ratio
  is 'Ratio of carbon to dry wood weight';
comment on column FS_FIADB.REF_SPECIES.standing_dead_decay_ratio1
  is 'Ratio of decayed wood density to undecayed wood density as indicated by decay class 1';
comment on column FS_FIADB.REF_SPECIES.standing_dead_decay_ratio2
  is 'Ratio of decayed wood density to undecayed wood density as indicated by decay class 2';
comment on column FS_FIADB.REF_SPECIES.standing_dead_decay_ratio3
  is 'Ratio of decayed wood density to undecayed wood density as indicated by decay class 3';
comment on column FS_FIADB.REF_SPECIES.standing_dead_decay_ratio4
  is 'Ratio of decayed wood density to undecayed wood density as indicated by decay class 4';
comment on column FS_FIADB.REF_SPECIES.standing_dead_decay_ratio5
  is 'Ratio of decayed wood density to undecayed wood density as indicated by decay class 5';
comment on column FS_FIADB.REF_SPECIES.created_by
  is 'Created by';
comment on column FS_FIADB.REF_SPECIES.created_date
  is 'Created Date';
comment on column FS_FIADB.REF_SPECIES.created_in_instance
  is 'Created in Instance';
comment on column FS_FIADB.REF_SPECIES.modified_by
  is 'Modified by';
comment on column FS_FIADB.REF_SPECIES.modified_date
  is 'Modified Date';
comment on column FS_FIADB.REF_SPECIES.modified_in_instance
  is 'Modified in Instance';
-- Create/Recreate indexes 
create index SPC_SGP_FK1_I on FS_FIADB.REF_SPECIES (E_SPGRPCD);
create index SPC_SGP_FK2_I on FS_FIADB.REF_SPECIES (W_SPGRPCD);
create index SPC_SGP_FK3_I on FS_FIADB.REF_SPECIES (C_SPGRPCD);
create index SPC_SGP_FK4_I on FS_FIADB.REF_SPECIES (P_SPGRPCD);
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.REF_SPECIES
  add constraint SPC_PK primary key (SPCD);
alter table FS_FIADB.REF_SPECIES
  add constraint SPC_UK unique (SPECIES_SYMBOL);
alter table FS_FIADB.REF_SPECIES
  add constraint SPC_SGP_FK1 foreign key (E_SPGRPCD)
  references FS_FIADB.REF_SPECIES_GROUP (SPGRPCD);
alter table FS_FIADB.REF_SPECIES
  add constraint SPC_SGP_FK2 foreign key (W_SPGRPCD)
  references FS_FIADB.REF_SPECIES_GROUP (SPGRPCD);
alter table FS_FIADB.REF_SPECIES
  add constraint SPC_SGP_FK3 foreign key (C_SPGRPCD)
  references FS_FIADB.REF_SPECIES_GROUP (SPGRPCD);
alter table FS_FIADB.REF_SPECIES
  add constraint SPC_SGP_FK4 foreign key (P_SPGRPCD)
  references FS_FIADB.REF_SPECIES_GROUP (SPGRPCD);
-- Create/Recreate check constraints 
alter table FS_FIADB.REF_SPECIES
  add constraint REF_SPECIES_CODE
  check (CORE in ('Y','N'));
