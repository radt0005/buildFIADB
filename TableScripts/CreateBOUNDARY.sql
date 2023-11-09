-- Create table
create table FS_FIADB.BOUNDARY
(
  cn                   VARCHAR(34) not null,
  plt_cn               VARCHAR(34) not null,
  invyr                SMALLINT not null,
  statecd              SMALLINT not null,
  unitcd               SMALLINT not null,
  countycd             SMALLINT not null,
  plot                 INT not null,
  subp                 SMALLINT not null,
  subptyp              SMALLINT not null,
  bndchg               SMALLINT,
  contrast             SMALLINT not null,
  azmleft              SMALLINT not null,
  azmcorn              SMALLINT,
  distcorn             SMALLINT,
  azmright             SMALLINT not null,
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
comment on table FS_FIADB.BOUNDARY
  is '6.0';
-- Add comments to the columns 
comment on column FS_FIADB.BOUNDARY.cn
  is 'Unique index';
comment on column FS_FIADB.BOUNDARY.plt_cn
  is 'Unique index';
comment on column FS_FIADB.BOUNDARY.invyr
  is 'Inventory year';
comment on column FS_FIADB.BOUNDARY.statecd
  is 'State Code';
comment on column FS_FIADB.BOUNDARY.unitcd
  is 'Survey unit code';
comment on column FS_FIADB.BOUNDARY.countycd
  is 'County code';
comment on column FS_FIADB.BOUNDARY.plot
  is 'Plot number';
comment on column FS_FIADB.BOUNDARY.subp
  is 'Subplot number';
comment on column FS_FIADB.BOUNDARY.subptyp
  is 'Subplot type code';
comment on column FS_FIADB.BOUNDARY.bndchg
  is 'Boundary change code';
comment on column FS_FIADB.BOUNDARY.contrast
  is 'Contrasting condition';
comment on column FS_FIADB.BOUNDARY.azmleft
  is 'Left azimuth';
comment on column FS_FIADB.BOUNDARY.azmcorn
  is 'Corner azimuth';
comment on column FS_FIADB.BOUNDARY.distcorn
  is 'Corner distance';
comment on column FS_FIADB.BOUNDARY.azmright
  is 'Right azimuth';
comment on column FS_FIADB.BOUNDARY.cycle
  is 'Inventory cycle number';
comment on column FS_FIADB.BOUNDARY.subcycle
  is 'Inventory subcycle number';
comment on column FS_FIADB.BOUNDARY.created_by
  is 'Created by';
comment on column FS_FIADB.BOUNDARY.created_date
  is 'Created date';
comment on column FS_FIADB.BOUNDARY.created_in_instance
  is 'Created in instance';
comment on column FS_FIADB.BOUNDARY.modified_by
  is 'Modified by';
comment on column FS_FIADB.BOUNDARY.modified_date
  is 'Modified date';
comment on column FS_FIADB.BOUNDARY.modified_in_instance
  is 'Modified in instance';
-- Create/Recreate indexes 
create index BND_NAT_I on FS_FIADB.BOUNDARY (STATECD, INVYR, UNITCD, COUNTYCD, PLOT, SUBP, SUBPTYP, AZMLEFT, AZMRIGHT);
create index BND_PLT_FK_I on FS_FIADB.BOUNDARY (PLT_CN);
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.BOUNDARY
  add constraint BND_PK primary key (CN);
alter table FS_FIADB.BOUNDARY
  add constraint BND_UK unique (PLT_CN, SUBP, SUBPTYP, AZMLEFT, AZMRIGHT);
alter table FS_FIADB.BOUNDARY
  add constraint BND_PLT_FK foreign key (PLT_CN)
  references FS_FIADB.PLOT (CN);