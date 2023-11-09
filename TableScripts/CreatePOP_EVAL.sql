-- Create table
create table FS_FIADB.POP_EVAL
(
  cn                   VARCHAR(34) not null,
  eval_grp_cn          VARCHAR(34),
  rscd                 SMALLINT not null,
  evalid               INT not null,
  eval_descr           VARCHAR(255),
  statecd              SMALLINT not null,
  location_nm          VARCHAR(255),
  report_year_nm       VARCHAR(255),
  start_invyr          SMALLINT,
  end_invyr            SMALLINT,
  land_only            VARCHAR(1),
  timberland_only      VARCHAR(1),
  growth_acct          VARCHAR(1),
  estn_method          VARCHAR(40),
  notes                VARCHAR(2000),
  created_by           VARCHAR(30),
  created_date         TIMESTAMP(0),
  created_in_instance  VARCHAR(6),
  modified_by          VARCHAR(30),
  modified_date        TIMESTAMP(0),
  modified_in_instance VARCHAR(6));
-- Add comments to the table 
comment on table FS_FIADB.POP_EVAL
  is '6.0';
-- Add comments to the columns 
comment on column FS_FIADB.POP_EVAL.eval_grp_cn
  is 'Foreign Key to POP_EVAL_GRP';
comment on column FS_FIADB.POP_EVAL.rscd
  is 'Region or Station Code';
comment on column FS_FIADB.POP_EVAL.evalid
  is 'Evaluation ID';
comment on column FS_FIADB.POP_EVAL.eval_descr
  is 'Evaluation description';
comment on column FS_FIADB.POP_EVAL.statecd
  is 'State Code of primary state being evaluated';
comment on column FS_FIADB.POP_EVAL.location_nm
  is 'Usually state name or super state';
comment on column FS_FIADB.POP_EVAL.report_year_nm
  is 'List of years in which panels were collected';
comment on column FS_FIADB.POP_EVAL.start_invyr
  is 'Starting year for evaluation';
comment on column FS_FIADB.POP_EVAL.end_invyr
  is 'Ending year for evaluation';
comment on column FS_FIADB.POP_EVAL.land_only
  is 'Y if only land is sampled (census water excluded), N otherwise';
comment on column FS_FIADB.POP_EVAL.timberland_only
  is 'Y if estimates are for timberland only, N if reserved lands sampled at t and t-1 for change est., or reserved sampled at t for current est.';
comment on column FS_FIADB.POP_EVAL.growth_acct
  is 'Y if evaluation can be used for growth accounting, N if evaluation cannot be used for growth accounting, null if evaluation type is not EXPGROW';
comment on column FS_FIADB.POP_EVAL.estn_method
  is 'Estimation method, e.g. post-stratification or simple random';
comment on column FS_FIADB.POP_EVAL.notes
  is 'Evaluation notes';
comment on column FS_FIADB.POP_EVAL.created_by
  is 'Created by';
comment on column FS_FIADB.POP_EVAL.created_date
  is 'Created date';
comment on column FS_FIADB.POP_EVAL.created_in_instance
  is 'Created in instance';
comment on column FS_FIADB.POP_EVAL.modified_by
  is 'Modified by';
comment on column FS_FIADB.POP_EVAL.modified_date
  is 'Modified date';
comment on column FS_FIADB.POP_EVAL.modified_in_instance
  is 'Modified in instance';
-- Create/Recreate indexes 
create index PEV_PEG_FK_I on FS_FIADB.POP_EVAL (EVAL_GRP_CN);
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.POP_EVAL
  add constraint PEV_PK primary key (CN);
alter table FS_FIADB.POP_EVAL
  add constraint PEV_UK unique (RSCD, EVALID);
alter table FS_FIADB.POP_EVAL
  add constraint PEV_PEG_FK foreign key (EVAL_GRP_CN)
  references FS_FIADB.POP_EVAL_GRP (CN);