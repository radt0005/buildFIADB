-- Create table
create table FS_FIADB.OZONE_PLOT
(
  cn                   VARCHAR(34) not null,
  srv_cn               VARCHAR(34) not null,
  cty_cn               VARCHAR(34) not null,
  invyr                SMALLINT not null,
  statecd              SMALLINT not null,
  unitcd               SMALLINT not null,
  countycd             SMALLINT not null,
  o3plot               DOUBLE PRECISION not null,
  field_id             INT,
  split_plotid         SMALLINT,
  measyear             SMALLINT,
  measmon              SMALLINT,
  measday              SMALLINT,
  lat                  DECIMAL(8,6),
  lon                  DECIMAL(9,6),
  elevation            DOUBLE PRECISION,
  manual               DECIMAL(3,1) not null,
  qa_status            SMALLINT,
  created_by           VARCHAR(30),
  created_date         TIMESTAMP(0),
  created_in_instance  VARCHAR(6),
  modified_by          VARCHAR(30),
  modified_date        TIMESTAMP(0),
  modified_in_instance VARCHAR(6),
  cycle                SMALLINT,
  subcycle             SMALLINT
);
-- Add comments to the table 
comment on table FS_FIADB.OZONE_PLOT
  is '6.0';
-- Create/Recreate indexes 
create index NOP_CTY_FK_I on FS_FIADB.OZONE_PLOT (CTY_CN);
create index NOP_SRV_FK_I on FS_FIADB.OZONE_PLOT (SRV_CN);
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.OZONE_PLOT
  add constraint NOP_PK primary key (CN);
alter table FS_FIADB.OZONE_PLOT
  add constraint NOP_UK unique (STATECD, INVYR, COUNTYCD, O3PLOT, FIELD_ID, SPLIT_PLOTID);
alter table FS_FIADB.OZONE_PLOT
  add constraint NOP_CTY_FK foreign key (CTY_CN)
  references FS_FIADB.COUNTY (CN);
alter table FS_FIADB.OZONE_PLOT
  add constraint NOP_SRV_FK foreign key (SRV_CN)
  references FS_FIADB.SURVEY (CN);