CREATE TABLE fs_fiadb.survey
(
cn                   VARCHAR(34) NOT NULL,
invyr                INTEGER NOT NULL,
p3_ozone_ind         VARCHAR(1) NOT NULL,
statecd              INTEGER NOT NULL,
stateab              VARCHAR(2) NOT NULL,
statenm              VARCHAR(40) NOT NULL,
rscd                 INTEGER,
ann_inventory        VARCHAR(1),
notes                VARCHAR(2000),
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6),
cycle                INTEGER,
subcycle             INTEGER,
prj_cn               VARCHAR(34) NOT NULL
);
comment on column fs_fiadb.survey.cn
  is 'Unique index';
comment on column fs_fiadb.survey.invyr
  is 'Inventory year';
comment on column fs_fiadb.survey.p3_ozone_ind
  is 'P3 OZONE INDICATOR - VALUES ARE Y AND N.  IF Y, THEN SURVEY IS FOR A P3 OZONE PLOT.  IF N, THEN SURVEY IS FOR A P2;P3 PLOT.';
comment on column fs_fiadb.survey.statecd
  is 'State code';
comment on column fs_fiadb.survey.stateab
  is 'State abbreviation';
comment on column fs_fiadb.survey.statenm
  is 'State name';
comment on column fs_fiadb.survey.rscd
  is 'Research station code';
comment on column fs_fiadb.survey.ann_inventory
  is 'Annual inventory';
comment on column fs_fiadb.survey.notes
  is 'Notes (about the inventory)';
comment on column fs_fiadb.survey.created_by
  is 'Created by';
comment on column fs_fiadb.survey.created_date
  is 'Created date';
comment on column fs_fiadb.survey.created_in_instance
  is 'Created in instance';
comment on column fs_fiadb.survey.modified_by
  is 'Modified by';
comment on column fs_fiadb.survey.modified_date
  is 'Modified date';
comment on column fs_fiadb.survey.modified_in_instance
  is 'Modified in instance';
comment on column fs_fiadb.survey.cycle
  is 'Inventory cycle number';
comment on column fs_fiadb.survey.subcycle
  is 'Inventory subcycle number';
comment on column fs_fiadb.survey.prj_cn
  is 'Foreign key to project';
alter table FS_FIADB.SURVEY add constraint SRV_PK primary key (CN);
alter table FS_FIADB.SURVEY add constraint SRV_UK unique (PRJ_CN, STATECD, INVYR, P3_OZONE_IND, CYCLE, SUBCYCLE);
alter table FS_FIADB.SURVEY add constraint SRV_PRJ_FK foreign key (PRJ_CN) references FS_FIADB.PROJECT (CN);