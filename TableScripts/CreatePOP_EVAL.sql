CREATE TABLE fs_fiadb.pop_eval
(
cn              VARCHAR(34) NOT NULL,
eval_grp_cn     VARCHAR(34),
rscd            INTEGER NOT NULL,
evalid          INTEGER NOT NULL,
eval_descr      VARCHAR(255),
statecd         INTEGER NOT NULL,
location_nm     VARCHAR(255),
report_year_nm  VARCHAR(255),
start_invyr     INTEGER,
end_invyr       INTEGER,
land_only       VARCHAR(1),
timberland_only VARCHAR(1),
growth_acct     VARCHAR(1),
estn_method     VARCHAR(40),
notes           VARCHAR(2000),
created_date    TIMESTAMP(0),
modified_date   TIMESTAMP(0)
);
comment on column fs_fiadb.pop_eval.cn
  is 'NA';
comment on column fs_fiadb.pop_eval.eval_grp_cn
  is 'Foreign Key to POP_EVAL_GRP';
comment on column fs_fiadb.pop_eval.rscd
  is 'Region or Station Code';
comment on column fs_fiadb.pop_eval.evalid
  is 'Evaluation ID';
comment on column fs_fiadb.pop_eval.eval_descr
  is 'Evaluation description';
comment on column fs_fiadb.pop_eval.statecd
  is 'State Code of primary state being evaluated';
comment on column fs_fiadb.pop_eval.location_nm
  is 'Usually state name or super state';
comment on column fs_fiadb.pop_eval.report_year_nm
  is 'List of years in which panels were collected';
comment on column fs_fiadb.pop_eval.start_invyr
  is 'Starting year for evaluation';
comment on column fs_fiadb.pop_eval.end_invyr
  is 'Ending year for evaluation';
comment on column fs_fiadb.pop_eval.land_only
  is 'Y if only land is sampled (census water excluded), N otherwise';
comment on column fs_fiadb.pop_eval.timberland_only
  is 'Y if estimates are for timberland only, N if reserved lands sampled at t and t-1 for change est., or reserved sampled at t for current est.';
comment on column fs_fiadb.pop_eval.growth_acct
  is 'Y if evaluation can be used for growth accounting, N if evaluation cannot be used for growth accounting, null if evaluation type is not EXPGROW';
comment on column fs_fiadb.pop_eval.estn_method
  is 'Estimation method, e.g. post-stratification or simple random';
comment on column fs_fiadb.pop_eval.notes
  is 'Evaluation notes';
comment on column fs_fiadb.pop_eval.created_date
  is 'Created date';
comment on column fs_fiadb.pop_eval.modified_date
  is 'Modified date';
create index PEV_PEG_FK_I on FS_FIADB.POP_EVAL (EVAL_GRP_CN);
alter table FS_FIADB.POP_EVAL add constraint PEV_PK primary key (CN);
alter table FS_FIADB.POP_EVAL add constraint PEV_UK unique (EVALID, RSCD);
alter table FS_FIADB.POP_EVAL add constraint PEV_PEG_FK foreign key (EVAL_GRP_CN) references FS_FIADB.POP_EVAL_GRP (CN);