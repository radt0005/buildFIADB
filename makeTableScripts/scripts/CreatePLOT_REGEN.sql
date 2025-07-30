CREATE TABLE fs_fiadb.plot_regen
(
cn                   VARCHAR(34) NOT NULL,
plt_cn               VARCHAR(34) NOT NULL,
invyr                INTEGER NOT NULL,
statecd              INTEGER NOT NULL,
unitcd               INTEGER NOT NULL,
countycd             INTEGER NOT NULL,
plot                 INTEGER NOT NULL,
browse_impact        INTEGER,
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6),
cycle                INTEGER,
subcycle             INTEGER
);
comment on column fs_fiadb.plot_regen.cn
  is 'Sequence number (surrogate primary key)';
comment on column fs_fiadb.plot_regen.plt_cn
  is 'Foreign key to Plot table CN';
comment on column fs_fiadb.plot_regen.invyr
  is 'NA';
comment on column fs_fiadb.plot_regen.statecd
  is 'State code';
comment on column fs_fiadb.plot_regen.unitcd
  is 'Survey unit code';
comment on column fs_fiadb.plot_regen.countycd
  is 'County code';
comment on column fs_fiadb.plot_regen.plot
  is 'Plot number';
comment on column fs_fiadb.plot_regen.browse_impact
  is 'Amount of browsing pressure that deer have on regen';
comment on column fs_fiadb.plot_regen.created_by
  is 'Created by';
comment on column fs_fiadb.plot_regen.created_date
  is 'Created Date ';
comment on column fs_fiadb.plot_regen.created_in_instance
  is 'Created in Instance ';
comment on column fs_fiadb.plot_regen.modified_by
  is 'Modified by ';
comment on column fs_fiadb.plot_regen.modified_date
  is 'Modified Date';
comment on column fs_fiadb.plot_regen.modified_in_instance
  is 'Modified in Instance ';
comment on column fs_fiadb.plot_regen.cycle
  is 'Inventory cycle number';
comment on column fs_fiadb.plot_regen.subcycle
  is 'Inventory subcycle number';
create index PLTREGEN_PLT_FK_I on FS_FIADB.PLOT_REGEN (PLT_CN);
alter table FS_FIADB.PLOT_REGEN add constraint PLTREGEN_PK primary key (CN);
alter table FS_FIADB.PLOT_REGEN add constraint PLTREGEN_UK1 unique (STATECD, COUNTYCD, PLOT, INVYR);
alter table FS_FIADB.PLOT_REGEN add constraint PLTREGEN_UK2 unique (STATECD, COUNTYCD, PLOT, CYCLE, SUBCYCLE);
alter table FS_FIADB.PLOT_REGEN add constraint PLTREGEN_PLT_FK foreign key (PLT_CN) references FS_FIADB.PLOT (CN);