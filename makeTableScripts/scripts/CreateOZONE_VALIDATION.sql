CREATE TABLE fs_fiadb.ozone_validation
(
crwtypcd             INTEGER NOT NULL,
leafvchr             DOUBLE PRECISION NOT NULL,
injvalid             DOUBLE PRECISION NOT NULL,
o3_statcd            DOUBLE PRECISION NOT NULL,
measyear             INTEGER NOT NULL,
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6),
cn                   VARCHAR(34) NOT NULL,
plt_cn               VARCHAR(34) NOT NULL,
invyr                INTEGER NOT NULL,
statecd              INTEGER NOT NULL,
countycd             INTEGER NOT NULL,
o3plot               DOUBLE PRECISION NOT NULL,
field_id             INTEGER NOT NULL,
split_plotid         INTEGER NOT NULL,
biospcd              DOUBLE PRECISION NOT NULL,
qastatcd             INTEGER NOT NULL
);
comment on column fs_fiadb.ozone_validation.crwtypcd
  is 'NA';
comment on column fs_fiadb.ozone_validation.leafvchr
  is 'NA';
comment on column fs_fiadb.ozone_validation.injvalid
  is 'NA';
comment on column fs_fiadb.ozone_validation.o3_statcd
  is 'NA';
comment on column fs_fiadb.ozone_validation.measyear
  is 'Measurement Year';
comment on column fs_fiadb.ozone_validation.created_by
  is 'Created by';
comment on column fs_fiadb.ozone_validation.created_date
  is 'Created Date';
comment on column fs_fiadb.ozone_validation.created_in_instance
  is 'Created in Instance';
comment on column fs_fiadb.ozone_validation.modified_by
  is 'Modified by';
comment on column fs_fiadb.ozone_validation.modified_date
  is 'Modified Date';
comment on column fs_fiadb.ozone_validation.modified_in_instance
  is 'Modified in Instance';
comment on column fs_fiadb.ozone_validation.cn
  is 'Unique Index';
comment on column fs_fiadb.ozone_validation.plt_cn
  is 'Foreign Key to NIMS_OZONE_PLOT';
comment on column fs_fiadb.ozone_validation.invyr
  is 'NA';
comment on column fs_fiadb.ozone_validation.statecd
  is 'State code';
comment on column fs_fiadb.ozone_validation.countycd
  is 'County code';
comment on column fs_fiadb.ozone_validation.o3plot
  is 'Concatination of P3HEX and P3PLOT';
comment on column fs_fiadb.ozone_validation.field_id
  is 'P3 Hexagon Number';
comment on column fs_fiadb.ozone_validation.split_plotid
  is 'P3 Plot Number';
comment on column fs_fiadb.ozone_validation.biospcd
  is 'NA';
comment on column fs_fiadb.ozone_validation.qastatcd
  is 'NA';
create index OVN_NAT_I on FS_FIADB.OZONE_VALIDATION (STATECD, INVYR, COUNTYCD, O3PLOT, FIELD_ID, SPLIT_PLOTID, BIOSPCD);
alter table FS_FIADB.OZONE_VALIDATION add constraint OVN_PK primary key (CN);
alter table FS_FIADB.OZONE_VALIDATION add constraint OVN_UK unique (PLT_CN, BIOSPCD);