CREATE TABLE fs_fiadb.veg_plot_species
(
cn                            VARCHAR(34) NOT NULL,
plt_cn                        VARCHAR(34) NOT NULL,
vvt_cn                        VARCHAR(34) NOT NULL,
invyr                         INTEGER NOT NULL,
statecd                       INTEGER NOT NULL,
countycd                      INTEGER NOT NULL,
plot                          INTEGER NOT NULL,
veg_fldspcd                   VARCHAR(16) NOT NULL,
unique_sp_nbr                 INTEGER NOT NULL,
veg_spcd                      VARCHAR(16),
specimen_collected            CHAR(1),
specimen_label_nbr            DOUBLE PRECISION,
specimen_not_collected_reason INTEGER,
specimen_resolved             CHAR(1),
created_date                  TIMESTAMP(0),
modified_date                 TIMESTAMP(0),
updated_unknown_species_date  TIMESTAMP(0)
);
create index VPS_NAT_I on FS_FIADB.VEG_PLOT_SPECIES (STATECD, INVYR, COUNTYCD, PLOT, VEG_FLDSPCD, UNIQUE_SP_NBR);
alter table FS_FIADB.VEG_PLOT_SPECIES add constraint VPS_PK primary key (CN);
alter table FS_FIADB.VEG_PLOT_SPECIES add constraint VPS_UK unique (PLT_CN, VVT_CN, VEG_FLDSPCD, UNIQUE_SP_NBR);
alter table FS_FIADB.VEG_PLOT_SPECIES add constraint VPS_UK2 unique (PLT_CN, VVT_CN, CN);