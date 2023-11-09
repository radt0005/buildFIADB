-- Create table
create table FS_FIADB.POP_PLOT_STRATUM_ASSGN
(
  cn                   VARCHAR(34) not null,
  stratum_cn           VARCHAR(34) not null,
  plt_cn               VARCHAR(34) not null,
  statecd              SMALLINT not null,
  invyr                SMALLINT not null,
  unitcd               SMALLINT not null,
  countycd             SMALLINT not null,
  plot                 INT not null,
  rscd                 SMALLINT not null,
  evalid               INT not null,
  estn_unit            INT not null,
  stratumcd            INT not null,
  created_by           VARCHAR(30),
  created_date         TIMESTAMP(0),
  created_in_instance  VARCHAR(6),
  modified_by          VARCHAR(30),
  modified_date        TIMESTAMP(0),
  modified_in_instance VARCHAR(6));
-- Add comments to the table 
comment on table FS_FIADB.POP_PLOT_STRATUM_ASSGN
  is '6.0';
-- Add comments to the columns 
comment on column FS_FIADB.POP_PLOT_STRATUM_ASSGN.stratum_cn
  is 'Stratum CN';
comment on column FS_FIADB.POP_PLOT_STRATUM_ASSGN.plt_cn
  is 'PLOT CN';
comment on column FS_FIADB.POP_PLOT_STRATUM_ASSGN.statecd
  is 'State code';
comment on column FS_FIADB.POP_PLOT_STRATUM_ASSGN.invyr
  is 'Inventory year';
comment on column FS_FIADB.POP_PLOT_STRATUM_ASSGN.unitcd
  is 'Survey unit code';
comment on column FS_FIADB.POP_PLOT_STRATUM_ASSGN.countycd
  is 'County code';
comment on column FS_FIADB.POP_PLOT_STRATUM_ASSGN.plot
  is 'Plot number';
comment on column FS_FIADB.POP_PLOT_STRATUM_ASSGN.rscd
  is 'Region or Station Code';
comment on column FS_FIADB.POP_PLOT_STRATUM_ASSGN.evalid
  is 'Evaluation ID';
comment on column FS_FIADB.POP_PLOT_STRATUM_ASSGN.estn_unit
  is 'Estimation unit';
comment on column FS_FIADB.POP_PLOT_STRATUM_ASSGN.stratumcd
  is 'Stratum code';
comment on column FS_FIADB.POP_PLOT_STRATUM_ASSGN.created_by
  is 'Created by';
comment on column FS_FIADB.POP_PLOT_STRATUM_ASSGN.created_date
  is 'Created date';
comment on column FS_FIADB.POP_PLOT_STRATUM_ASSGN.created_in_instance
  is 'Created in instance';
comment on column FS_FIADB.POP_PLOT_STRATUM_ASSGN.modified_by
  is 'Modified by';
comment on column FS_FIADB.POP_PLOT_STRATUM_ASSGN.modified_date
  is 'Modified date';
comment on column FS_FIADB.POP_PLOT_STRATUM_ASSGN.modified_in_instance
  is 'Modified in instance';
-- Create/Recreate indexes 
create index PPSA_PLT_FK_I on FS_FIADB.POP_PLOT_STRATUM_ASSGN (PLT_CN);
create index PPSA_PSM_FK_I on FS_FIADB.POP_PLOT_STRATUM_ASSGN (STRATUM_CN);
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.POP_PLOT_STRATUM_ASSGN
  add constraint PPSA_PK primary key (CN);
alter table FS_FIADB.POP_PLOT_STRATUM_ASSGN
  add constraint PPSA_UK unique (RSCD, EVALID, STATECD, COUNTYCD, PLOT);
alter table FS_FIADB.POP_PLOT_STRATUM_ASSGN
  add constraint PPSA_PLT_FK foreign key (PLT_CN)
  references FS_FIADB.PLOT (CN);
alter table FS_FIADB.POP_PLOT_STRATUM_ASSGN
  add constraint PPSA_PSM_FK foreign key (STRATUM_CN)
  references FS_FIADB.POP_STRATUM (CN);