-- Create table
create table FS_FIADB.OZONE_VISIT
(
  cn                   VARCHAR(34) not null,
  plt_cn               VARCHAR(34) not null,
  invyr                SMALLINT not null,
  statecd              SMALLINT not null,
  countycd             SMALLINT not null,
  o3plot               DOUBLE PRECISION not null,
  field_id             INT not null,
  split_plotid         SMALLINT not null,
  smpkndcd             SMALLINT,
  measday              SMALLINT,
  measmon              SMALLINT,
  measyear             SMALLINT not null,
  pltsize              DOUBLE PRECISION not null,
  aspect               SMALLINT not null,
  terrpos              DOUBLE PRECISION not null,
  soildpth             DOUBLE PRECISION not null,
  soildrn              DOUBLE PRECISION,
  pltdstrb             DOUBLE PRECISION not null,
  crwtypcd             SMALLINT,
  plotwet              DOUBLE PRECISION,
  injcheck             SMALLINT not null,
  gridden              SMALLINT,
  created_by           VARCHAR(30),
  created_date         TIMESTAMP(0),
  created_in_instance  VARCHAR(6),
  modified_by          VARCHAR(30),
  modified_date        TIMESTAMP(0),
  modified_in_instance VARCHAR(6)
);
-- Add comments to the table 
comment on table FS_FIADB.OZONE_VISIT
  is '6.0';
-- Add comments to the columns 
comment on column FS_FIADB.OZONE_VISIT.cn
  is 'Unique Index';
comment on column FS_FIADB.OZONE_VISIT.plt_cn
  is 'Foreign Key to NIMS_OZONE_PLOT';
comment on column FS_FIADB.OZONE_VISIT.statecd
  is 'State code';
comment on column FS_FIADB.OZONE_VISIT.countycd
  is 'County code';
comment on column FS_FIADB.OZONE_VISIT.o3plot
  is 'Concatination of P3HEX and P3PLOT';
comment on column FS_FIADB.OZONE_VISIT.field_id
  is 'P3 Hexagon Number';
comment on column FS_FIADB.OZONE_VISIT.split_plotid
  is 'P3 Plot Number';
comment on column FS_FIADB.OZONE_VISIT.measday
  is 'Measurement Day';
comment on column FS_FIADB.OZONE_VISIT.measmon
  is 'Measurement Month';
comment on column FS_FIADB.OZONE_VISIT.measyear
  is 'Measurement Year';
comment on column FS_FIADB.OZONE_VISIT.created_by
  is 'Created By';
comment on column FS_FIADB.OZONE_VISIT.created_date
  is 'Created Date';
comment on column FS_FIADB.OZONE_VISIT.created_in_instance
  is 'Created in Instance';
comment on column FS_FIADB.OZONE_VISIT.modified_by
  is 'Modified by';
comment on column FS_FIADB.OZONE_VISIT.modified_date
  is 'Modified Date';
comment on column FS_FIADB.OZONE_VISIT.modified_in_instance
  is 'Modified in Instance';
-- Create/Recreate indexes 
create index OVT_NAT_I on FS_FIADB.OZONE_VISIT (STATECD, INVYR, COUNTYCD, O3PLOT, FIELD_ID, SPLIT_PLOTID);
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.OZONE_VISIT
  add constraint OVT_PK primary key (CN);
alter table FS_FIADB.OZONE_VISIT
  add constraint OVT_UK unique (PLT_CN);
alter table FS_FIADB.OZONE_VISIT
  add constraint OVT_NOP_FK foreign key (PLT_CN)
  references FS_FIADB.OZONE_PLOT (CN);