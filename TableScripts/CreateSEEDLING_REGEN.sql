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
create index SDLREGEN_PLT_CND_I on FS_FIADB.SEEDLING_REGEN (PLT_CN, CND_CN);
create index SDLREGEN_PLT_FK_I on FS_FIADB.SEEDLING_REGEN (PLT_CN);
create index SDLREGEN_CND_FK_I on FS_FIADB.SEEDLING_REGEN (CND_CN);
create index SDLREGEN_SCD_FK_I on FS_FIADB.SEEDLING_REGEN (SCD_CN);
alter table FS_FIADB.SEEDLING_REGEN add constraint SDLREGEN_PK primary key (CN);
alter table FS_FIADB.SEEDLING_REGEN add constraint SDLREGEN_UK unique (STATECD, COUNTYCD, PLOT, SUBP, INVYR, SPCD, CONDID, SEEDLING_SOURCE_CD, LENGTH_CLASS_CD);
alter table FS_FIADB.SEEDLING_REGEN add constraint SDLREGEN_SCD_FK foreign key (SCD_CN) references FS_FIADB.SUBP_COND (CN);
alter table FS_FIADB.SEEDLING_REGEN add constraint SDLREGEN_CND_FK foreign key (CND_CN) references FS_FIADB.COND (CN);
alter table FS_FIADB.SEEDLING_REGEN add constraint SDLREGEN_PLT_FK foreign key (PLT_CN) references FS_FIADB.PLOT (CN);