CREATE TABLE fs_fiadb.invasive_subplot_spp
(
cn                   VARCHAR(34) NOT NULL,
plt_cn               VARCHAR(34) NOT NULL,
invyr                INTEGER NOT NULL,
statecd              INTEGER NOT NULL,
unitcd               INTEGER,
countycd             INTEGER NOT NULL,
plot                 INTEGER NOT NULL,
subp                 INTEGER NOT NULL,
condid               INTEGER NOT NULL,
veg_fldspcd          VARCHAR(10) NOT NULL,
unique_sp_nbr        INTEGER NOT NULL,
veg_spcd             VARCHAR(10) NOT NULL,
cover_pct            INTEGER NOT NULL,
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6),
cycle                INTEGER NOT NULL,
subcycle             INTEGER NOT NULL
);
comment on column fs_fiadb.invasive_subplot_spp.cn
  is 'Sequence number (surrogate primary key';
comment on column fs_fiadb.invasive_subplot_spp.plt_cn
  is 'Foreign key to Plot table CN';
comment on column fs_fiadb.invasive_subplot_spp.invyr
  is 'Inventory year';
comment on column fs_fiadb.invasive_subplot_spp.statecd
  is 'State code';
comment on column fs_fiadb.invasive_subplot_spp.unitcd
  is 'Survey unit code';
comment on column fs_fiadb.invasive_subplot_spp.countycd
  is 'County code';
comment on column fs_fiadb.invasive_subplot_spp.plot
  is 'Plot number';
comment on column fs_fiadb.invasive_subplot_spp.subp
  is 'Subplot number';
comment on column fs_fiadb.invasive_subplot_spp.condid
  is 'Condition number';
comment on column fs_fiadb.invasive_subplot_spp.veg_fldspcd
  is 'Veg Field Species Code';
comment on column fs_fiadb.invasive_subplot_spp.unique_sp_nbr
  is 'Unique Species Number identifies the number of species occurrences within each NRCS genus or unknown code. For example, 2 unidentifiable CAREX species would be entered as 2 separate records with differing Unique Species Numbers to show that they are not the same species.';
comment on column fs_fiadb.invasive_subplot_spp.veg_spcd
  is 'Veg Species Code';
comment on column fs_fiadb.invasive_subplot_spp.cover_pct
  is 'Species percent canopy cover';
comment on column fs_fiadb.invasive_subplot_spp.created_by
  is 'Created by';
comment on column fs_fiadb.invasive_subplot_spp.created_date
  is 'Created Date';
comment on column fs_fiadb.invasive_subplot_spp.created_in_instance
  is 'Created in Instance';
comment on column fs_fiadb.invasive_subplot_spp.modified_by
  is 'Modified by';
comment on column fs_fiadb.invasive_subplot_spp.modified_date
  is 'Modified Date';
comment on column fs_fiadb.invasive_subplot_spp.modified_in_instance
  is 'Modified in Instance';
comment on column fs_fiadb.invasive_subplot_spp.cycle
  is 'Inventory cycle number';
comment on column fs_fiadb.invasive_subplot_spp.subcycle
  is 'Inventory subcycle number';
create index ISS_SCD_FK_I on FS_FIADB.INVASIVE_SUBPLOT_SPP (PLT_CN, SUBP, CONDID);
create index ISS_PLT_FK_I on FS_FIADB.INVASIVE_SUBPLOT_SPP (PLT_CN);
alter table FS_FIADB.INVASIVE_SUBPLOT_SPP add constraint ISS_PK primary key (CN);
alter table FS_FIADB.INVASIVE_SUBPLOT_SPP add constraint ISS_UK unique (PLT_CN, VEG_FLDSPCD, UNIQUE_SP_NBR, SUBP, CONDID);
alter table FS_FIADB.INVASIVE_SUBPLOT_SPP add constraint ISS_SCD_FK foreign key (PLT_CN, SUBP, CONDID) references FS_FIADB.SUBP_COND (PLT_CN, SUBP, CONDID);
alter table FS_FIADB.INVASIVE_SUBPLOT_SPP add constraint ISS_PLT_FK foreign key (PLT_CN) references FS_FIADB.PLOT (CN);