CREATE TABLE fs_fiadb.plot_regen
(
cn            VARCHAR(34) NOT NULL,
plt_cn        VARCHAR(34) NOT NULL,
invyr         INTEGER NOT NULL,
statecd       INTEGER NOT NULL,
unitcd        INTEGER NOT NULL,
countycd      INTEGER NOT NULL,
plot          INTEGER NOT NULL,
browse_impact INTEGER,
created_date  TIMESTAMP(0),
modified_date TIMESTAMP(0),
cycle         INTEGER,
subcycle      INTEGER
);
create index PLTREGEN_PLT_FK_I on FS_FIADB.PLOT_REGEN (PLT_CN);
alter table FS_FIADB.PLOT_REGEN add constraint PLTREGEN_PK primary key (CN);
alter table FS_FIADB.PLOT_REGEN add constraint PLTREGEN_UK1 unique (STATECD, COUNTYCD, PLOT, INVYR);
alter table FS_FIADB.PLOT_REGEN add constraint PLTREGEN_UK2 unique (STATECD, COUNTYCD, PLOT, CYCLE, SUBCYCLE);
alter table FS_FIADB.PLOT_REGEN add constraint PLTREGEN_PLT_FK foreign key (PLT_CN) references FS_FIADB.PLOT (CN);