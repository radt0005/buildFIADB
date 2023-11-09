-- Create table
create table FS_FIADB.DWM_VISIT
(
  cn                     VARCHAR(34) not null,
  plt_cn                 VARCHAR(34) not null,
  invyr                  SMALLINT not null,
  statecd                SMALLINT not null,
  countycd               SMALLINT not null,
  plot                   INT not null,
  measday                SMALLINT,
  measmon                SMALLINT,
  measyear               SMALLINT,
  qastatcd               SMALLINT,
  crwtypcd               SMALLINT,
  smpkndcd               SMALLINT,
  created_by             VARCHAR(30),
  created_date           TIMESTAMP(0),
  created_in_instance    VARCHAR(6),
  modified_by            VARCHAR(30),
  modified_date          TIMESTAMP(0),
  modified_in_instance   VARCHAR(6),
  cwd_sample_method      VARCHAR(6),
  fwd_sample_method      VARCHAR(6),
  micr_sample_method     VARCHAR(6),
  dlf_sample_method      VARCHAR(6),
  pile_sample_method     VARCHAR(6),
  dwm_sampling_status_cd SMALLINT,
  dwm_nbr_subp           SMALLINT,
  dwm_nbr_subp_transect  SMALLINT,
  dwm_subplist           SMALLINT,
  dwm_transect_length    DECIMAL(4,1),
  qa_status              SMALLINT
);
-- Add comments to the table 
comment on table FS_FIADB.DWM_VISIT
  is '6.0';
-- Add comments to the columns 
comment on column FS_FIADB.DWM_VISIT.cn
  is 'Unique Index';
comment on column FS_FIADB.DWM_VISIT.plt_cn
  is 'Foreign Key to NIMS_PLOT';
comment on column FS_FIADB.DWM_VISIT.statecd
  is 'state code';
comment on column FS_FIADB.DWM_VISIT.countycd
  is 'County Code';
comment on column FS_FIADB.DWM_VISIT.plot
  is 'P2 Plot Number';
comment on column FS_FIADB.DWM_VISIT.measday
  is 'Measurement Day';
comment on column FS_FIADB.DWM_VISIT.measmon
  is 'Measurement Month';
comment on column FS_FIADB.DWM_VISIT.measyear
  is 'Measurement Year';
comment on column FS_FIADB.DWM_VISIT.qastatcd
  is 'QA Status Code';
comment on column FS_FIADB.DWM_VISIT.crwtypcd
  is 'Crew type code';
comment on column FS_FIADB.DWM_VISIT.smpkndcd
  is 'Sample Kind Code';
comment on column FS_FIADB.DWM_VISIT.created_by
  is 'Created by';
comment on column FS_FIADB.DWM_VISIT.created_date
  is 'Created Date';
comment on column FS_FIADB.DWM_VISIT.created_in_instance
  is 'Created in Instance';
comment on column FS_FIADB.DWM_VISIT.modified_by
  is 'Modified by';
comment on column FS_FIADB.DWM_VISIT.modified_date
  is 'Modified Date';
comment on column FS_FIADB.DWM_VISIT.modified_in_instance
  is 'Modified in Instance';
comment on column FS_FIADB.DWM_VISIT.cwd_sample_method
  is 'Code indicating what design and sampling protocol were used to collect coarse woody debris data';
comment on column FS_FIADB.DWM_VISIT.fwd_sample_method
  is 'Code indicating what design and sampling protocol were used to collect fine woody debris data';
comment on column FS_FIADB.DWM_VISIT.micr_sample_method
  is 'Code indicating what design and sampling protocol were used to collect microplot fuels data';
comment on column FS_FIADB.DWM_VISIT.dlf_sample_method
  is 'Code indicating what design and sampling protocol were used to collect duff, litter, and fuelbed data';
comment on column FS_FIADB.DWM_VISIT.pile_sample_method
  is 'Code indicating what design and sampling protocol were used to collect residue pile data';
comment on column FS_FIADB.DWM_VISIT.dwm_sampling_status_cd
  is 'DWM Sampling Status';
comment on column FS_FIADB.DWM_VISIT.dwm_nbr_subp
  is 'DWM Number of Subplots';
comment on column FS_FIADB.DWM_VISIT.dwm_nbr_subp_transect
  is 'DWM Number of Transects on Subplot';
comment on column FS_FIADB.DWM_VISIT.dwm_subplist
  is 'DWM Subplot List';
comment on column FS_FIADB.DWM_VISIT.dwm_transect_length
  is 'DWM Transect Length';
comment on column FS_FIADB.DWM_VISIT.qa_status
  is 'qa status code';
-- Create/Recreate indexes 
create index DVT_NAT_I on FS_FIADB.DWM_VISIT (STATECD, INVYR, COUNTYCD, PLOT);
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.DWM_VISIT
  add constraint DVT_PK primary key (CN);
alter table FS_FIADB.DWM_VISIT
  add constraint DVT_UK unique (PLT_CN);
alter table FS_FIADB.DWM_VISIT
  add constraint DVT_PLT_FK foreign key (PLT_CN)
  references FS_FIADB.PLOT (CN);
