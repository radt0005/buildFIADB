-- Create table
create table FS_FIADB.PLOTGEOM
(
  cn                   VARCHAR(34) not null,
  statecd              DOUBLE PRECISION,
  invyr                DOUBLE PRECISION,
  unitcd               DOUBLE PRECISION,
  countycd             DOUBLE PRECISION,
  plot                 DOUBLE PRECISION,
  lat                  DOUBLE PRECISION,
  lon                  DOUBLE PRECISION,
  congcd               DOUBLE PRECISION,
  ecosubcd             VARCHAR(7),
  huc                  DOUBLE PRECISION,
  emap_hex             DOUBLE PRECISION,
  fipscounty           DOUBLE PRECISION,
  roadlesscd           VARCHAR(4),
  created_by           VARCHAR(30),
  created_date         TIMESTAMP(0),
  created_in_instance  INT,
  modified_by          VARCHAR(30),
  modified_date        TIMESTAMP(0),
  modified_in_instance INT,
  alp_adforcd          DOUBLE PRECISION,
  fvs_variant          VARCHAR(2),
  fvs_loc_cd           INT,
  fvs_region           SMALLINT,
  fvs_forest           SMALLINT,
  fvs_district         SMALLINT);
-- Add comments to the table 
comment on table FS_FIADB.PLOTGEOM
  is '6.0';
-- Add comments to the columns 
comment on column FS_FIADB.PLOTGEOM.cn
  is 'Sequence number on corresponding plot record (ought to be renamed plt_cn)';
comment on column FS_FIADB.PLOTGEOM.statecd
  is 'State Code';
comment on column FS_FIADB.PLOTGEOM.invyr
  is 'Inventory year';
comment on column FS_FIADB.PLOTGEOM.unitcd
  is 'Survey unit code';
comment on column FS_FIADB.PLOTGEOM.countycd
  is 'County Code';
comment on column FS_FIADB.PLOTGEOM.plot
  is 'P2 Plot number';
comment on column FS_FIADB.PLOTGEOM.lat
  is 'Fuzzed and swapped lat';
comment on column FS_FIADB.PLOTGEOM.lon
  is 'Fuzzed and swapped lon';
comment on column FS_FIADB.PLOTGEOM.congcd
  is 'Congressional district code';
comment on column FS_FIADB.PLOTGEOM.ecosubcd
  is 'Ecological subsection code';
comment on column FS_FIADB.PLOTGEOM.huc
  is 'Hydrological unit code 8-digit';
comment on column FS_FIADB.PLOTGEOM.emap_hex
  is '5-digit numbered hexagons approximately 160,304.4 acres';
comment on column FS_FIADB.PLOTGEOM.fipscounty
  is 'County code based on fuzzed and swapped plot location';
comment on column FS_FIADB.PLOTGEOM.roadlesscd
  is 'Inventoried roadless area code based on fuzzed and swapped plot location';
comment on column FS_FIADB.PLOTGEOM.created_by
  is 'Created by';
comment on column FS_FIADB.PLOTGEOM.created_date
  is 'Created Date';
comment on column FS_FIADB.PLOTGEOM.created_in_instance
  is 'Created in Instance';
comment on column FS_FIADB.PLOTGEOM.modified_by
  is 'Modified by';
comment on column FS_FIADB.PLOTGEOM.modified_date
  is 'Modified Date';
comment on column FS_FIADB.PLOTGEOM.modified_in_instance
  is 'Modified in Instance';
comment on column FS_FIADB.PLOTGEOM.alp_adforcd
  is 'Administrative forest code';
comment on column FS_FIADB.PLOTGEOM.fvs_variant
  is 'Forest Vegetation Simulator (FVS) variant code';
comment on column FS_FIADB.PLOTGEOM.fvs_loc_cd
  is 'Forest Vegetation Simulator location code';
comment on column FS_FIADB.PLOTGEOM.fvs_region
  is 'Forest Vegetation Simulator Region code';
comment on column FS_FIADB.PLOTGEOM.fvs_forest
  is 'Forest Vegetation Simulator Forest code';
comment on column FS_FIADB.PLOTGEOM.fvs_district
  is 'Forest Vegetation Simulator District Code';

-- Create/Recreate indexes 
create index PLOTGEOM_IDX on FS_FIADB.PLOTGEOM (STATECD, INVYR, UNITCD, COUNTYCD, PLOT);
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.PLOTGEOM
  add constraint PLOTGEOM_PK primary key (CN);
alter table FS_FIADB.PLOTGEOM
  add constraint PLOTGEOM_PLT_FK foreign key (CN)
  references FS_FIADB.PLOT (CN);