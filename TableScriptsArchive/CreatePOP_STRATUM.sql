-- Create table
create table FS_FIADB.POP_STRATUM
(
  cn                           VARCHAR(34) not null,
  estn_unit_cn                 VARCHAR(34) not null,
  rscd                         SMALLINT not null,
  evalid                       INT not null,
  estn_unit                    INT not null,
  stratumcd                    INT not null,
  stratum_descr                VARCHAR(255) not null,
  statecd                      SMALLINT not null,
  p1pointcnt                   BIGINT,
  p2pointcnt                   BIGINT,
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
  ADJ_FACTOR_GRNDLYR_MICROQUAD      DOUBLE PRECISION,
  adj_factor_soil	       DOUBLE PRECISION

);
-- Add comments to the table
comment on table FS_FIADB.POP_STRATUM
  is '6.0';
-- Add comments to the columns
comment on column FS_FIADB.POP_STRATUM.adj_factor_macr
  is 'Ratio of area that was sampled on the 57.9 foot macroplot for all partially and fully sampled plots in stratum.';
comment on column FS_FIADB.POP_STRATUM.adj_factor_subp
  is 'Ratio of area that was sampled on the 24 foot subplot for all partially and fully sampled plots in stratum.';
comment on column FS_FIADB.POP_STRATUM.adj_factor_micr
  is 'Ratio of area that was sampled on the 6.8 foot microplot for all partially and fully sampled plots in stratum.';
comment on column FS_FIADB.POP_STRATUM.adj_factor_cwd
  is 'Ratio of transect length that was sampled for coarse woody debris on all partially and fully sampled plots in stratum.';
comment on column FS_FIADB.POP_STRATUM.adj_factor_fwd_sm
  is 'Ratio of transect length that was sampled for small fine woody debris on all partially and fully sampled plots in stratum .';
comment on column FS_FIADB.POP_STRATUM.adj_factor_fwd_lg
  is 'Ratio of transect length that was sampled for large fine woody debris on all partially and fully sampled plots in stratum.';
comment on column FS_FIADB.POP_STRATUM.adj_factor_duff
  is 'Ratio of points that were sampled for duff and litter to target number of points for all partially and fully sampled plots in stratum.';
comment on column FS_FIADB.POP_STRATUM.adj_factor_pile
  is 'Ratio of target divided by sampled transect length or area for piles on all partially and fully sampled plots in stratum.';
comment on column FS_FIADB.POP_STRATUM.adj_factor_regen_micr
  is 'For plots that implement the optional Regeneration indicator this is the ratio of the total area of the microplot footprint to the area of the microplot footprint that was actually sampled. This value will be equal to or greater than 1.';
comment on column FS_FIADB.POP_STRATUM.adj_factor_inv_subp
  is 'For plots that implement the optional Invasive Species indicator this is the ratio of the total area of the subplot footprint to the area of the subplot footprint that was actually sampled. This value will be equal to or greater than 1.';
comment on column FS_FIADB.POP_STRATUM.adj_factor_p2veg_subp
  is 'For plots that implement the optional Phase 2 Vegetation Profile indicator this is the ratio of the total area of the subplot footprint to the area of the subplot footprint that was actually sampled. This value will be equal to or greater than 1.';
comment on column FS_FIADB.POP_STRATUM.ADJ_FACTOR_GRNDLYR_MICROQUAD
  is 'For plots that implement the optional Ground Layer indicator this is the ratio of the total area of the micro-quad footprint to the area of the micro-quad footprint that was actually sampled. This value will be equal to or greater than 1.';
comment on column FS_FIADB.POP_STRATUM.adj_factor_soil
  is 'another adjustment factor';

-- Create/Recreate indexes
create index PSM_PEU_FK_I on FS_FIADB.POP_STRATUM (ESTN_UNIT_CN);
-- Create/Recreate primary, unique and foreign key constraints
alter table FS_FIADB.POP_STRATUM
  add constraint PSM_PK primary key (CN);
alter table FS_FIADB.POP_STRATUM
  add constraint PSM_UK unique (RSCD, EVALID, ESTN_UNIT, STRATUMCD);
alter table FS_FIADB.POP_STRATUM
  add constraint PSM_PEU_FK foreign key (ESTN_UNIT_CN)
  references FS_FIADB.POP_ESTN_UNIT (CN);
