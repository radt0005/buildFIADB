-- Create table
create table FS_FIADB.VEG_QUADRAT
(
  cn                     VARCHAR(34) not null,
  plt_cn                 VARCHAR(34) not null,
  vvt_cn                 VARCHAR(34) not null,
  vsb_cn                 VARCHAR(34) not null,
  invyr                  SMALLINT not null,
  statecd                SMALLINT not null,
  countycd               SMALLINT not null,
  plot                   INT not null,
  subp                   SMALLINT,
  quadrat                SMALLINT not null,
  condid                 SMALLINT,
  quadrat_status         SMALLINT,
  quadrat_status_pre2004 SMALLINT,
  trampling              SMALLINT,
  created_by             VARCHAR(30),
  created_date           TIMESTAMP(0),
  created_in_instance    VARCHAR(6),
  modified_by            VARCHAR(30),
  modified_date          TIMESTAMP(0),
  modified_in_instance   VARCHAR(6)
);
-- Add comments to the table 
comment on table FS_FIADB.VEG_QUADRAT
  is '6.0';
-- Add comments to the columns 
comment on column FS_FIADB.VEG_QUADRAT.cn
  is 'CN partly identifies NIMS_VEG_QUADRAT_TBL';
comment on column FS_FIADB.VEG_QUADRAT.plt_cn
  is 'PLT_CN is foreign key to parent NIMS_PLOT_TBL.CN';
comment on column FS_FIADB.VEG_QUADRAT.vvt_cn
  is 'VVT_CN is foreign key to parent NIMS_VEG_VISIT_TBL.CN';
comment on column FS_FIADB.VEG_QUADRAT.vsb_cn
  is 'VSB_CN partly identifies parent NIMS_VEG_SUBPLOT_TBL.CN';
comment on column FS_FIADB.VEG_QUADRAT.quadrat
  is 'Quadrat Number';
comment on column FS_FIADB.VEG_QUADRAT.condid
  is 'Condition Class Number';
comment on column FS_FIADB.VEG_QUADRAT.quadrat_status
  is 'Quadrat Status Code';
comment on column FS_FIADB.VEG_QUADRAT.quadrat_status_pre2004
  is 'QUADRAT_STATUS_PRE2004: Quadrat Status Code as field-recorded for 2001		 - 2003 plots.  Consistent with NIMS_VEG_VISIT.VEG_MANUAL = 1.7 P3 Veg protocol.';
comment on column FS_FIADB.VEG_QUADRAT.trampling
  is 'Trampling Code';
comment on column FS_FIADB.VEG_QUADRAT.created_by
  is 'CREATED_BY user';
comment on column FS_FIADB.VEG_QUADRAT.created_date
  is 'CREATED_DATE';
comment on column FS_FIADB.VEG_QUADRAT.created_in_instance
  is 'CREATED_IN_INSTANCE';
comment on column FS_FIADB.VEG_QUADRAT.modified_by
  is 'MODIFIED_BY user';
comment on column FS_FIADB.VEG_QUADRAT.modified_date
  is 'MODIFIED_DATE';
comment on column FS_FIADB.VEG_QUADRAT.modified_in_instance
  is 'MODIFIED_IN_INSTANCE';
-- Create/Recreate indexes 
create index VQT_NAT_I on FS_FIADB.VEG_QUADRAT (STATECD, INVYR, COUNTYCD, PLOT, SUBP, QUADRAT);
create index VQT_VSB_FK_I on FS_FIADB.VEG_QUADRAT (PLT_CN, VVT_CN, VSB_CN);
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.VEG_QUADRAT
  add constraint VQT_PK primary key (CN);
alter table FS_FIADB.VEG_QUADRAT
  add constraint VQT_UK unique (PLT_CN, VVT_CN, VSB_CN, QUADRAT);
alter table FS_FIADB.VEG_QUADRAT
  add constraint VQT_UK2 unique (PLT_CN, VVT_CN, VSB_CN, CN);
alter table FS_FIADB.VEG_QUADRAT
  add constraint VQT_VSB_FK foreign key (PLT_CN, VVT_CN, VSB_CN)
  references FS_FIADB.VEG_SUBPLOT (PLT_CN, VVT_CN, CN);