-- Create table
create table FS_FIADB.VEG_VISIT
(
  cn                   VARCHAR(34) not null,
  plt_cn               VARCHAR(34) not null,
  invyr                SMALLINT not null,
  statecd              SMALLINT not null,
  countycd             SMALLINT not null,
  plot                 INT not null,
  veg_qa_status        SMALLINT,
  veg_kindcd           SMALLINT,
  veg_manual           VARCHAR(8),
  trace_cover_allowed  SMALLINT,
  veg_measyear         SMALLINT,
  veg_measmon          SMALLINT,
  veg_measday          SMALLINT,
  veg_sample_basis     SMALLINT,
  created_by           VARCHAR(30),
  created_date         TIMESTAMP(0),
  created_in_instance  VARCHAR(6),
  modified_by          VARCHAR(30),
  modified_date        TIMESTAMP(0),
  modified_in_instance VARCHAR(6),
  qa_status            SMALLINT
);
-- Add comments to the table 
comment on table FS_FIADB.VEG_VISIT
  is '6.0';
-- Add comments to the columns 
comment on column FS_FIADB.VEG_VISIT.cn
  is 'CN partly identifies NIMS_VEG_VISIT_TBL';
comment on column FS_FIADB.VEG_VISIT.plt_cn
  is 'PLT_CN is foreign key to NIMS_PLOT_TBL.CN';
comment on column FS_FIADB.VEG_VISIT.statecd
  is 'state code';
comment on column FS_FIADB.VEG_VISIT.countycd
  is 'County Code';
comment on column FS_FIADB.VEG_VISIT.veg_qa_status
  is 'QA Status code that refers directly to VEG. Often differs from P2 QA_STATUS, but will always be linked to P2 QA_STATUS=1 plot data. (Named differently than QA_STATUS because LOAD_ and PDR_ tables require QA_STATUS as part of key.)';
comment on column FS_FIADB.VEG_VISIT.veg_kindcd
  is 'VEG Sample Kind (Named differently than KINDCD because PDR_ tables require KINDCD as part of key.)';
comment on column FS_FIADB.VEG_VISIT.veg_manual
  is 'P3 Veg field guide version number, usually recorded as';
comment on column FS_FIADB.VEG_VISIT.trace_cover_allowed
  is 'TRACE_COVER_ALLOWED - added 10;24;2005; 0 = trace cover value (0.01) was not allowed in the protocol under which the plot was measured (pre-2005); 1 = trace cover value was allowed (2005 and later)';
comment on column FS_FIADB.VEG_VISIT.veg_measyear
  is 'Measurement Year';
comment on column FS_FIADB.VEG_VISIT.veg_measmon
  is 'VEG Measurement Month';
comment on column FS_FIADB.VEG_VISIT.veg_measday
  is 'VEG Measurement Day';
comment on column FS_FIADB.VEG_VISIT.veg_sample_basis
  is 'VEG_SAMPLE_BASIS: 1 = plant cover;presence sampled on all subplot conditions (possibly even hazardous and access denied) - applies to NIMS_VEG_VISIT.VEG_MANUAL = 1.7 plots; 2  = plant cover;presence sampled only on accessible forest conditions - applies to NIMS_VEG_VISIT.VEG_MANUAL = 2.0 and later plots.';
comment on column FS_FIADB.VEG_VISIT.created_by
  is 'CREATED_BY user';
comment on column FS_FIADB.VEG_VISIT.created_date
  is 'CREATED_DATE';
comment on column FS_FIADB.VEG_VISIT.created_in_instance
  is 'CREATED_IN_INSTANCE';
comment on column FS_FIADB.VEG_VISIT.modified_by
  is 'MODIFIED_BY user';
comment on column FS_FIADB.VEG_VISIT.modified_date
  is 'MODIFIED_DATE';
comment on column FS_FIADB.VEG_VISIT.modified_in_instance
  is 'MODIFIED_IN_INSTANCE';
comment on column FS_FIADB.VEG_VISIT.qa_status
  is 'qa status code';
-- Create/Recreate indexes 
create index VVT_NAT_I on FS_FIADB.VEG_VISIT (STATECD, INVYR, COUNTYCD, PLOT);
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.VEG_VISIT
  add constraint VVT_PK primary key (CN);
alter table FS_FIADB.VEG_VISIT
  add constraint VVT_UK unique (PLT_CN);
alter table FS_FIADB.VEG_VISIT
  add constraint VVT_PLT_FK foreign key (PLT_CN)
  references FS_FIADB.PLOT (CN);