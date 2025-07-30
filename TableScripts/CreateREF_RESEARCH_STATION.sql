CREATE TABLE fs_fiadb.ref_research_station
(
statecd       INTEGER NOT NULL,
rscd          INTEGER,
rs            VARCHAR(5),
state_name    VARCHAR(40) NOT NULL,
state_abbr    VARCHAR(4) NOT NULL,
created_date  TIMESTAMP(0),
modified_date TIMESTAMP(0)
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
comment on column fs_fiadb.ref_research_station.created_date
  is 'Created Date';
comment on column fs_fiadb.ref_research_station.modified_date
  is 'Modified Date';
alter table FS_FIADB.REF_RESEARCH_STATION add constraint RES_PK primary key (STATECD);