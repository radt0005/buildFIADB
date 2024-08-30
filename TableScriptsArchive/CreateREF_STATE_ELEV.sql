-- Create table
create table FS_FIADB.REF_STATE_ELEV
(
  statecd              SMALLINT not null,
  min_elev             INT,
  max_elev             INT,
  lowest_point         VARCHAR(30),
  highest_point        VARCHAR(30),
  created_by           VARCHAR(30),
  created_date         TIMESTAMP(0),
  created_in_instance  VARCHAR(6),
  modified_by          VARCHAR(30),
  modified_date        TIMESTAMP(0),
  modified_in_instance VARCHAR(6)
);
-- Add comments to the table 
comment on table FS_FIADB.REF_STATE_ELEV
  is '6.0';
-- Add comments to the columns 
comment on column FS_FIADB.REF_STATE_ELEV.statecd
  is 'State FIPS code.';
comment on column FS_FIADB.REF_STATE_ELEV.min_elev
  is 'Minimum elevation.';
comment on column FS_FIADB.REF_STATE_ELEV.max_elev
  is 'Maximum elevation.';
comment on column FS_FIADB.REF_STATE_ELEV.lowest_point
  is 'Name of lowest point.';
comment on column FS_FIADB.REF_STATE_ELEV.highest_point
  is 'Name of highest point.';
comment on column FS_FIADB.REF_STATE_ELEV.created_by
  is 'Created by';
comment on column FS_FIADB.REF_STATE_ELEV.created_date
  is 'Created Date';
comment on column FS_FIADB.REF_STATE_ELEV.created_in_instance
  is 'Created in Instance';
comment on column FS_FIADB.REF_STATE_ELEV.modified_by
  is 'Modified by';
comment on column FS_FIADB.REF_STATE_ELEV.modified_date
  is 'Modified Date';
comment on column FS_FIADB.REF_STATE_ELEV.modified_in_instance
  is 'Modified in Instance';
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.REF_STATE_ELEV
  add constraint RSE_PK primary key (STATECD);