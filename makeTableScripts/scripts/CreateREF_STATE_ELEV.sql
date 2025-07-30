CREATE TABLE fs_fiadb.ref_state_elev
(
statecd              INTEGER NOT NULL,
min_elev             INTEGER,
max_elev             INTEGER,
lowest_point         VARCHAR(30),
highest_point        VARCHAR(30),
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6)
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
comment on column fs_fiadb.ref_state_elev.created_by
  is 'Created by';
comment on column fs_fiadb.ref_state_elev.created_date
  is 'Created Date';
comment on column fs_fiadb.ref_state_elev.created_in_instance
  is 'Created in Instance';
comment on column fs_fiadb.ref_state_elev.modified_by
  is 'Modified by';
comment on column fs_fiadb.ref_state_elev.modified_date
  is 'Modified Date';
comment on column fs_fiadb.ref_state_elev.modified_in_instance
  is 'Modified in Instance';
alter table FS_FIADB.REF_STATE_ELEV add constraint RSE_PK primary key (STATECD);