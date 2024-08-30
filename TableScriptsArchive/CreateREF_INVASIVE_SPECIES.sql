-- Create table
create table FS_FIADB.REF_INVASIVE_SPECIES
(
  cn                   VARCHAR(34) not null,
  statecd              SMALLINT not null,
  symbol               VARCHAR(16) not null,
  inv_group_cd         DOUBLE PRECISION,
  unitcd_list          VARCHAR(20),
  start_date           TIMESTAMP(0) not null,
  end_date             TIMESTAMP(0),
  manual_start         DECIMAL(3,1) not null,
  manual_end           DECIMAL(3,1),
  notes                VARCHAR(2000),
  created_by           VARCHAR(30),
  created_date         TIMESTAMP(0),
  created_in_instance  VARCHAR(6),
  modified_by          VARCHAR(30),
  modified_date        TIMESTAMP(0),
  modified_in_instance VARCHAR(6)
);
-- Add comments to the table 
comment on table FS_FIADB.REF_INVASIVE_SPECIES
  is '6.0';
-- Add comments to the columns 
comment on column FS_FIADB.REF_INVASIVE_SPECIES.cn
  is 'Sequence number (surrogate primary key)';
comment on column FS_FIADB.REF_INVASIVE_SPECIES.statecd
  is 'State code';
comment on column FS_FIADB.REF_INVASIVE_SPECIES.symbol
  is 'Symbol is the NRCS code (2000 download) used to represent a plant species.';
comment on column FS_FIADB.REF_INVASIVE_SPECIES.inv_group_cd
  is 'Invasive species group code allows multiple species that are difficult to distinquish from one another to be recorded as the most likely species in the invasive species group, or the first one in the group if the field person was not sure.  These groups are typically defined by region.';
comment on column FS_FIADB.REF_INVASIVE_SPECIES.unitcd_list
  is 'Optional:  This defines a list of unit codes within the state where the species is likely to be found (e.g. to differentiate E vs W Oregon and Washington).';
comment on column FS_FIADB.REF_INVASIVE_SPECIES.start_date
  is 'Start date';
comment on column FS_FIADB.REF_INVASIVE_SPECIES.end_date
  is 'End date';
comment on column FS_FIADB.REF_INVASIVE_SPECIES.manual_start
  is 'Manual start';
comment on column FS_FIADB.REF_INVASIVE_SPECIES.manual_end
  is 'Manual end';
comment on column FS_FIADB.REF_INVASIVE_SPECIES.notes
  is 'Notes on this invasive species for this state (e.g. why added to list, why removed from list, etc.)';
comment on column FS_FIADB.REF_INVASIVE_SPECIES.created_by
  is 'Created by';
comment on column FS_FIADB.REF_INVASIVE_SPECIES.created_date
  is 'Created Date';
comment on column FS_FIADB.REF_INVASIVE_SPECIES.created_in_instance
  is 'Created in Instance';
comment on column FS_FIADB.REF_INVASIVE_SPECIES.modified_by
  is 'Modified by';
comment on column FS_FIADB.REF_INVASIVE_SPECIES.modified_date
  is 'Modified Date';
comment on column FS_FIADB.REF_INVASIVE_SPECIES.modified_in_instance
  is 'Modified in Instance';
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.REF_INVASIVE_SPECIES
  add constraint RIS_PK primary key (CN);
alter table FS_FIADB.REF_INVASIVE_SPECIES
  add constraint RIS_UK unique (STATECD, SYMBOL);