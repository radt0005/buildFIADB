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
alter table FS_FIADB.REF_STATE_ELEV add constraint RSE_PK primary key (STATECD);