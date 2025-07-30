CREATE TABLE fs_fiadb.ref_research_station
(
statecd              INTEGER NOT NULL,
rscd                 INTEGER,
rs                   VARCHAR(5),
state_name           VARCHAR(40) NOT NULL,
state_abbr           VARCHAR(4) NOT NULL,
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6)
);
comment on column fs_fiadb.ref_research_station.statecd
  is 'State Code';
comment on column fs_fiadb.ref_research_station.rscd
  is 'Region or Station Code';
comment on column fs_fiadb.ref_research_station.rs
  is 'Research station abbreviation.';
comment on column fs_fiadb.ref_research_station.state_name
  is 'State Name';
comment on column fs_fiadb.ref_research_station.state_abbr
  is 'State Abbreviation';
comment on column fs_fiadb.ref_research_station.created_by
  is 'Created by';
comment on column fs_fiadb.ref_research_station.created_date
  is 'Created Date';
comment on column fs_fiadb.ref_research_station.created_in_instance
  is 'Created in Instance';
comment on column fs_fiadb.ref_research_station.modified_by
  is 'Modified by';
comment on column fs_fiadb.ref_research_station.modified_date
  is 'Modified Date';
comment on column fs_fiadb.ref_research_station.modified_in_instance
  is 'Modified in Instance';
alter table FS_FIADB.REF_RESEARCH_STATION add constraint RES_PK primary key (STATECD);