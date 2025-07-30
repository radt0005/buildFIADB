CREATE TABLE fs_fiadb.plotgeom
(
cn                   VARCHAR(34) NOT NULL,
statecd              DOUBLE PRECISION,
invyr                DOUBLE PRECISION,
unitcd               DOUBLE PRECISION,
countycd             DOUBLE PRECISION,
plot                 INTEGER,
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
created_in_instance  INTEGER,
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance INTEGER,
alp_adforcd          DOUBLE PRECISION,
fvs_variant          VARCHAR(2),
fvs_loc_cd           INTEGER,
fvs_region           INTEGER,
fvs_forest           INTEGER,
fvs_district         INTEGER,
eco_unit_pnw         VARCHAR(10),
precipitation        DOUBLE PRECISION
);
comment on column fs_fiadb.plotgeom.cn
  is 'Sequence number on corresponding plot record (ought to be renamed plt_cn)';
comment on column fs_fiadb.plotgeom.statecd
  is 'State Code';
comment on column fs_fiadb.plotgeom.invyr
  is 'Inventory year';
comment on column fs_fiadb.plotgeom.unitcd
  is 'Survey unit code';
comment on column fs_fiadb.plotgeom.countycd
  is 'County Code';
comment on column fs_fiadb.plotgeom.plot
  is 'P2 Plot number';
comment on column fs_fiadb.plotgeom.lat
  is 'Fuzzed and swapped lat';
comment on column fs_fiadb.plotgeom.lon
  is 'Fuzzed and swapped lon';
comment on column fs_fiadb.plotgeom.congcd
  is 'Congressional district code';
comment on column fs_fiadb.plotgeom.ecosubcd
  is 'Ecological subsection code';
comment on column fs_fiadb.plotgeom.huc
  is 'Hydrological unit code 8-digit';
comment on column fs_fiadb.plotgeom.emap_hex
  is '5-digit numbered hexagons approximately 160,304.4 acres';
comment on column fs_fiadb.plotgeom.fipscounty
  is 'County code based on fuzzed and swapped plot location';
comment on column fs_fiadb.plotgeom.roadlesscd
  is 'Inventoried roadless area code based on fuzzed and swapped plot location';
comment on column fs_fiadb.plotgeom.created_by
  is 'Created by';
comment on column fs_fiadb.plotgeom.created_date
  is 'Created Date';
comment on column fs_fiadb.plotgeom.created_in_instance
  is 'Created in Instance';
comment on column fs_fiadb.plotgeom.modified_by
  is 'Modified by';
comment on column fs_fiadb.plotgeom.modified_date
  is 'Modified Date';
comment on column fs_fiadb.plotgeom.modified_in_instance
  is 'Modified in Instance';
comment on column fs_fiadb.plotgeom.alp_adforcd
  is 'Administrative forest code';
comment on column fs_fiadb.plotgeom.fvs_variant
  is 'Forest Vegetation Simulator (FVS) variant code';
comment on column fs_fiadb.plotgeom.fvs_loc_cd
  is 'Forest Vegetation Simulator location code';
comment on column fs_fiadb.plotgeom.fvs_region
  is 'Forest Vegetation Simulator Region code';
comment on column fs_fiadb.plotgeom.fvs_forest
  is 'Forest Vegetation Simulator Forest code';
comment on column fs_fiadb.plotgeom.fvs_district
  is 'Forest Vegetation Simulator District Code';
comment on column fs_fiadb.plotgeom.eco_unit_pnw
  is 'The PNWRS ecological unit';
comment on column fs_fiadb.plotgeom.precipitation
  is 'The precipitation values assigned to the plot';
create index PLOTGEOM_IDX on FS_FIADB.PLOTGEOM (STATECD, INVYR, UNITCD, COUNTYCD, PLOT);
alter table FS_FIADB.PLOTGEOM add constraint PLOTGEOM_PK primary key (CN);
alter table FS_FIADB.PLOTGEOM add constraint PLOTGEOM_PLT_FK foreign key (CN) references FS_FIADB.PLOT (CN);