-- Create table
create table FS_FIADB.SURVEY
(
  cn                   VARCHAR(34) not null,
  invyr                SMALLINT not null,
  p3_ozone_ind         VARCHAR(1) default 'N' not null,
  statecd              SMALLINT not null,
  stateab              VARCHAR(2) not null,
  statenm              VARCHAR(40) not null,
  rscd                 SMALLINT,
  ann_inventory        VARCHAR(1),
  notes                VARCHAR(2000),
  created_by           VARCHAR(30),
  created_date         TIMESTAMP(0),
  created_in_instance  VARCHAR(6),
  modified_by          VARCHAR(30),
  modified_date        TIMESTAMP(0),
  modified_in_instance VARCHAR(6),
  cycle                SMALLINT,
  subcycle             SMALLINT,
  prj_cn	       VARCHAR(34) not null
);
-- Add comments to the table 
comment on table FS_FIADB.SURVEY
  is '6.0';
-- Add comments to the columns 
comment on column FS_FIADB.SURVEY.cn
  is 'Unique index';
comment on column FS_FIADB.SURVEY.invyr
  is 'Inventory year';
comment on column FS_FIADB.SURVEY.p3_ozone_ind
  is 'P3 OZONE INDICATOR - VALUES ARE Y AND N.  IF Y, THEN SURVEY IS FOR A P3 OZONE PLOT.  IF N, THEN SURVEY IS FOR A P2;P3 PLOT.';
comment on column FS_FIADB.SURVEY.statecd
  is 'State code';
comment on column FS_FIADB.SURVEY.stateab
  is 'State abbreviation';
comment on column FS_FIADB.SURVEY.statenm
  is 'State name';
comment on column FS_FIADB.SURVEY.rscd
  is 'Research station code';
comment on column FS_FIADB.SURVEY.ann_inventory
  is 'Annual inventory';
comment on column FS_FIADB.SURVEY.notes
  is 'Notes (about the inventory)';
comment on column FS_FIADB.SURVEY.created_by
  is 'Created by';
comment on column FS_FIADB.SURVEY.created_date
  is 'Created date';
comment on column FS_FIADB.SURVEY.created_in_instance
  is 'Created in instance';
comment on column FS_FIADB.SURVEY.modified_by
  is 'Modified by';
comment on column FS_FIADB.SURVEY.modified_date
  is 'Modified date';
comment on column FS_FIADB.SURVEY.modified_in_instance
  is 'Modified in instance';
comment on column FS_FIADB.SURVEY.cycle
  is 'Inventory cycle number';
comment on column FS_FIADB.SURVEY.subcycle
  is 'Inventory subcycle number';
comment on column FS_FIADB.SURVEY.prj_cn
  is 'prj_cn';
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.SURVEY
  add constraint SRV_PK primary key (CN);
alter table FS_FIADB.SURVEY
  add constraint SRV_UK unique (STATECD, INVYR, P3_OZONE_IND, CYCLE, SUBCYCLE);
