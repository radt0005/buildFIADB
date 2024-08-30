-- Create table
create table FS_FIADB.OZONE_SPECIES_SUMMARY
(
  cn                   VARCHAR(34) not null,
  invyr                SMALLINT not null,
  statecd              SMALLINT not null,
  countycd             SMALLINT not null,
  o3plot               DOUBLE PRECISION not null,
  field_id             INT not null,
  split_plotid         SMALLINT not null,
  ground_loc_cd        SMALLINT default 1 not null,
  measyear             SMALLINT not null,
  biospcd              DOUBLE PRECISION not null,
  amnt_max             DOUBLE PRECISION not null,
  amnt_min             DOUBLE PRECISION not null,
  amnt_mean            DOUBLE PRECISION not null,
  svrty_max            DOUBLE PRECISION not null,
  svrty_min            DOUBLE PRECISION not null,
  svrty_mean           DOUBLE PRECISION not null,
  plant_inj_cnt        DOUBLE PRECISION not null,
  plant_eval_cnt       DOUBLE PRECISION not null,
  plant_ratio          DOUBLE PRECISION not null,
  biospcd_sum          DOUBLE PRECISION not null,
  biospcd_index        DOUBLE PRECISION not null,
  elev                 INT,
  pltsize              DOUBLE PRECISION,
  aspect               SMALLINT,
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
-- Add comments to the table 
comment on table FS_FIADB.OZONE_SPECIES_SUMMARY
  is '6.0';
-- Add comments to the columns 
comment on column FS_FIADB.OZONE_SPECIES_SUMMARY.field_id
  is 'the 7-digit number used by the field crew for all current and active biosites';
comment on column FS_FIADB.OZONE_SPECIES_SUMMARY.ground_loc_cd
  is 'GROUND_LOC_CD = 1 means the GPS values stayed the same from one year to the next.  GROUND_LOC_CD = 2 means the biosite has been moved more than 3 miles and has a second set of GPS values.  GROUND_LOC_CD = 3 means the biosite has moved more than 3 miles for a third time and has a third set of GPS values.';
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.OZONE_SPECIES_SUMMARY
  add constraint OSY_PK primary key (CN);
alter table FS_FIADB.OZONE_SPECIES_SUMMARY
  add constraint OSY_UK unique (STATECD, INVYR, COUNTYCD, O3PLOT, BIOSPCD);