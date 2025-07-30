CREATE TABLE fs_fiadb.subp_cond_chng_mtrx
(
cn                   VARCHAR(34) NOT NULL,
statecd              INTEGER NOT NULL,
subp                 INTEGER NOT NULL,
subptyp              INTEGER,
plt_cn               VARCHAR(34) NOT NULL,
condid               INTEGER NOT NULL,
prev_plt_cn          VARCHAR(34) NOT NULL,
prevcond             INTEGER NOT NULL,
subptyp_prop_chng    DECIMAL(5,4),
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6)
);
comment on column fs_fiadb.subp_cond_chng_mtrx.cn
  is 'Sequence number (surrogate primary key)';
comment on column fs_fiadb.subp_cond_chng_mtrx.statecd
  is 'State Code ';
comment on column fs_fiadb.subp_cond_chng_mtrx.subp
  is 'Subplot number';
comment on column fs_fiadb.subp_cond_chng_mtrx.subptyp
  is 'Subplot type';
comment on column fs_fiadb.subp_cond_chng_mtrx.plt_cn
  is 'Foreign key to Time 2 Plot record';
comment on column fs_fiadb.subp_cond_chng_mtrx.condid
  is 'Condition number for Time 2 Plot record';
comment on column fs_fiadb.subp_cond_chng_mtrx.prev_plt_cn
  is 'Foreign key to Time 1 Plot record';
comment on column fs_fiadb.subp_cond_chng_mtrx.prevcond
  is 'Previous condition number for Time 1 Plot record';
comment on column fs_fiadb.subp_cond_chng_mtrx.subptyp_prop_chng
  is ''Percent change of subplot condition between previous to currrent inventory';
comment on column fs_fiadb.subp_cond_chng_mtrx.created_by
  is 'Created by';
comment on column fs_fiadb.subp_cond_chng_mtrx.created_date
  is 'Created Date ';
comment on column fs_fiadb.subp_cond_chng_mtrx.created_in_instance
  is 'Created in Instance ';
comment on column fs_fiadb.subp_cond_chng_mtrx.modified_by
  is 'Modified by ';
comment on column fs_fiadb.subp_cond_chng_mtrx.modified_date
  is 'Modified Date';
comment on column fs_fiadb.subp_cond_chng_mtrx.modified_in_instance
  is 'Modified in Instance ';
create index CMX_PLT_FK_I on FS_FIADB.SUBP_COND_CHNG_MTRX (PREV_PLT_CN);
create index CMX_PLT_FK2_I on FS_FIADB.SUBP_COND_CHNG_MTRX (PLT_CN);
alter table FS_FIADB.SUBP_COND_CHNG_MTRX add constraint CMX_PK primary key (CN);
alter table FS_FIADB.SUBP_COND_CHNG_MTRX add constraint CMX_UK unique (PLT_CN, PREV_PLT_CN, SUBP, SUBPTYP, CONDID, PREVCOND);
alter table FS_FIADB.SUBP_COND_CHNG_MTRX add constraint CMX_PLT_FK foreign key (PREV_PLT_CN) references FS_FIADB.PLOT (CN);
alter table FS_FIADB.SUBP_COND_CHNG_MTRX add constraint CMX_PLT_FK2 foreign key (PLT_CN) references FS_FIADB.PLOT (CN);