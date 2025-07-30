CREATE TABLE fs_fiadb.p2veg_subplot_spp
(
cn              VARCHAR(34) NOT NULL,
plt_cn          VARCHAR(34) NOT NULL,
invyr           INTEGER NOT NULL,
statecd         INTEGER NOT NULL,
unitcd          INTEGER,
countycd        INTEGER NOT NULL,
plot            INTEGER NOT NULL,
subp            INTEGER NOT NULL,
condid          INTEGER NOT NULL,
veg_fldspcd     VARCHAR(10) NOT NULL,
unique_sp_nbr   INTEGER NOT NULL,
veg_spcd        VARCHAR(10) NOT NULL,
growth_habit_cd VARCHAR(2) NOT NULL,
layer           INTEGER NOT NULL,
cover_pct       INTEGER NOT NULL,
created_date    TIMESTAMP(0),
modified_date   TIMESTAMP(0),
cycle           INTEGER NOT NULL,
subcycle        INTEGER NOT NULL
);
comment on column fs_fiadb.p2veg_subplot_spp.cn
  is 'Sequence number (surrogate primary key';
comment on column fs_fiadb.p2veg_subplot_spp.plt_cn
  is 'Foreign key to Plot table CN';
comment on column fs_fiadb.p2veg_subplot_spp.invyr
  is 'Inventory year';
comment on column fs_fiadb.p2veg_subplot_spp.statecd
  is 'State code';
comment on column fs_fiadb.p2veg_subplot_spp.unitcd
  is 'Survey unit code';
comment on column fs_fiadb.p2veg_subplot_spp.countycd
  is 'County code';
comment on column fs_fiadb.p2veg_subplot_spp.plot
  is 'Plot number';
comment on column fs_fiadb.p2veg_subplot_spp.subp
  is 'Subplot number';
comment on column fs_fiadb.p2veg_subplot_spp.condid
  is 'Condition number';
comment on column fs_fiadb.p2veg_subplot_spp.veg_fldspcd
  is 'Veg Field Species Code';
comment on column fs_fiadb.p2veg_subplot_spp.unique_sp_nbr
  is 'Unique Species Number identifies the number of species occurrences within each NRCS genus or unknown code. For example, 2 unidentifiable CAREX species would be entered as 2 separate records with differing Unique Species Numbers to show that they are not the same species.';
comment on column fs_fiadb.p2veg_subplot_spp.veg_spcd
  is 'Veg Species Code';
comment on column fs_fiadb.p2veg_subplot_spp.growth_habit_cd
  is 'Species growth habit code';
comment on column fs_fiadb.p2veg_subplot_spp.layer
  is 'Species layer';
comment on column fs_fiadb.p2veg_subplot_spp.cover_pct
  is 'Species percent canopy cover';
comment on column fs_fiadb.p2veg_subplot_spp.created_date
  is 'Created Date';
comment on column fs_fiadb.p2veg_subplot_spp.modified_date
  is 'Modified Date';
comment on column fs_fiadb.p2veg_subplot_spp.cycle
  is 'Inventory cycle number';
comment on column fs_fiadb.p2veg_subplot_spp.subcycle
  is 'Inventory subcycle number';
create index P2VSSP_PLT_FK_I on FS_FIADB.P2VEG_SUBPLOT_SPP (PLT_CN);
alter table FS_FIADB.P2VEG_SUBPLOT_SPP add constraint P2VSSP_PK primary key (CN);
alter table FS_FIADB.P2VEG_SUBPLOT_SPP add constraint P2VSSP_UK unique (PLT_CN, CONDID, SUBP, UNIQUE_SP_NBR, VEG_FLDSPCD);
alter table FS_FIADB.P2VEG_SUBPLOT_SPP add constraint P2VSSP_SCD_FK foreign key (CONDID, SUBP, PLT_CN) references FS_FIADB.SUBP_COND (CONDID, SUBP, PLT_CN);
alter table FS_FIADB.P2VEG_SUBPLOT_SPP add constraint P2VSSP_PLT_FK foreign key (PLT_CN) references FS_FIADB.PLOT (CN);