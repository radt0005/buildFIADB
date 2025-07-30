CREATE TABLE fs_fiadb.seedling_regen
(
cn                 VARCHAR(34) NOT NULL,
plt_cn             VARCHAR(34) NOT NULL,
cnd_cn             VARCHAR(34) NOT NULL,
scd_cn             VARCHAR(34) NOT NULL,
invyr              INTEGER NOT NULL,
statecd            INTEGER NOT NULL,
unitcd             INTEGER NOT NULL,
countycd           INTEGER NOT NULL,
plot               INTEGER NOT NULL,
subp               INTEGER NOT NULL,
condid             INTEGER NOT NULL,
spcd               DOUBLE PRECISION NOT NULL,
spgrpcd            INTEGER,
seedling_source_cd VARCHAR(2) NOT NULL,
length_class_cd    INTEGER NOT NULL,
seedlingcount      INTEGER NOT NULL,
created_date       TIMESTAMP(0),
modified_date      TIMESTAMP(0),
cycle              INTEGER,
subcycle           INTEGER,
tpa_unadj          DECIMAL(11,6)
);
comment on column fs_fiadb.seedling_regen.cn
  is 'Sequence number (surrogate primary key';
comment on column fs_fiadb.seedling_regen.plt_cn
  is 'Foreign key to Plot table CN';
comment on column fs_fiadb.seedling_regen.cnd_cn
  is 'Foreign key to Cond table CN';
comment on column fs_fiadb.seedling_regen.scd_cn
  is 'Foreign key to Subp Cond table CN';
comment on column fs_fiadb.seedling_regen.invyr
  is 'NA';
comment on column fs_fiadb.seedling_regen.statecd
  is 'State code';
comment on column fs_fiadb.seedling_regen.unitcd
  is 'Survey unit code';
comment on column fs_fiadb.seedling_regen.countycd
  is 'County code';
comment on column fs_fiadb.seedling_regen.plot
  is 'Plot number';
comment on column fs_fiadb.seedling_regen.subp
  is 'Subplot number';
comment on column fs_fiadb.seedling_regen.condid
  is 'NA';
comment on column fs_fiadb.seedling_regen.spcd
  is 'Species code';
comment on column fs_fiadb.seedling_regen.spgrpcd
  is 'Species group code';
comment on column fs_fiadb.seedling_regen.seedling_source_cd
  is 'Seedling source code';
comment on column fs_fiadb.seedling_regen.length_class_cd
  is 'Length class code';
comment on column fs_fiadb.seedling_regen.seedlingcount
  is 'Count of qualifying seedlings';
comment on column fs_fiadb.seedling_regen.created_date
  is 'Created Date';
comment on column fs_fiadb.seedling_regen.modified_date
  is 'Modified Date';
comment on column fs_fiadb.seedling_regen.cycle
  is 'Inventory cycle number';
comment on column fs_fiadb.seedling_regen.subcycle
  is 'Inventory subcycle number';
comment on column fs_fiadb.seedling_regen.tpa_unadj
  is 'Unadjusted Trees per acre';
create index SDLREGEN_PLT_CND_I on FS_FIADB.SEEDLING_REGEN (PLT_CN, CND_CN);
create index SDLREGEN_SCD_FK_I on FS_FIADB.SEEDLING_REGEN (SCD_CN);
create index SDLREGEN_CND_FK_I on FS_FIADB.SEEDLING_REGEN (CND_CN);
create index SDLREGEN_PLT_FK_I on FS_FIADB.SEEDLING_REGEN (PLT_CN);
alter table FS_FIADB.SEEDLING_REGEN add constraint SDLREGEN_PK primary key (CN);
alter table FS_FIADB.SEEDLING_REGEN add constraint SDLREGEN_UK unique (CONDID, STATECD, SEEDLING_SOURCE_CD, COUNTYCD, SUBP, PLOT, SPCD, INVYR, LENGTH_CLASS_CD);
alter table FS_FIADB.SEEDLING_REGEN add constraint SDLREGEN_SCD_FK foreign key (SCD_CN) references FS_FIADB.SUBP_COND (CN);
alter table FS_FIADB.SEEDLING_REGEN add constraint SDLREGEN_CND_FK foreign key (CND_CN) references FS_FIADB.COND (CN);
alter table FS_FIADB.SEEDLING_REGEN add constraint SDLREGEN_PLT_FK foreign key (PLT_CN) references FS_FIADB.PLOT (CN);