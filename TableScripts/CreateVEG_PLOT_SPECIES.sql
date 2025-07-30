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
comment on column fs_fiadb.veg_plot_species.cn
  is 'CN partly identifies NIMS_VEG_PLOT_SPECIES_TBL';
comment on column fs_fiadb.veg_plot_species.plt_cn
  is 'PLT_CN is foreign key to parent NIMS_PLOT_TBL.CN';
comment on column fs_fiadb.veg_plot_species.vvt_cn
  is 'VVT_CN is foreign key to parent NIMS_VEG_VISIT_TBL.CN';
comment on column fs_fiadb.veg_plot_species.invyr
  is 'NA';
comment on column fs_fiadb.veg_plot_species.statecd
  is 'NA';
comment on column fs_fiadb.veg_plot_species.countycd
  is 'NA';
comment on column fs_fiadb.veg_plot_species.plot
  is 'NA';
comment on column fs_fiadb.veg_plot_species.veg_fldspcd
  is 'Veg Field Species Code';
comment on column fs_fiadb.veg_plot_species.unique_sp_nbr
  is 'Unique Species Number identifies the number of specie occurrences within each NRCS genus or unknown code. For example, 2 unidentifiable CAREX species would be entered as 2 separate records with differing Unique Species Numbers to show that they are not the same species.';
comment on column fs_fiadb.veg_plot_species.veg_spcd
  is 'Veg Species Code';
comment on column fs_fiadb.veg_plot_species.specimen_collected
  is 'Y or N (Yes or No) value indicating whether a specimen sample was collected.';
comment on column fs_fiadb.veg_plot_species.specimen_label_nbr
  is 'For any unknown specimen collected, the corresponding specimen label number';
comment on column fs_fiadb.veg_plot_species.specimen_not_collected_reason
  is 'If VEG_FLDSPCD is an NRCS genus or unknown code and a specimen is not collected, provides reason.';
comment on column fs_fiadb.veg_plot_species.specimen_resolved
  is 'If VEG_FLDSPCD code type is "unknown", set to "N" until plant voucher data loaded; set to null if code type="species"; set to "Y" upon NIMS_VEG_UNKNOWN_UPDATE table load for specific record.';
comment on column fs_fiadb.veg_plot_species.created_date
  is 'CREATED_DATE';
comment on column fs_fiadb.veg_plot_species.modified_date
  is 'MODIFIED_DATE';
comment on column fs_fiadb.veg_plot_species.updated_unknown_species_date
  is 'Date of unknown species';
create index VPS_NAT_I on FS_FIADB.VEG_PLOT_SPECIES (UNIQUE_SP_NBR, PLOT, STATECD, INVYR, COUNTYCD, VEG_FLDSPCD);
alter table FS_FIADB.VEG_PLOT_SPECIES add constraint VPS_PK primary key (CN);
alter table FS_FIADB.VEG_PLOT_SPECIES add constraint VPS_UK unique (VEG_FLDSPCD, UNIQUE_SP_NBR, PLT_CN, VVT_CN);
alter table FS_FIADB.VEG_PLOT_SPECIES add constraint VPS_UK2 unique (CN, PLT_CN, VVT_CN);