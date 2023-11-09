-- Create table
create table FS_FIADB.REF_RESEARCH_STATION
(
  statecd              SMALLINT not null,
  rscd                 SMALLINT,
  rs                   VARCHAR(5),
  state_name           VARCHAR(40) not null,
  state_abbr           VARCHAR(4) not null,
  created_by           VARCHAR(30),
  created_date         TIMESTAMP(0),
  created_in_instance  VARCHAR(6),
  modified_by          VARCHAR(30),
  modified_date        TIMESTAMP(0),
  modified_in_instance VARCHAR(6)
);
-- Add comments to the table 
comment on table FS_FIADB.REF_RESEARCH_STATION
  is '6.0';
-- Add comments to the columns 
comment on column FS_FIADB.REF_RESEARCH_STATION.statecd
  is 'State Code';
comment on column FS_FIADB.REF_RESEARCH_STATION.rscd
  is 'Region or Station Code';
comment on column FS_FIADB.REF_RESEARCH_STATION.rs
  is 'Research station abbreviation.';
comment on column FS_FIADB.REF_RESEARCH_STATION.state_name
  is 'State Name';
comment on column FS_FIADB.REF_RESEARCH_STATION.state_abbr
  is 'State Abbreviation';
comment on column FS_FIADB.REF_RESEARCH_STATION.created_by
  is 'Created by';
comment on column FS_FIADB.REF_RESEARCH_STATION.created_date
  is 'Created Date';
comment on column FS_FIADB.REF_RESEARCH_STATION.created_in_instance
  is 'Created in Instance';
comment on column FS_FIADB.REF_RESEARCH_STATION.modified_by
  is 'Modified by';
comment on column FS_FIADB.REF_RESEARCH_STATION.modified_date
  is 'Modified Date';
comment on column FS_FIADB.REF_RESEARCH_STATION.modified_in_instance
  is 'Modified in Instance';
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.REF_RESEARCH_STATION
  add constraint RES_PK primary key (STATECD);