CREATE TABLE fs_fiadb.p2veg_subp_structure
(
cn              VARCHAR(34) NOT NULL,
plt_cn          VARCHAR(34) NOT NULL,
statecd         INTEGER NOT NULL,
unitcd          INTEGER NOT NULL,
countycd        INTEGER NOT NULL,
plot            INTEGER NOT NULL,
invyr           INTEGER NOT NULL,
subp            INTEGER NOT NULL,
condid          INTEGER NOT NULL,
growth_habit_cd VARCHAR(2) NOT NULL,
layer           INTEGER NOT NULL,
cover_pct       INTEGER NOT NULL,
created_date    TIMESTAMP(0),
modified_date   TIMESTAMP(0),
cycle           INTEGER NOT NULL,
subcycle        INTEGER NOT NULL
);
create index P2VSS_PLT_CN_CONDID on FS_FIADB.P2VEG_SUBP_STRUCTURE (PLT_CN, CONDID);
create index P2VSS_PLT_FK_I on FS_FIADB.P2VEG_SUBP_STRUCTURE (PLT_CN);
alter table FS_FIADB.P2VEG_SUBP_STRUCTURE add constraint P2VSS_PK primary key (CN);
alter table FS_FIADB.P2VEG_SUBP_STRUCTURE add constraint P2VSS_UK unique (PLT_CN, SUBP, CONDID, GROWTH_HABIT_CD, LAYER);
alter table FS_FIADB.P2VEG_SUBP_STRUCTURE add constraint P2VSS_UK2 unique (STATECD, COUNTYCD, PLOT, INVYR, SUBP, CONDID, GROWTH_HABIT_CD, LAYER);
alter table FS_FIADB.P2VEG_SUBP_STRUCTURE add constraint P2VSS_UK3 unique (STATECD, CYCLE, SUBCYCLE, COUNTYCD, PLOT, SUBP, CONDID, GROWTH_HABIT_CD, LAYER);
alter table FS_FIADB.P2VEG_SUBP_STRUCTURE add constraint P2VSS_SCD_FK foreign key (SUBP, CONDID, PLT_CN) references FS_FIADB.SUBP_COND (SUBP, CONDID, PLT_CN);
alter table FS_FIADB.P2VEG_SUBP_STRUCTURE add constraint P2VSS_PLT_FK foreign key (PLT_CN) references FS_FIADB.PLOT (CN);