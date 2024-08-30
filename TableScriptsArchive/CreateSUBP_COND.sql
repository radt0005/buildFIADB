-- Create table
create table FS_FIADB.SUBP_COND
(
  cn                   VARCHAR(34) not null,
  plt_cn               VARCHAR(34) not null,
  invyr                SMALLINT not null,
  statecd              SMALLINT not null,
  unitcd               SMALLINT not null,
  countycd             SMALLINT not null,
  plot                 INT not null,
  subp                 SMALLINT not null,
  condid               SMALLINT not null,
  created_by           VARCHAR(30),
  created_date         TIMESTAMP(0),
  created_in_instance  VARCHAR(6),
  modified_by          VARCHAR(30),
  modified_date        TIMESTAMP(0),
  modified_in_instance VARCHAR(6),
  micrcond_prop        DOUBLE PRECISION,
  subpcond_prop        DOUBLE PRECISION,
  macrcond_prop        DOUBLE PRECISION,
  nonfr_incl_pct_subp  SMALLINT,
  nonfr_incl_pct_macro SMALLINT,
  cycle                SMALLINT,
  subcycle             SMALLINT
);
-- Add comments to the table 
comment on table FS_FIADB.SUBP_COND
  is '6.0';
-- Add comments to the columns 
comment on column FS_FIADB.SUBP_COND.cn
  is 'Unique index';
comment on column FS_FIADB.SUBP_COND.plt_cn
  is 'Unique index';
comment on column FS_FIADB.SUBP_COND.statecd
  is 'State code';
comment on column FS_FIADB.SUBP_COND.unitcd
  is 'Survey unit code';
comment on column FS_FIADB.SUBP_COND.countycd
  is 'County code';
comment on column FS_FIADB.SUBP_COND.plot
  is 'Plot number';
comment on column FS_FIADB.SUBP_COND.subp
  is 'Subplot number';
comment on column FS_FIADB.SUBP_COND.condid
  is 'Condition number';
comment on column FS_FIADB.SUBP_COND.created_by
  is 'Created by';
comment on column FS_FIADB.SUBP_COND.created_date
  is 'Created date';
comment on column FS_FIADB.SUBP_COND.created_in_instance
  is 'Created in instance';
comment on column FS_FIADB.SUBP_COND.modified_by
  is 'Modified by';
comment on column FS_FIADB.SUBP_COND.modified_date
  is 'Modified date';
comment on column FS_FIADB.SUBP_COND.modified_in_instance
  is 'Modified in instance';
comment on column FS_FIADB.SUBP_COND.micrcond_prop
  is 'Proportion of this microplot in this condition';
comment on column FS_FIADB.SUBP_COND.subpcond_prop
  is 'Proportion of this subplot in this condition';
comment on column FS_FIADB.SUBP_COND.macrcond_prop
  is 'Proportion of this macroplot in this condition';
comment on column FS_FIADB.SUBP_COND.cycle
  is 'Inventory cycle number';
comment on column FS_FIADB.SUBP_COND.subcycle
  is 'Inventory subcycle number';
-- Create/Recreate indexes 
create index SCD_CND_FK_I on FS_FIADB.SUBP_COND (PLT_CN, CONDID);
create index SCD_NAT_I on FS_FIADB.SUBP_COND (STATECD, INVYR, UNITCD, COUNTYCD, PLOT, SUBP, CONDID);
create index SCD_PLT_FK_I on FS_FIADB.SUBP_COND (PLT_CN);
create index SCD_SBP_FK_I on FS_FIADB.SUBP_COND (PLT_CN, SUBP);
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.SUBP_COND
  add constraint SCD_PK primary key (CN);
alter table FS_FIADB.SUBP_COND
  add constraint SCD_UK unique (PLT_CN, SUBP, CONDID);
alter table FS_FIADB.SUBP_COND
  add constraint SCD_CND_FK foreign key (PLT_CN, CONDID)
  references FS_FIADB.COND (PLT_CN, CONDID);
alter table FS_FIADB.SUBP_COND
  add constraint SCD_PLT_FK foreign key (PLT_CN)
  references FS_FIADB.PLOT (CN);
alter table FS_FIADB.SUBP_COND
  add constraint SCD_SBP_FK foreign key (PLT_CN, SUBP)
  references FS_FIADB.SUBPLOT (PLT_CN, SUBP);