CREATE TABLE fs_fiadb.ref_invasive_species
(
cn            VARCHAR(34) NOT NULL,
statecd       INTEGER NOT NULL,
symbol        VARCHAR(16) NOT NULL,
inv_group_cd  DOUBLE PRECISION,
unitcd_list   VARCHAR(20),
start_date    TIMESTAMP(0) NOT NULL,
end_date      TIMESTAMP(0),
manual_start  DECIMAL(3,1) NOT NULL,
manual_end    DECIMAL(3,1),
notes         VARCHAR(2000),
created_date  TIMESTAMP(0),
modified_date TIMESTAMP(0)
);
comment on column fs_fiadb.ref_invasive_species.cn
  is 'Sequence number (surrogate primary key)';
comment on column fs_fiadb.ref_invasive_species.statecd
  is 'State code';
comment on column fs_fiadb.ref_invasive_species.symbol
  is 'Symbol is the NRCS code (2000 download) used to represent a plant species.';
comment on column fs_fiadb.ref_invasive_species.inv_group_cd
  is 'Invasive species group code allows multiple species that are difficult to distinquish from one another to be recorded as the most likely species in the invasive species group, or the first one in the group if the field person was not sure.  These groups are typically defined by region.';
comment on column fs_fiadb.ref_invasive_species.unitcd_list
  is 'Optional:  This defines a list of unit codes within the state where the species is likely to be found (e.g. to differentiate E vs W Oregon and Washington).';
comment on column fs_fiadb.ref_invasive_species.start_date
  is 'Start date';
comment on column fs_fiadb.ref_invasive_species.end_date
  is 'End date';
comment on column fs_fiadb.ref_invasive_species.manual_start
  is 'Manual start';
comment on column fs_fiadb.ref_invasive_species.manual_end
  is 'Manual end';
comment on column fs_fiadb.ref_invasive_species.notes
  is 'Notes on this invasive species for this state (e.g. why added to list, why removed from list, etc.)';
comment on column fs_fiadb.ref_invasive_species.created_date
  is 'Created Date';
comment on column fs_fiadb.ref_invasive_species.modified_date
  is 'Modified Date';
alter table FS_FIADB.REF_INVASIVE_SPECIES add constraint RIS_PK primary key (CN);
alter table FS_FIADB.REF_INVASIVE_SPECIES add constraint RIS_UK unique (STATECD, SYMBOL);