-- Create table
create table FS_FIADB.PLOT_PROTOCOL
(
  plt_cn               VARCHAR(34) not null,
  pro_cn               VARCHAR(34) not null,
  name                 VARCHAR(30) not null,
  agency               VARCHAR(30) not null,
  version              DECIMAL(4,2) not null,
  indicator            VARCHAR(30) not null,
  notes                VARCHAR(2000),
  created_by           VARCHAR(30),
  created_date         TIMESTAMP(0),
  created_in_instance  VARCHAR(6),
  modified_by          VARCHAR(30),
  modified_date        TIMESTAMP(0),
  modified_in_instance VARCHAR(6)
);
-- Add comments to the table 
comment on table FS_FIADB.PLOT_PROTOCOL
  is '6.0';
-- Add comments to the columns 
comment on column FS_FIADB.PLOT_PROTOCOL.plt_cn
  is 'Foreign key to the plot';
comment on column FS_FIADB.PLOT_PROTOCOL.pro_cn
  is 'Surrogate primary key';
comment on column FS_FIADB.PLOT_PROTOCOL.name
  is 'The name of the PLOT_PROTOCOL';
comment on column FS_FIADB.PLOT_PROTOCOL.agency
  is 'The agency that defined the PLOT_PROTOCOL used in the field (e.g. FIA, NRS, SRS, RMRS, PNWRS, NIMAC)';
comment on column FS_FIADB.PLOT_PROTOCOL.version
  is 'The version of the PLOT_PROTOCOLs used in the field. This is the version defined by the assigning agency and not necessarily of the National PLOT_PROTOCOL';
comment on column FS_FIADB.PLOT_PROTOCOL.indicator
  is 'The name of the indicator that the PLOT_PROTOCOL is implementing';
comment on column FS_FIADB.PLOT_PROTOCOL.notes
  is 'Notes about a PLOT_PROTOCOL';
comment on column FS_FIADB.PLOT_PROTOCOL.created_by
  is 'Created by';
comment on column FS_FIADB.PLOT_PROTOCOL.created_date
  is 'Created Date';
comment on column FS_FIADB.PLOT_PROTOCOL.created_in_instance
  is 'Created in Instance';
comment on column FS_FIADB.PLOT_PROTOCOL.modified_by
  is 'Modified by';
comment on column FS_FIADB.PLOT_PROTOCOL.modified_date
  is 'Modified Date';
comment on column FS_FIADB.PLOT_PROTOCOL.modified_in_instance
  is 'Modified in Instance';
-- Create/Recreate indexes 
create index PRO_FK_I on FS_FIADB.PLOT_PROTOCOL (PLT_CN);
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.PLOT_PROTOCOL
  add constraint PRO_PK primary key (PLT_CN, PRO_CN, NAME, AGENCY, VERSION);
alter table FS_FIADB.PLOT_PROTOCOL
  add constraint PRO_IND_FK foreign key (PLT_CN)
  references FS_FIADB.PLOT (CN);
