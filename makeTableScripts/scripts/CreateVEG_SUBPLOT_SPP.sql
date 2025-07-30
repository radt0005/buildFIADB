CREATE TABLE fs_fiadb.veg_subplot_spp
(
cn                          VARCHAR(34) NOT NULL,
plt_cn                      VARCHAR(34) NOT NULL,
vvt_cn                      VARCHAR(34) NOT NULL,
vsb_cn                      VARCHAR(34),
vps_cn                      VARCHAR(34) NOT NULL,
invyr                       INTEGER NOT NULL,
statecd                     INTEGER NOT NULL,
countycd                    INTEGER NOT NULL,
plot                        INTEGER NOT NULL,
subp                        INTEGER,
veg_fldspcd                 VARCHAR(16) NOT NULL,
unique_sp_nbr               INTEGER NOT NULL,
veg_spcd                    VARCHAR(16) NOT NULL,
sp_canopy_cover_total       DECIMAL(5,2),
sp_canopy_cover_layer_1_2   DECIMAL(5,2),
sp_canopy_cover_layer_3     DECIMAL(5,2),
sp_canopy_cover_layer_4     DECIMAL(5,2),
quad_1_presence             INTEGER,
quad_2_presence             INTEGER,
quad_3_presence             INTEGER,
dummy_subp_cover_pre2004    INTEGER,
max_cover_layer_nbr_pre2004 INTEGER,
created_by                  VARCHAR(30),
created_date                TIMESTAMP(0),
created_in_instance         VARCHAR(6),
modified_by                 VARCHAR(30),
modified_date               TIMESTAMP(0),
modified_in_instance        VARCHAR(6)
);
comment on column fs_fiadb.veg_subplot_spp.cn
  is 'CN partly identifies NIMS_VEG_SUBPLOT_SPECIES_TBL';
comment on column fs_fiadb.veg_subplot_spp.plt_cn
  is 'PLT_CN is foreign key to parent NIMS_PLOT_TBL.CN';
comment on column fs_fiadb.veg_subplot_spp.vvt_cn
  is 'VVT_CN is foreign key to parent NIMS_VEG_VISIT_TBL.CN';
comment on column fs_fiadb.veg_subplot_spp.vsb_cn
  is 'NA';
comment on column fs_fiadb.veg_subplot_spp.vps_cn
  is 'VPS_CN is foreign key to parent NIMS_VEG_PLOT_SPECIES_TBL.CN';
comment on column fs_fiadb.veg_subplot_spp.invyr
  is 'NA';
comment on column fs_fiadb.veg_subplot_spp.statecd
  is 'NA';
comment on column fs_fiadb.veg_subplot_spp.countycd
  is 'NA';
comment on column fs_fiadb.veg_subplot_spp.plot
  is 'NA';
comment on column fs_fiadb.veg_subplot_spp.subp
  is 'Subplot number';
comment on column fs_fiadb.veg_subplot_spp.veg_fldspcd
  is 'NA';
comment on column fs_fiadb.veg_subplot_spp.unique_sp_nbr
  is 'NA';
comment on column fs_fiadb.veg_subplot_spp.veg_spcd
  is 'NA';
comment on column fs_fiadb.veg_subplot_spp.sp_canopy_cover_total
  is 'Total Canopy Cover Percent (w; trace) of Species within all accessible forest land on subplot';
comment on column fs_fiadb.veg_subplot_spp.sp_canopy_cover_layer_1_2
  is 'Layers 1 and 2 Canopy Cover Percent (w; trace) of Species within all accessible forest land on subplot';
comment on column fs_fiadb.veg_subplot_spp.sp_canopy_cover_layer_3
  is 'Layer 3 Canopy Cover Percent (w; trace) of Species within all accessible forest land on subplot';
comment on column fs_fiadb.veg_subplot_spp.sp_canopy_cover_layer_4
  is 'Layer 4 Canopy Cover Percent (w; trace) of Species within all accessible forest land on subplot';
comment on column fs_fiadb.veg_subplot_spp.quad_1_presence
  is 'Indicates whether species is found on Quadrat 1 of current subplot';
comment on column fs_fiadb.veg_subplot_spp.quad_2_presence
  is 'Indicates whether species is found on Quadrat 2 of current subplot';
comment on column fs_fiadb.veg_subplot_spp.quad_3_presence
  is 'Indicates whether species is found on Quadrat 3 of current subplot';
comment on column fs_fiadb.veg_subplot_spp.dummy_subp_cover_pre2004
  is ''DUMMY_SUBP_COVER_PRE2004.  For NIMS_VEG_VISIT.VEG_MANUAL = 1.7 plots only.  0 = subplot species cover data is field recorded; 1 = NIMS_VEG_VISIT.VEG_MANUAL = 1.7 dummy subplot cover data added where a quadrat species record existed without a matching subplot species record.  When DUMMY_SUBP_COVER_PRE2004 = 1, SP_CANOPY_COVER_TOTAL is set to 1 and MAX_COVER_LAYER_NBR_PRE2004 is set to 1.';';
comment on column fs_fiadb.veg_subplot_spp.max_cover_layer_nbr_pre2004
  is ''MAX_COVER_LAYER_NBR_PRE2004.  For NIMS_VEG_VISIT.VEG_MANUAL = 1.7 plots only.  Layer number with maximum cover for the species on the subplot.';';
comment on column fs_fiadb.veg_subplot_spp.created_by
  is 'CREATED_BY user';
comment on column fs_fiadb.veg_subplot_spp.created_date
  is 'CREATED_DATE';
comment on column fs_fiadb.veg_subplot_spp.created_in_instance
  is 'CREATED_IN_INSTANCE is of NIMS_VEG_SUBPLOT_SPECIES_TBL';
comment on column fs_fiadb.veg_subplot_spp.modified_by
  is 'MODIFIED_BY user';
comment on column fs_fiadb.veg_subplot_spp.modified_date
  is 'MODIFIED_DATE';
comment on column fs_fiadb.veg_subplot_spp.modified_in_instance
  is 'MODIFIED_IN_INSTANCE is of NIMS_VEG_SUBPLOT_SPECIES_TBL';
create index VSS_NAT_I on FS_FIADB.VEG_SUBPLOT_SPP (STATECD, INVYR, COUNTYCD, PLOT, SUBP, UNIQUE_SP_NBR, VEG_SPCD);
create index VSS_VPS_FK_I on FS_FIADB.VEG_SUBPLOT_SPP (PLT_CN, VVT_CN, VPS_CN);
create index VSS_VSB_FK_I on FS_FIADB.VEG_SUBPLOT_SPP (PLT_CN, VVT_CN, VSB_CN);
alter table FS_FIADB.VEG_SUBPLOT_SPP add constraint VSS_PK primary key (CN);
alter table FS_FIADB.VEG_SUBPLOT_SPP add constraint VSS_UK unique (PLT_CN, VVT_CN, VPS_CN, VSB_CN);
alter table FS_FIADB.VEG_SUBPLOT_SPP add constraint VSS_VPS_FK foreign key (VPS_CN, PLT_CN, VVT_CN) references FS_FIADB.VEG_PLOT_SPECIES (CN, PLT_CN, VVT_CN);
alter table FS_FIADB.VEG_SUBPLOT_SPP add constraint VSS_VSB_FK foreign key (PLT_CN, VVT_CN, VSB_CN) references FS_FIADB.VEG_SUBPLOT (PLT_CN, VVT_CN, CN);