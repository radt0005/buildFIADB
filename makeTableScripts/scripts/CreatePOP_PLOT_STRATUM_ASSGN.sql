CREATE TABLE fs_fiadb.pop_plot_stratum_assgn
(
cn                   VARCHAR(34) NOT NULL,
stratum_cn           VARCHAR(34) NOT NULL,
plt_cn               VARCHAR(34) NOT NULL,
statecd              INTEGER NOT NULL,
invyr                INTEGER NOT NULL,
unitcd               INTEGER NOT NULL,
countycd             INTEGER NOT NULL,
plot                 INTEGER NOT NULL,
rscd                 INTEGER NOT NULL,
evalid               INTEGER NOT NULL,
estn_unit            INTEGER NOT NULL,
stratumcd            INTEGER NOT NULL,
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6)
);
comment on column fs_fiadb.pop_plot_stratum_assgn.cn
  is 'NA';
comment on column fs_fiadb.pop_plot_stratum_assgn.stratum_cn
  is 'Stratum CN';
comment on column fs_fiadb.pop_plot_stratum_assgn.plt_cn
  is 'PLOT CN';
comment on column fs_fiadb.pop_plot_stratum_assgn.statecd
  is 'State code';
comment on column fs_fiadb.pop_plot_stratum_assgn.invyr
  is 'Inventory year';
comment on column fs_fiadb.pop_plot_stratum_assgn.unitcd
  is 'Survey unit code';
comment on column fs_fiadb.pop_plot_stratum_assgn.countycd
  is 'County code';
comment on column fs_fiadb.pop_plot_stratum_assgn.plot
  is 'Plot number';
comment on column fs_fiadb.pop_plot_stratum_assgn.rscd
  is 'Region or Station Code';
comment on column fs_fiadb.pop_plot_stratum_assgn.evalid
  is 'Evaluation ID';
comment on column fs_fiadb.pop_plot_stratum_assgn.estn_unit
  is 'Estimation unit';
comment on column fs_fiadb.pop_plot_stratum_assgn.stratumcd
  is 'Stratum code';
comment on column fs_fiadb.pop_plot_stratum_assgn.created_by
  is 'Created by';
comment on column fs_fiadb.pop_plot_stratum_assgn.created_date
  is 'Created date';
comment on column fs_fiadb.pop_plot_stratum_assgn.created_in_instance
  is 'Created in instance';
comment on column fs_fiadb.pop_plot_stratum_assgn.modified_by
  is 'Modified by';
comment on column fs_fiadb.pop_plot_stratum_assgn.modified_date
  is 'Modified date';
comment on column fs_fiadb.pop_plot_stratum_assgn.modified_in_instance
  is 'Modified in instance';
create index PPSA_PSM_FK_I on FS_FIADB.POP_PLOT_STRATUM_ASSGN (STRATUM_CN);
create index PPSA_PLT_FK_I on FS_FIADB.POP_PLOT_STRATUM_ASSGN (PLT_CN);
alter table FS_FIADB.POP_PLOT_STRATUM_ASSGN add constraint PPSA_PK primary key (CN);
alter table FS_FIADB.POP_PLOT_STRATUM_ASSGN add constraint PPSA_UK unique (RSCD, EVALID, STATECD, COUNTYCD, PLOT);
alter table FS_FIADB.POP_PLOT_STRATUM_ASSGN add constraint PPSA_PSM_FK foreign key (STRATUM_CN) references FS_FIADB.POP_STRATUM (CN);
alter table FS_FIADB.POP_PLOT_STRATUM_ASSGN add constraint PPSA_PLT_FK foreign key (PLT_CN) references FS_FIADB.PLOT (CN);