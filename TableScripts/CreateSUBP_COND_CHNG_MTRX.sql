-- Create table
create table FS_FIADB.SUBP_COND_CHNG_MTRX
(
  cn                   VARCHAR(34) not null,
  statecd              SMALLINT not null,
  subp                 SMALLINT not null,
  subptyp              SMALLINT,
  plt_cn               VARCHAR(34) not null,
  condid               SMALLINT not null,
  prev_plt_cn          VARCHAR(34) not null,
  prevcond             SMALLINT not null,
  subptyp_prop_chng    DECIMAL(5,4),
  created_by           VARCHAR(30),
  created_date         TIMESTAMP(0),
  created_in_instance  VARCHAR(6),
  modified_by          VARCHAR(30),
  modified_date        TIMESTAMP(0),
  modified_in_instance VARCHAR(6)
);
-- Add comments to the table 
comment on table FS_FIADB.SUBP_COND_CHNG_MTRX
  is '6.0';
-- Add comments to the columns 
comment on column FS_FIADB.SUBP_COND_CHNG_MTRX.cn
  is 'Sequence number (surrogate primary key)';
comment on column FS_FIADB.SUBP_COND_CHNG_MTRX.statecd
  is 'State Code ';
comment on column FS_FIADB.SUBP_COND_CHNG_MTRX.subp
  is 'Subplot number';
comment on column FS_FIADB.SUBP_COND_CHNG_MTRX.subptyp
  is 'Subplot type';
comment on column FS_FIADB.SUBP_COND_CHNG_MTRX.plt_cn
  is 'Foreign key to Time 2 Plot record';
comment on column FS_FIADB.SUBP_COND_CHNG_MTRX.condid
  is 'Condition number for Time 2 Plot record';
comment on column FS_FIADB.SUBP_COND_CHNG_MTRX.prev_plt_cn
  is 'Foreign key to Time 1 Plot record';
comment on column FS_FIADB.SUBP_COND_CHNG_MTRX.prevcond
  is 'Previous condition number for Time 1 Plot record';
comment on column FS_FIADB.SUBP_COND_CHNG_MTRX.subptyp_prop_chng
  is '''Percent change of subplot condition between previous to currrent inventory';
comment on column FS_FIADB.SUBP_COND_CHNG_MTRX.created_by
  is 'Created by';
comment on column FS_FIADB.SUBP_COND_CHNG_MTRX.created_date
  is 'Created Date ';
comment on column FS_FIADB.SUBP_COND_CHNG_MTRX.created_in_instance
  is 'Created in Instance ';
comment on column FS_FIADB.SUBP_COND_CHNG_MTRX.modified_by
  is 'Modified by ';
comment on column FS_FIADB.SUBP_COND_CHNG_MTRX.modified_date
  is 'Modified Date';
comment on column FS_FIADB.SUBP_COND_CHNG_MTRX.modified_in_instance
  is 'Modified in Instance ';
-- Create/Recreate indexes 
create index CMX_PLT_FK2_I on FS_FIADB.SUBP_COND_CHNG_MTRX (PLT_CN);
create index CMX_PLT_FK_I on FS_FIADB.SUBP_COND_CHNG_MTRX (PREV_PLT_CN);
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.SUBP_COND_CHNG_MTRX
  add constraint CMX_PK primary key (CN);
alter table FS_FIADB.SUBP_COND_CHNG_MTRX
  add constraint CMX_UK unique (PLT_CN, PREV_PLT_CN, SUBP, SUBPTYP, CONDID, PREVCOND);
alter table FS_FIADB.SUBP_COND_CHNG_MTRX
  add constraint CMX_PLT_FK foreign key (PREV_PLT_CN)
  references FS_FIADB.PLOT (CN);
alter table FS_FIADB.SUBP_COND_CHNG_MTRX
  add constraint CMX_PLT_FK2 foreign key (PLT_CN)
  references FS_FIADB.PLOT (CN);