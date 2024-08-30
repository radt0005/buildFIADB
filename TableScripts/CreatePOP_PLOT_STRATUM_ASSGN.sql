CREATE TABLE fs_fiadb.pop_plot_stratum_assgn
(
cn            VARCHAR(34) NOT NULL,
stratum_cn    VARCHAR(34) NOT NULL,
plt_cn        VARCHAR(34) NOT NULL,
statecd       INTEGER NOT NULL,
invyr         INTEGER NOT NULL,
unitcd        INTEGER NOT NULL,
countycd      INTEGER NOT NULL,
plot          INTEGER NOT NULL,
rscd          INTEGER NOT NULL,
evalid        INTEGER NOT NULL,
estn_unit     INTEGER NOT NULL,
stratumcd     INTEGER NOT NULL,
created_date  TIMESTAMP(0),
modified_date TIMESTAMP(0)
);
create index PPSA_PSM_FK_I on FS_FIADB.POP_PLOT_STRATUM_ASSGN (STRATUM_CN);
create index PPSA_PLT_FK_I on FS_FIADB.POP_PLOT_STRATUM_ASSGN (PLT_CN);
alter table FS_FIADB.POP_PLOT_STRATUM_ASSGN add constraint PPSA_PK primary key (CN);
alter table FS_FIADB.POP_PLOT_STRATUM_ASSGN add constraint PPSA_UK unique (RSCD, EVALID, STATECD, COUNTYCD, PLOT);
alter table FS_FIADB.POP_PLOT_STRATUM_ASSGN add constraint PPSA_PSM_FK foreign key (STRATUM_CN) references FS_FIADB.POP_STRATUM (CN);
alter table FS_FIADB.POP_PLOT_STRATUM_ASSGN add constraint PPSA_PLT_FK foreign key (PLT_CN) references FS_FIADB.PLOT (CN);