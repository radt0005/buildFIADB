-- Create table
create table FS_FIADB.SOILS_VISIT
(
  cn                   VARCHAR(34) not null,
  plt_cn               VARCHAR(34) not null,
  invyr                SMALLINT not null,
  statecd              SMALLINT not null,
  countycd             SMALLINT not null,
  plot                 INT not null,
  measday              SMALLINT,
  measmon              SMALLINT,
  measyear             SMALLINT not null,
  created_by           VARCHAR(30),
  created_date         TIMESTAMP(0),
  created_in_instance  VARCHAR(6),
  modified_by          VARCHAR(30),
  modified_date        TIMESTAMP(0),
  modified_in_instance VARCHAR(6),
  qa_status            SMALLINT
);
-- Add comments to the table 
comment on table FS_FIADB.SOILS_VISIT
  is '6.0';
-- Add comments to the columns 
comment on column FS_FIADB.SOILS_VISIT.cn
  is 'Unique Index';
comment on column FS_FIADB.SOILS_VISIT.plt_cn
  is 'Foreign Key to NIMS_PLOT';
comment on column FS_FIADB.SOILS_VISIT.statecd
  is 'state code';
comment on column FS_FIADB.SOILS_VISIT.countycd
  is 'County Code';
comment on column FS_FIADB.SOILS_VISIT.plot
  is 'P2 Plot Number';
comment on column FS_FIADB.SOILS_VISIT.measday
  is 'Measurement Day';
comment on column FS_FIADB.SOILS_VISIT.measmon
  is 'Measurement Month';
comment on column FS_FIADB.SOILS_VISIT.measyear
  is 'Measurement Year';
comment on column FS_FIADB.SOILS_VISIT.created_by
  is 'Created By';
comment on column FS_FIADB.SOILS_VISIT.created_date
  is 'Created Date';
comment on column FS_FIADB.SOILS_VISIT.created_in_instance
  is 'Created in Instance';
comment on column FS_FIADB.SOILS_VISIT.modified_by
  is 'Modified by';
comment on column FS_FIADB.SOILS_VISIT.modified_date
  is 'Modified Date';
comment on column FS_FIADB.SOILS_VISIT.modified_in_instance
  is 'Modified in Instance';
comment on column FS_FIADB.SOILS_VISIT.qa_status
  is 'qa status code';
-- Create/Recreate indexes 
create index SVT_NAT_I on FS_FIADB.SOILS_VISIT (STATECD, INVYR, COUNTYCD, PLOT);
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.SOILS_VISIT
  add constraint SVT_PK primary key (CN);
alter table FS_FIADB.SOILS_VISIT
  add constraint SVT_UK unique (PLT_CN);
alter table FS_FIADB.SOILS_VISIT
  add constraint SVT_PLT_FK foreign key (PLT_CN)
  references FS_FIADB.PLOT (CN);