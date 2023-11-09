-- Create table
create table FS_FIADB.LICHEN_LAB
(
  cn                   VARCHAR(34) not null,
  plt_cn               VARCHAR(34) not null,
  invyr                SMALLINT not null,
  statecd              SMALLINT not null,
  countycd             SMALLINT not null,
  plot                 INT not null,
  lich_sppcd           INT not null,
  measyear             SMALLINT not null,
  abundance_class      SMALLINT not null,
  origin_flag          SMALLINT,
  spp_comments         VARCHAR(2000),
  created_by           VARCHAR(30),
  created_date         TIMESTAMP(0),
  created_in_instance  VARCHAR(6),
  modified_by          VARCHAR(30),
  modified_date        TIMESTAMP(0),
  modified_in_instance VARCHAR(6)
);
-- Add comments to the table 
comment on table FS_FIADB.LICHEN_LAB
  is '6.0';
-- Create/Recreate indexes 
create index LCH_NAT_I on FS_FIADB.LICHEN_LAB (STATECD, INVYR, COUNTYCD, PLOT, LICH_SPPCD);
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.LICHEN_LAB
  add constraint LCH_PK primary key (CN);
alter table FS_FIADB.LICHEN_LAB
  add constraint LCH_UK unique (PLT_CN, LICH_SPPCD);
alter table FS_FIADB.LICHEN_LAB
  add constraint LCH_PLT_FK foreign key (PLT_CN)
  references FS_FIADB.PLOT (CN);