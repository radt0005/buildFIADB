CREATE TABLE fs_fiadb.ref_state_elev
(
statecd       INTEGER NOT NULL,
min_elev      INTEGER,
max_elev      INTEGER,
lowest_point  VARCHAR(30),
highest_point VARCHAR(30),
created_date  TIMESTAMP(0),
modified_date TIMESTAMP(0)
);
comment on column fs_fiadb.ref_state_elev.statecd
  is 'State FIPS code.';
comment on column fs_fiadb.ref_state_elev.min_elev
  is 'Minimum elevation.';
comment on column fs_fiadb.ref_state_elev.max_elev
  is 'Maximum elevation.';
comment on column fs_fiadb.ref_state_elev.lowest_point
  is 'Name of lowest point.';
comment on column fs_fiadb.ref_state_elev.highest_point
  is 'Name of highest point.';
comment on column fs_fiadb.ref_state_elev.created_date
  is 'Created Date';
comment on column fs_fiadb.ref_state_elev.modified_date
  is 'Modified Date';
alter table FS_FIADB.REF_STATE_ELEV add constraint RSE_PK primary key (STATECD);