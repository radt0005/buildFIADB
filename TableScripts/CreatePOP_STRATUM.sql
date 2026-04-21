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
created_date                 TIMESTAMP(0),
modified_date                TIMESTAMP(0),
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
comment on column fs_fiadb.pop_stratum.created_date
  is 'NA';
comment on column fs_fiadb.pop_stratum.modified_date
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
create index POP_STRATUM_EVALID_RSCD on FS_FIADB.POP_STRATUM (RSCD, EVALID);
create index PSM_PEU_FK_I on FS_FIADB.POP_STRATUM (ESTN_UNIT_CN);
alter table FS_FIADB.POP_STRATUM add constraint PSM_PK primary key (CN);
alter table FS_FIADB.POP_STRATUM add constraint PSM_UK unique (ESTN_UNIT, EVALID, RSCD, STRATUMCD);
alter table FS_FIADB.POP_STRATUM add constraint PSM_PEU_FK foreign key (ESTN_UNIT_CN) references FS_FIADB.POP_ESTN_UNIT (CN);