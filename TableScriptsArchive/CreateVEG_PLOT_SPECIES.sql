-- Create table
create table FS_FIADB.VEG_PLOT_SPECIES
(
  cn                            VARCHAR(34) not null,
  plt_cn                        VARCHAR(34) not null,
  vvt_cn                        VARCHAR(34) not null,
  invyr                         SMALLINT not null,
  statecd                       SMALLINT not null,
  countycd                      SMALLINT not null,
  plot                          INT not null,
  veg_fldspcd                   VARCHAR(16) not null,
  unique_sp_nbr                 SMALLINT not null,
  veg_spcd                      VARCHAR(16),
  specimen_collected            CHAR(1),
  specimen_label_nbr            DOUBLE PRECISION,
  specimen_not_collected_reason SMALLINT,
  specimen_resolved             CHAR(1),
  created_by                    VARCHAR(30),
  created_date                  TIMESTAMP(0),
  created_in_instance           VARCHAR(6),
  modified_by                   VARCHAR(30),
  modified_date                 TIMESTAMP(0),
  modified_in_instance          VARCHAR(6),
  updated_unknown_species_date  TIMESTAMP(0)
);
-- Add comments to the table 
comment on table FS_FIADB.VEG_PLOT_SPECIES
  is '6.0';
-- Add comments to the columns 
comment on column FS_FIADB.VEG_PLOT_SPECIES.cn
  is 'CN partly identifies NIMS_VEG_PLOT_SPECIES_TBL';
comment on column FS_FIADB.VEG_PLOT_SPECIES.plt_cn
  is 'PLT_CN is foreign key to parent NIMS_PLOT_TBL.CN';
comment on column FS_FIADB.VEG_PLOT_SPECIES.vvt_cn
  is 'VVT_CN is foreign key to parent NIMS_VEG_VISIT_TBL.CN';
comment on column FS_FIADB.VEG_PLOT_SPECIES.veg_fldspcd
  is 'Veg Field Species Code';
comment on column FS_FIADB.VEG_PLOT_SPECIES.unique_sp_nbr
  is 'Unique Species Number identifies the number of specie occurrences within each NRCS genus or unknown code. For example, 2 unidentifiable CAREX species would be entered as 2 separate records with differing Unique Species Numbers to show that they are not the same species.';
comment on column FS_FIADB.VEG_PLOT_SPECIES.veg_spcd
  is 'Veg Species Code';
comment on column FS_FIADB.VEG_PLOT_SPECIES.specimen_collected
  is 'Y or N (Yes or No) value indicating whether a specimen sample was collected.';
comment on column FS_FIADB.VEG_PLOT_SPECIES.specimen_label_nbr
  is 'For any unknown specimen collected, the corresponding specimen label number';
comment on column FS_FIADB.VEG_PLOT_SPECIES.specimen_not_collected_reason
  is 'If VEG_FLDSPCD is an NRCS genus or unknown code and a specimen is not collected, provides reason.';
comment on column FS_FIADB.VEG_PLOT_SPECIES.specimen_resolved
  is 'If VEG_FLDSPCD code type is "unknown", set to "N" until plant voucher data loaded; set to null if code type="species"; set to "Y" upon NIMS_VEG_UNKNOWN_UPDATE table load for specific record.';
comment on column FS_FIADB.VEG_PLOT_SPECIES.created_by
  is 'CREATED_BY user';
comment on column FS_FIADB.VEG_PLOT_SPECIES.created_date
  is 'CREATED_DATE';
comment on column FS_FIADB.VEG_PLOT_SPECIES.created_in_instance
  is 'CREATED_IN_INSTANCE is of NIMS_VEG_PLOT_SPECIES_TBL';
comment on column FS_FIADB.VEG_PLOT_SPECIES.modified_by
  is 'MODIFIED_BY user';
comment on column FS_FIADB.VEG_PLOT_SPECIES.modified_date
  is 'MODIFIED_DATE';
comment on column FS_FIADB.VEG_PLOT_SPECIES.modified_in_instance
  is 'MODIFIED_IN_INSTANCE is of NIMS_VEG_PLOT_SPECIES_TBL';
comment on column FS_FIADB.VEG_PLOT_SPECIES.updated_unknown_species_date
  is 'Date of unknown species';
-- Create/Recreate indexes 
create index VPS_NAT_I on FS_FIADB.VEG_PLOT_SPECIES (STATECD, INVYR, COUNTYCD, PLOT, VEG_FLDSPCD, UNIQUE_SP_NBR);
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.VEG_PLOT_SPECIES
  add constraint VPS_PK primary key (CN);
alter table FS_FIADB.VEG_PLOT_SPECIES
  add constraint VPS_UK unique (PLT_CN, VVT_CN, VEG_FLDSPCD, UNIQUE_SP_NBR);
alter table FS_FIADB.VEG_PLOT_SPECIES
  add constraint VPS_UK2 unique (PLT_CN, VVT_CN, CN);