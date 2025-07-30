CREATE TABLE fs_fiadb.veg_quadrat
(
cn                     VARCHAR(34) NOT NULL,
plt_cn                 VARCHAR(34) NOT NULL,
vvt_cn                 VARCHAR(34) NOT NULL,
vsb_cn                 VARCHAR(34) NOT NULL,
invyr                  INTEGER NOT NULL,
statecd                INTEGER NOT NULL,
countycd               INTEGER NOT NULL,
plot                   INTEGER NOT NULL,
subp                   INTEGER,
quadrat                INTEGER NOT NULL,
condid                 INTEGER,
quadrat_status         INTEGER,
quadrat_status_pre2004 INTEGER,
trampling              INTEGER,
created_date           TIMESTAMP(0),
modified_date          TIMESTAMP(0)
);
comment on column fs_fiadb.veg_quadrat.cn
  is 'CN partly identifies NIMS_VEG_QUADRAT_TBL';
comment on column fs_fiadb.veg_quadrat.plt_cn
  is 'PLT_CN is foreign key to parent NIMS_PLOT_TBL.CN';
comment on column fs_fiadb.veg_quadrat.vvt_cn
  is 'VVT_CN is foreign key to parent NIMS_VEG_VISIT_TBL.CN';
comment on column fs_fiadb.veg_quadrat.vsb_cn
  is 'VSB_CN partly identifies parent NIMS_VEG_SUBPLOT_TBL.CN';
comment on column fs_fiadb.veg_quadrat.invyr
  is 'NA';
comment on column fs_fiadb.veg_quadrat.statecd
  is 'NA';
comment on column fs_fiadb.veg_quadrat.countycd
  is 'NA';
comment on column fs_fiadb.veg_quadrat.plot
  is 'NA';
comment on column fs_fiadb.veg_quadrat.subp
  is 'NA';
comment on column fs_fiadb.veg_quadrat.quadrat
  is 'Quadrat Number';
comment on column fs_fiadb.veg_quadrat.condid
  is 'Condition Class Number';
comment on column fs_fiadb.veg_quadrat.quadrat_status
  is 'Quadrat Status Code';
comment on column fs_fiadb.veg_quadrat.quadrat_status_pre2004
  is 'QUADRAT_STATUS_PRE2004: Quadrat Status Code as field-recorded for 2001		 - 2003 plots.  Consistent with NIMS_VEG_VISIT.VEG_MANUAL = 1.7 P3 Veg protocol.';
comment on column fs_fiadb.veg_quadrat.trampling
  is 'Trampling Code';
comment on column fs_fiadb.veg_quadrat.created_date
  is 'CREATED_DATE';
comment on column fs_fiadb.veg_quadrat.modified_date
  is 'MODIFIED_DATE';
create index VQT_NAT_I on FS_FIADB.VEG_QUADRAT (QUADRAT, INVYR, STATECD, SUBP, COUNTYCD, PLOT);
create index VQT_VSB_FK_I on FS_FIADB.VEG_QUADRAT (VVT_CN, PLT_CN, VSB_CN);
alter table FS_FIADB.VEG_QUADRAT add constraint VQT_PK primary key (CN);
alter table FS_FIADB.VEG_QUADRAT add constraint VQT_UK unique (VVT_CN, PLT_CN, QUADRAT, VSB_CN);
alter table FS_FIADB.VEG_QUADRAT add constraint VQT_UK2 unique (CN, PLT_CN, VSB_CN, VVT_CN);
alter table FS_FIADB.VEG_QUADRAT add constraint VQT_VSB_FK foreign key (VVT_CN, PLT_CN, VSB_CN) references FS_FIADB.VEG_SUBPLOT (VVT_CN, PLT_CN, CN);