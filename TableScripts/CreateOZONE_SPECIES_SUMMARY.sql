CREATE TABLE fs_fiadb.ozone_species_summary
(
cn             VARCHAR(34) NOT NULL,
invyr          INTEGER NOT NULL,
statecd        INTEGER NOT NULL,
countycd       INTEGER NOT NULL,
o3plot         DOUBLE PRECISION NOT NULL,
field_id       INTEGER NOT NULL,
split_plotid   INTEGER NOT NULL,
ground_loc_cd  INTEGER NOT NULL,
measyear       INTEGER NOT NULL,
biospcd        DOUBLE PRECISION NOT NULL,
amnt_max       DOUBLE PRECISION NOT NULL,
amnt_min       DOUBLE PRECISION NOT NULL,
amnt_mean      DOUBLE PRECISION NOT NULL,
svrty_max      DOUBLE PRECISION NOT NULL,
svrty_min      DOUBLE PRECISION NOT NULL,
svrty_mean     DOUBLE PRECISION NOT NULL,
plant_inj_cnt  DOUBLE PRECISION NOT NULL,
plant_eval_cnt DOUBLE PRECISION NOT NULL,
plant_ratio    DOUBLE PRECISION NOT NULL,
biospcd_sum    DOUBLE PRECISION NOT NULL,
biospcd_index  DOUBLE PRECISION NOT NULL,
elev           INTEGER,
pltsize        DOUBLE PRECISION,
aspect         INTEGER,
terrpos        DOUBLE PRECISION,
soildpth       DOUBLE PRECISION,
soildrn        DOUBLE PRECISION,
plotwet        DOUBLE PRECISION,
pltdstrb       DOUBLE PRECISION,
created_date   TIMESTAMP(0),
modified_date  TIMESTAMP(0)
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
comment on column fs_fiadb.ozone_species_summary.created_date
  is 'NA';
comment on column fs_fiadb.ozone_species_summary.modified_date
  is 'NA';
alter table FS_FIADB.OZONE_SPECIES_SUMMARY add constraint OSY_PK primary key (CN);
alter table FS_FIADB.OZONE_SPECIES_SUMMARY add constraint OSY_UK unique (COUNTYCD, INVYR, STATECD, BIOSPCD, O3PLOT);