-- Create table
create table FS_FIADB.OZONE_VALIDATION
(
  cn                   VARCHAR(34) not null,
  plt_cn               VARCHAR(34) not null,
  invyr                SMALLINT not null,
  statecd              SMALLINT not null,
  countycd             SMALLINT not null,
  o3plot               DOUBLE PRECISION not null,
  field_id             INT not null,
  split_plotid         SMALLINT not null,
  biospcd              DOUBLE PRECISION not null,
  qastatcd             SMALLINT not null,
  crwtypcd             SMALLINT not null,
  leafvchr             DOUBLE PRECISION not null,
  injvalid             DOUBLE PRECISION not null,
  o3_statcd            DOUBLE PRECISION not null,
  measyear             SMALLINT not null,
  created_by           VARCHAR(30),
  created_date         TIMESTAMP(0),
  created_in_instance  VARCHAR(6),
  modified_by          VARCHAR(30),
  modified_date        TIMESTAMP(0),
  modified_in_instance VARCHAR(6)
);
-- Add comments to the table 
comment on table FS_FIADB.OZONE_VALIDATION
  is '6.0';
-- Add comments to the columns 
comment on column FS_FIADB.OZONE_VALIDATION.cn
  is 'Unique Index';
comment on column FS_FIADB.OZONE_VALIDATION.plt_cn
  is 'Foreign Key to NIMS_OZONE_PLOT';
comment on column FS_FIADB.OZONE_VALIDATION.statecd
  is 'State code';
comment on column FS_FIADB.OZONE_VALIDATION.countycd
  is 'County code';
comment on column FS_FIADB.OZONE_VALIDATION.o3plot
  is 'Concatination of P3HEX and P3PLOT';
comment on column FS_FIADB.OZONE_VALIDATION.field_id
  is 'P3 Hexagon Number';
comment on column FS_FIADB.OZONE_VALIDATION.split_plotid
  is 'P3 Plot Number';
comment on column FS_FIADB.OZONE_VALIDATION.measyear
  is 'Measurement Year';
comment on column FS_FIADB.OZONE_VALIDATION.created_by
  is 'Created by';
comment on column FS_FIADB.OZONE_VALIDATION.created_date
  is 'Created Date';
comment on column FS_FIADB.OZONE_VALIDATION.created_in_instance
  is 'Created in Instance';
comment on column FS_FIADB.OZONE_VALIDATION.modified_by
  is 'Modified by';
comment on column FS_FIADB.OZONE_VALIDATION.modified_date
  is 'Modified Date';
comment on column FS_FIADB.OZONE_VALIDATION.modified_in_instance
  is 'Modified in Instance';
-- Create/Recreate indexes 
create index OVN_NAT_I on FS_FIADB.OZONE_VALIDATION (STATECD, INVYR, COUNTYCD, O3PLOT, FIELD_ID, SPLIT_PLOTID, BIOSPCD);
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.OZONE_VALIDATION
  add constraint OVN_PK primary key (CN);
alter table FS_FIADB.OZONE_VALIDATION
  add constraint OVN_UK unique (PLT_CN, BIOSPCD);