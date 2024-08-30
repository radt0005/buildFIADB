-- Create table
create table FS_FIADB.PLOT_REGEN
(
  cn                   VARCHAR(34) not null,
  plt_cn               VARCHAR(34) not null,
  invyr                SMALLINT not null,
  statecd              SMALLINT not null,
  unitcd               SMALLINT not null,
  countycd             SMALLINT not null,
  plot                 INT not null,
  browse_impact        SMALLINT,
  created_by           VARCHAR(30),
  created_date         TIMESTAMP(0),
  created_in_instance  VARCHAR(6),
  modified_by          VARCHAR(30),
  modified_date        TIMESTAMP(0),
  modified_in_instance VARCHAR(6),
  cycle                SMALLINT,
  subcycle             SMALLINT
);
-- Add comments to the table 
comment on table FS_FIADB.PLOT_REGEN
  is 'NIMS 6.0';
-- Add comments to the columns 
comment on column FS_FIADB.PLOT_REGEN.cn
  is 'Sequence number (surrogate primary key)';
comment on column FS_FIADB.PLOT_REGEN.plt_cn
  is 'Foreign key to Plot table CN';
comment on column FS_FIADB.PLOT_REGEN.statecd
  is 'State code';
comment on column FS_FIADB.PLOT_REGEN.unitcd
  is 'Survey unit code';
comment on column FS_FIADB.PLOT_REGEN.countycd
  is 'County code';
comment on column FS_FIADB.PLOT_REGEN.plot
  is 'Plot number';
comment on column FS_FIADB.PLOT_REGEN.browse_impact
  is 'Amount of browsing pressure that deer have on regen';
comment on column FS_FIADB.PLOT_REGEN.created_by
  is 'Created by';
comment on column FS_FIADB.PLOT_REGEN.created_date
  is 'Created Date ';
comment on column FS_FIADB.PLOT_REGEN.created_in_instance
  is 'Created in Instance ';
comment on column FS_FIADB.PLOT_REGEN.modified_by
  is 'Modified by ';
comment on column FS_FIADB.PLOT_REGEN.modified_date
  is 'Modified Date';
comment on column FS_FIADB.PLOT_REGEN.modified_in_instance
  is 'Modified in Instance ';
comment on column FS_FIADB.PLOT_REGEN.cycle
  is 'Inventory cycle number';
comment on column FS_FIADB.PLOT_REGEN.subcycle
  is 'Inventory subcycle number';
-- Create/Recreate indexes 
create index PLTREGEN_PLT_FK_I on FS_FIADB.PLOT_REGEN (PLT_CN);
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.PLOT_REGEN
  add constraint PLTREGEN_PK primary key (CN);
alter table FS_FIADB.PLOT_REGEN
  add constraint PLTREGEN_UK1 unique (STATECD, COUNTYCD, PLOT, INVYR);
alter table FS_FIADB.PLOT_REGEN
  add constraint PLTREGEN_UK2 unique (STATECD, COUNTYCD, PLOT, CYCLE, SUBCYCLE);
alter table FS_FIADB.PLOT_REGEN
  add constraint PLTREGEN_PLT_FK foreign key (PLT_CN)
  references FS_FIADB.PLOT (CN);