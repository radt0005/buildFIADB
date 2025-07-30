CREATE TABLE fs_fiadb.soils_erosion
(
cn            VARCHAR(34) NOT NULL,
plt_cn        VARCHAR(34) NOT NULL,
invyr         INTEGER NOT NULL,
statecd       INTEGER NOT NULL,
countycd      INTEGER NOT NULL,
plot          INTEGER NOT NULL,
subp          INTEGER NOT NULL,
measyear      INTEGER NOT NULL,
soilspct      DOUBLE PRECISION,
compcpct      DOUBLE PRECISION,
typrtdcd      DOUBLE PRECISION,
typcmpcd      DOUBLE PRECISION,
typareacd     DOUBLE PRECISION,
typothrcd     DOUBLE PRECISION,
created_date  TIMESTAMP(0),
modified_date TIMESTAMP(0)
);
comment on column fs_fiadb.soils_erosion.cn
  is 'Unique Index';
comment on column fs_fiadb.soils_erosion.plt_cn
  is 'Foreign Key to NIMS_PLOT';
comment on column fs_fiadb.soils_erosion.invyr
  is 'NA';
comment on column fs_fiadb.soils_erosion.statecd
  is 'state code';
comment on column fs_fiadb.soils_erosion.countycd
  is 'County Code';
comment on column fs_fiadb.soils_erosion.plot
  is 'P2 Plot Number';
comment on column fs_fiadb.soils_erosion.subp
  is 'Subplot Number';
comment on column fs_fiadb.soils_erosion.measyear
  is 'Measurement Year';
comment on column fs_fiadb.soils_erosion.soilspct
  is '% Bare Soil';
comment on column fs_fiadb.soils_erosion.compcpct
  is '% Compacted Area';
comment on column fs_fiadb.soils_erosion.typrtdcd
  is 'Rutted trail';
comment on column fs_fiadb.soils_erosion.typcmpcd
  is 'Compacted Trail';
comment on column fs_fiadb.soils_erosion.typareacd
  is 'Compacted Area';
comment on column fs_fiadb.soils_erosion.typothrcd
  is 'Other Type of Compaction';
comment on column fs_fiadb.soils_erosion.created_date
  is 'Created Date';
comment on column fs_fiadb.soils_erosion.modified_date
  is 'Modified Date';
create index SEN_NAT_I on FS_FIADB.SOILS_EROSION (SUBP, INVYR, STATECD, COUNTYCD, PLOT);
alter table FS_FIADB.SOILS_EROSION add constraint SEN_PK primary key (CN);
alter table FS_FIADB.SOILS_EROSION add constraint SEN_UK unique (SUBP, PLT_CN);