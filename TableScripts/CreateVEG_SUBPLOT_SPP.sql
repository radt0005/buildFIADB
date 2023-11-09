-- Create table
create table FS_FIADB.VEG_SUBPLOT_SPP
(
  cn                          VARCHAR(34) not null,
  plt_cn                      VARCHAR(34) not null,
  vvt_cn                      VARCHAR(34) not null,
  vsb_cn                      VARCHAR(34),
  vps_cn                      VARCHAR(34) not null,
  invyr                       SMALLINT not null,
  statecd                     SMALLINT not null,
  countycd                    SMALLINT not null,
  plot                        INT not null,
  subp                        SMALLINT,
  veg_fldspcd                 VARCHAR(16) not null,
  unique_sp_nbr               SMALLINT not null,
  veg_spcd                    VARCHAR(16) not null,
  sp_canopy_cover_total       DECIMAL(5,2),
  sp_canopy_cover_layer_1_2   DECIMAL(5,2),
  sp_canopy_cover_layer_3     DECIMAL(5,2),
  sp_canopy_cover_layer_4     DECIMAL(5,2),
  quad_1_presence             SMALLINT,
  quad_2_presence             SMALLINT,
  quad_3_presence             SMALLINT,
  dummy_subp_cover_pre2004    SMALLINT,
  max_cover_layer_nbr_pre2004 SMALLINT,
  created_by                  VARCHAR(30),
  created_date                TIMESTAMP(0),
  created_in_instance         VARCHAR(6),
  modified_by                 VARCHAR(30),
  modified_date               TIMESTAMP(0),
  modified_in_instance        VARCHAR(6)
);
-- Add comments to the table 
comment on table FS_FIADB.VEG_SUBPLOT_SPP
  is '6.0';
-- Add comments to the columns 
comment on column FS_FIADB.VEG_SUBPLOT_SPP.cn
  is 'CN partly identifies NIMS_VEG_SUBPLOT_SPECIES_TBL';
comment on column FS_FIADB.VEG_SUBPLOT_SPP.plt_cn
  is 'PLT_CN is foreign key to parent NIMS_PLOT_TBL.CN';
comment on column FS_FIADB.VEG_SUBPLOT_SPP.vvt_cn
  is 'VVT_CN is foreign key to parent NIMS_VEG_VISIT_TBL.CN';
comment on column FS_FIADB.VEG_SUBPLOT_SPP.vps_cn
  is 'VPS_CN is foreign key to parent NIMS_VEG_PLOT_SPECIES_TBL.CN';
comment on column FS_FIADB.VEG_SUBPLOT_SPP.subp
  is 'Subplot number';
comment on column FS_FIADB.VEG_SUBPLOT_SPP.sp_canopy_cover_total
  is 'Total Canopy Cover Percent (w; trace) of Species within all accessible forest land on subplot';
comment on column FS_FIADB.VEG_SUBPLOT_SPP.sp_canopy_cover_layer_1_2
  is 'Layers 1 and 2 Canopy Cover Percent (w; trace) of Species within all accessible forest land on subplot';
comment on column FS_FIADB.VEG_SUBPLOT_SPP.sp_canopy_cover_layer_3
  is 'Layer 3 Canopy Cover Percent (w; trace) of Species within all accessible forest land on subplot';
comment on column FS_FIADB.VEG_SUBPLOT_SPP.sp_canopy_cover_layer_4
  is 'Layer 4 Canopy Cover Percent (w; trace) of Species within all accessible forest land on subplot';
comment on column FS_FIADB.VEG_SUBPLOT_SPP.quad_1_presence
  is 'Indicates whether species is found on Quadrat 1 of current subplot';
comment on column FS_FIADB.VEG_SUBPLOT_SPP.quad_2_presence
  is 'Indicates whether species is found on Quadrat 2 of current subplot';
comment on column FS_FIADB.VEG_SUBPLOT_SPP.quad_3_presence
  is 'Indicates whether species is found on Quadrat 3 of current subplot';
comment on column FS_FIADB.VEG_SUBPLOT_SPP.dummy_subp_cover_pre2004
  is '''DUMMY_SUBP_COVER_PRE2004.  For NIMS_VEG_VISIT.VEG_MANUAL = 1.7 plots only.  0 = subplot species cover data is field recorded; 1 = NIMS_VEG_VISIT.VEG_MANUAL = 1.7 dummy subplot cover data added where a quadrat species record existed without a matching subplot species record.  When DUMMY_SUBP_COVER_PRE2004 = 1, SP_CANOPY_COVER_TOTAL is set to 1 and MAX_COVER_LAYER_NBR_PRE2004 is set to 1.'';';
comment on column FS_FIADB.VEG_SUBPLOT_SPP.max_cover_layer_nbr_pre2004
  is '''MAX_COVER_LAYER_NBR_PRE2004.  For NIMS_VEG_VISIT.VEG_MANUAL = 1.7 plots only.  Layer number with maximum cover for the species on the subplot.'';';
comment on column FS_FIADB.VEG_SUBPLOT_SPP.created_by
  is 'CREATED_BY user';
comment on column FS_FIADB.VEG_SUBPLOT_SPP.created_date
  is 'CREATED_DATE';
comment on column FS_FIADB.VEG_SUBPLOT_SPP.created_in_instance
  is 'CREATED_IN_INSTANCE is of NIMS_VEG_SUBPLOT_SPECIES_TBL';
comment on column FS_FIADB.VEG_SUBPLOT_SPP.modified_by
  is 'MODIFIED_BY user';
comment on column FS_FIADB.VEG_SUBPLOT_SPP.modified_date
  is 'MODIFIED_DATE';
comment on column FS_FIADB.VEG_SUBPLOT_SPP.modified_in_instance
  is 'MODIFIED_IN_INSTANCE is of NIMS_VEG_SUBPLOT_SPECIES_TBL';
-- Create/Recreate indexes 
create index VSS_NAT_I on FS_FIADB.VEG_SUBPLOT_SPP (STATECD, INVYR, COUNTYCD, PLOT, SUBP, UNIQUE_SP_NBR, VEG_SPCD);
create index VSS_VPS_FK_I on FS_FIADB.VEG_SUBPLOT_SPP (PLT_CN, VVT_CN, VPS_CN);
create index VSS_VSB_FK_I on FS_FIADB.VEG_SUBPLOT_SPP (PLT_CN, VVT_CN, VSB_CN);
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.VEG_SUBPLOT_SPP
  add constraint VSS_PK primary key (CN);
alter table FS_FIADB.VEG_SUBPLOT_SPP
  add constraint VSS_UK unique (PLT_CN, VVT_CN, VPS_CN, VSB_CN);
alter table FS_FIADB.VEG_SUBPLOT_SPP
  add constraint VSS_VPS_FK foreign key (PLT_CN, VVT_CN, VPS_CN)
  references FS_FIADB.VEG_PLOT_SPECIES (PLT_CN, VVT_CN, CN);
alter table FS_FIADB.VEG_SUBPLOT_SPP
  add constraint VSS_VSB_FK foreign key (PLT_CN, VVT_CN, VSB_CN)
  references FS_FIADB.VEG_SUBPLOT (PLT_CN, VVT_CN, CN);