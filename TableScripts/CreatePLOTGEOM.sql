CREATE TABLE fs_fiadb.plotgeom
(
cn            VARCHAR(34) NOT NULL,
statecd       DOUBLE PRECISION,
invyr         DOUBLE PRECISION,
unitcd        DOUBLE PRECISION,
countycd      DOUBLE PRECISION,
plot          INTEGER,
lat           DOUBLE PRECISION,
lon           DOUBLE PRECISION,
congcd        DOUBLE PRECISION,
ecosubcd      VARCHAR(7),
huc           DOUBLE PRECISION,
emap_hex      DOUBLE PRECISION,
fipscounty    DOUBLE PRECISION,
roadlesscd    VARCHAR(4),
created_date  TIMESTAMP(0),
modified_date TIMESTAMP(0),
alp_adforcd   DOUBLE PRECISION,
fvs_variant   VARCHAR(2),
fvs_loc_cd    INTEGER,
fvs_region    INTEGER,
fvs_forest    INTEGER,
fvs_district  INTEGER,
eco_unit_pnw  VARCHAR(10),
precipitation DOUBLE PRECISION
);
create index PLOTGEOM_IDX on FS_FIADB.PLOTGEOM (STATECD, INVYR, UNITCD, COUNTYCD, PLOT);
alter table FS_FIADB.PLOTGEOM add constraint PLOTGEOM_PK primary key (CN);
alter table FS_FIADB.PLOTGEOM add constraint PLOTGEOM_PLT_FK foreign key (CN) references FS_FIADB.PLOT (CN);