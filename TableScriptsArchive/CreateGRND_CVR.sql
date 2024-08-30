-- Create table
create table FS_FIADB.GRND_CVR
(
  cn                   VARCHAR(34) not null,
  plt_cn               VARCHAR(34) not null,
  invyr                SMALLINT not null,
  statecd              SMALLINT not null,
  unitcd               SMALLINT not null,
  countycd             SMALLINT not null,
  plot                 INT not null,
  subp                 DOUBLE PRECISION not null,
  transect             SMALLINT not null,
  cvr_pct              SMALLINT,
  grnd_cvr_seg         SMALLINT not null,
  grnd_cvr_typ         VARCHAR(4) not null,
  cycle                SMALLINT,
  subcycle             SMALLINT,
  created_by           VARCHAR(30),
  created_date         TIMESTAMP(0),
  created_in_instance  VARCHAR(6),
  modified_by          VARCHAR(30),
  modified_date        TIMESTAMP(0),
  modified_in_instance VARCHAR(6)
);
-- Add comments to the table 
comment on table FS_FIADB.GRND_CVR
  is '6.0';
-- Add comments to the columns 
comment on column FS_FIADB.GRND_CVR.cn
  is 'Unique index';
comment on column FS_FIADB.GRND_CVR.plt_cn
  is 'Unique index';
comment on column FS_FIADB.GRND_CVR.invyr
  is 'Inventory year';
comment on column FS_FIADB.GRND_CVR.statecd
  is 'State code';
comment on column FS_FIADB.GRND_CVR.unitcd
  is 'Survey unit code';
comment on column FS_FIADB.GRND_CVR.countycd
  is 'County code';
comment on column FS_FIADB.GRND_CVR.plot
  is 'Plot number';
comment on column FS_FIADB.GRND_CVR.subp
  is 'subplot number';
comment on column FS_FIADB.GRND_CVR.transect
  is 'transect number';
comment on column FS_FIADB.GRND_CVR.cvr_pct
  is 'cover percent';
comment on column FS_FIADB.GRND_CVR.grnd_cvr_seg
  is 'segment id  for 4-14 or 14-24';
comment on column FS_FIADB.GRND_CVR.grnd_cvr_typ
  is 'type of ground cover';
comment on column FS_FIADB.GRND_CVR.cycle
  is 'Inventory cycle number';
comment on column FS_FIADB.GRND_CVR.subcycle
  is 'Inventory subcycle number';
comment on column FS_FIADB.GRND_CVR.created_by
  is 'Created by';
comment on column FS_FIADB.GRND_CVR.created_date
  is 'Created date';
comment on column FS_FIADB.GRND_CVR.created_in_instance
  is 'Created in instance';
comment on column FS_FIADB.GRND_CVR.modified_by
  is 'Modified by';
comment on column FS_FIADB.GRND_CVR.modified_date
  is 'Modified date';
comment on column FS_FIADB.GRND_CVR.modified_in_instance
  is 'Modified in instance';
-- Create/Recreate indexes 
create index GRND_CVR_PLT_FK_I on FS_FIADB.GRND_CVR (PLT_CN);
create index GRND_CVR_UK_I on FS_FIADB.GRND_CVR (PLT_CN, SUBP, TRANSECT, GRND_CVR_SEG, GRND_CVR_TYP);
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.GRND_CVR
  add constraint GRND_CVR_PK primary key (CN);
alter table FS_FIADB.GRND_CVR
  add constraint GRND_CVR_UK unique (PLT_CN, SUBP, TRANSECT, GRND_CVR_SEG, GRND_CVR_TYP);
alter table FS_FIADB.GRND_CVR
  add constraint GRND_CVR_PLT_FK foreign key (PLT_CN)
  references FS_FIADB.PLOT (CN);
