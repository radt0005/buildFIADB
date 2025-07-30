CREATE TABLE fs_fiadb.dwm_visit
(
cn                     VARCHAR(34) NOT NULL,
plt_cn                 VARCHAR(34) NOT NULL,
invyr                  INTEGER NOT NULL,
statecd                INTEGER NOT NULL,
countycd               INTEGER NOT NULL,
plot                   INTEGER NOT NULL,
measday                INTEGER,
measmon                INTEGER,
measyear               INTEGER,
qastatcd               INTEGER,
crwtypcd               INTEGER,
smpkndcd               INTEGER,
created_date           TIMESTAMP(0),
modified_date          TIMESTAMP(0),
cwd_sample_method      VARCHAR(6),
fwd_sample_method      VARCHAR(6),
micr_sample_method     VARCHAR(6),
dlf_sample_method      VARCHAR(6),
pile_sample_method     VARCHAR(6),
dwm_sampling_status_cd INTEGER,
dwm_nbr_subp           INTEGER,
dwm_nbr_subp_transect  INTEGER,
dwm_subplist           INTEGER,
dwm_transect_length    DECIMAL(4,1),
qa_status              INTEGER
);
comment on column fs_fiadb.dwm_visit.cn
  is 'Unique Index';
comment on column fs_fiadb.dwm_visit.plt_cn
  is 'Foreign Key to NIMS_PLOT';
comment on column fs_fiadb.dwm_visit.invyr
  is 'NA';
comment on column fs_fiadb.dwm_visit.statecd
  is 'state code';
comment on column fs_fiadb.dwm_visit.countycd
  is 'County Code';
comment on column fs_fiadb.dwm_visit.plot
  is 'P2 Plot Number';
comment on column fs_fiadb.dwm_visit.measday
  is 'Measurement Day';
comment on column fs_fiadb.dwm_visit.measmon
  is 'Measurement Month';
comment on column fs_fiadb.dwm_visit.measyear
  is 'Measurement Year';
comment on column fs_fiadb.dwm_visit.qastatcd
  is 'QA Status Code';
comment on column fs_fiadb.dwm_visit.crwtypcd
  is 'Crew type code';
comment on column fs_fiadb.dwm_visit.smpkndcd
  is 'Sample Kind Code';
comment on column fs_fiadb.dwm_visit.created_date
  is 'Created Date';
comment on column fs_fiadb.dwm_visit.modified_date
  is 'Modified Date';
comment on column fs_fiadb.dwm_visit.cwd_sample_method
  is 'Code indicating what design and sampling protocol were used to collect coarse woody debris data';
comment on column fs_fiadb.dwm_visit.fwd_sample_method
  is 'Code indicating what design and sampling protocol were used to collect fine woody debris data';
comment on column fs_fiadb.dwm_visit.micr_sample_method
  is 'Code indicating what design and sampling protocol were used to collect microplot fuels data';
comment on column fs_fiadb.dwm_visit.dlf_sample_method
  is 'Code indicating what design and sampling protocol were used to collect duff, litter, and fuelbed data';
comment on column fs_fiadb.dwm_visit.pile_sample_method
  is 'Code indicating what design and sampling protocol were used to collect residue pile data';
comment on column fs_fiadb.dwm_visit.dwm_sampling_status_cd
  is 'DWM Sampling Status';
comment on column fs_fiadb.dwm_visit.dwm_nbr_subp
  is 'DWM Number of Subplots';
comment on column fs_fiadb.dwm_visit.dwm_nbr_subp_transect
  is 'DWM Number of Transects on Subplot';
comment on column fs_fiadb.dwm_visit.dwm_subplist
  is 'DWM Subplot List';
comment on column fs_fiadb.dwm_visit.dwm_transect_length
  is 'DWM Transect Length';
comment on column fs_fiadb.dwm_visit.qa_status
  is 'qa status code';
create index DVT_NAT_I on FS_FIADB.DWM_VISIT (STATECD, INVYR, PLOT, COUNTYCD);
alter table FS_FIADB.DWM_VISIT add constraint DVT_PK primary key (CN);
alter table FS_FIADB.DWM_VISIT add constraint DVT_UK unique (PLT_CN);
alter table FS_FIADB.DWM_VISIT add constraint DVT_PLT_FK foreign key (PLT_CN) references FS_FIADB.PLOT (CN);