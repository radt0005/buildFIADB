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
created_date                TIMESTAMP(0),
modified_date               TIMESTAMP(0)
);
create index VSS_NAT_I on FS_FIADB.VEG_SUBPLOT_SPP (STATECD, INVYR, COUNTYCD, PLOT, SUBP, UNIQUE_SP_NBR, VEG_SPCD);
create index VSS_VPS_FK_I on FS_FIADB.VEG_SUBPLOT_SPP (PLT_CN, VVT_CN, VPS_CN);
create index VSS_VSB_FK_I on FS_FIADB.VEG_SUBPLOT_SPP (PLT_CN, VVT_CN, VSB_CN);
alter table FS_FIADB.VEG_SUBPLOT_SPP add constraint VSS_PK primary key (CN);
alter table FS_FIADB.VEG_SUBPLOT_SPP add constraint VSS_UK unique (PLT_CN, VVT_CN, VPS_CN, VSB_CN);
alter table FS_FIADB.VEG_SUBPLOT_SPP add constraint VSS_VPS_FK foreign key (VPS_CN, PLT_CN, VVT_CN) references FS_FIADB.VEG_PLOT_SPECIES (CN, PLT_CN, VVT_CN);
alter table FS_FIADB.VEG_SUBPLOT_SPP add constraint VSS_VSB_FK foreign key (PLT_CN, VVT_CN, VSB_CN) references FS_FIADB.VEG_SUBPLOT (PLT_CN, VVT_CN, CN);