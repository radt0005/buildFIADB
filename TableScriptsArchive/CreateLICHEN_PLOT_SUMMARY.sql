-- Create table
create table FS_FIADB.LICHEN_PLOT_SUMMARY
(
  cn                   VARCHAR(34) not null,
  plt_cn               VARCHAR(34) not null,
  invyr                SMALLINT not null,
  statecd              SMALLINT not null,
  countycd             SMALLINT not null,
  plot                 INT not null,
  measyear             SMALLINT not null,
  summation            DECIMAL(7,4) not null,
  richness             SMALLINT not null,
  evenness             DECIMAL(5,4),
  diversity            DECIMAL(5,4) not null,
  created_by           VARCHAR(30),
  created_date         TIMESTAMP(0),
  created_in_instance  VARCHAR(6),
  modified_by          VARCHAR(30),
  modified_date        TIMESTAMP(0),
  modified_in_instance VARCHAR(6)
);
-- Add comments to the table 
comment on table FS_FIADB.LICHEN_PLOT_SUMMARY
  is '6.0';
-- Add comments to the columns 
comment on column FS_FIADB.LICHEN_PLOT_SUMMARY.statecd
  is 'statecd code';
comment on column FS_FIADB.LICHEN_PLOT_SUMMARY.countycd
  is 'county code';
comment on column FS_FIADB.LICHEN_PLOT_SUMMARY.plot
  is 'p2 plot number';
comment on column FS_FIADB.LICHEN_PLOT_SUMMARY.measyear
  is 'measurement year';
-- Create/Recreate indexes 
create index LPS_NAT_I on FS_FIADB.LICHEN_PLOT_SUMMARY (STATECD, INVYR, COUNTYCD, PLOT);
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.LICHEN_PLOT_SUMMARY
  add constraint LPS_PK primary key (CN);
alter table FS_FIADB.LICHEN_PLOT_SUMMARY
  add constraint LPS_UK unique (PLT_CN);
alter table FS_FIADB.LICHEN_PLOT_SUMMARY
  add constraint LPS_PLT_FK foreign key (PLT_CN)
  references FS_FIADB.PLOT (CN);