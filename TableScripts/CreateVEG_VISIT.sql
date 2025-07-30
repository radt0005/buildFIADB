CREATE TABLE fs_fiadb.veg_visit
(
cn                  VARCHAR(34) NOT NULL,
plt_cn              VARCHAR(34) NOT NULL,
invyr               INTEGER NOT NULL,
statecd             INTEGER NOT NULL,
countycd            INTEGER NOT NULL,
plot                INTEGER NOT NULL,
veg_qa_status       INTEGER,
veg_kindcd          INTEGER,
veg_manual          VARCHAR(8),
trace_cover_allowed INTEGER,
veg_measyear        INTEGER,
veg_measmon         INTEGER,
veg_measday         INTEGER,
veg_sample_basis    INTEGER,
created_date        TIMESTAMP(0),
modified_date       TIMESTAMP(0),
qa_status           INTEGER
);
comment on column fs_fiadb.veg_visit.cn
  is 'CN partly identifies NIMS_VEG_VISIT_TBL';
comment on column fs_fiadb.veg_visit.plt_cn
  is 'PLT_CN is foreign key to NIMS_PLOT_TBL.CN';
comment on column fs_fiadb.veg_visit.invyr
  is 'NA';
comment on column fs_fiadb.veg_visit.statecd
  is 'state code';
comment on column fs_fiadb.veg_visit.countycd
  is 'County Code';
comment on column fs_fiadb.veg_visit.plot
  is 'NA';
comment on column fs_fiadb.veg_visit.veg_qa_status
  is 'QA Status code that refers directly to VEG. Often differs from P2 QA_STATUS, but will always be linked to P2 QA_STATUS=1 plot data. (Named differently than QA_STATUS because LOAD_ and PDR_ tables require QA_STATUS as part of key.)';
comment on column fs_fiadb.veg_visit.veg_kindcd
  is 'VEG Sample Kind (Named differently than KINDCD because PDR_ tables require KINDCD as part of key.)';
comment on column fs_fiadb.veg_visit.veg_manual
  is 'P3 Veg field guide version number, usually recorded as';
comment on column fs_fiadb.veg_visit.trace_cover_allowed
  is 'TRACE_COVER_ALLOWED - added 10;24;2005; 0 = trace cover value (0.01) was not allowed in the protocol under which the plot was measured (pre-2005); 1 = trace cover value was allowed (2005 and later)';
comment on column fs_fiadb.veg_visit.veg_measyear
  is 'Measurement Year';
comment on column fs_fiadb.veg_visit.veg_measmon
  is 'VEG Measurement Month';
comment on column fs_fiadb.veg_visit.veg_measday
  is 'VEG Measurement Day';
comment on column fs_fiadb.veg_visit.veg_sample_basis
  is 'VEG_SAMPLE_BASIS: 1 = plant cover;presence sampled on all subplot conditions (possibly even hazardous and access denied) - applies to NIMS_VEG_VISIT.VEG_MANUAL = 1.7 plots; 2  = plant cover;presence sampled only on accessible forest conditions - applies to NIMS_VEG_VISIT.VEG_MANUAL = 2.0 and later plots.';
comment on column fs_fiadb.veg_visit.created_date
  is 'CREATED_DATE';
comment on column fs_fiadb.veg_visit.modified_date
  is 'MODIFIED_DATE';
comment on column fs_fiadb.veg_visit.qa_status
  is 'qa status code';
create index VVT_NAT_I on FS_FIADB.VEG_VISIT (INVYR, STATECD, PLOT, COUNTYCD);
alter table FS_FIADB.VEG_VISIT add constraint VVT_PK primary key (CN);
alter table FS_FIADB.VEG_VISIT add constraint VVT_UK unique (PLT_CN);
alter table FS_FIADB.VEG_VISIT add constraint VVT_PLT_FK foreign key (PLT_CN) references FS_FIADB.PLOT (CN);