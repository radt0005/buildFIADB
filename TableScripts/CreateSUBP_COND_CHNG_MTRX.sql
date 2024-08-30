CREATE TABLE fs_fiadb.subp_cond_chng_mtrx
(
cn                VARCHAR(34) NOT NULL,
statecd           INTEGER NOT NULL,
subp              INTEGER NOT NULL,
subptyp           INTEGER,
plt_cn            VARCHAR(34) NOT NULL,
condid            INTEGER NOT NULL,
prev_plt_cn       VARCHAR(34) NOT NULL,
prevcond          INTEGER NOT NULL,
subptyp_prop_chng DECIMAL(5,4),
created_date      TIMESTAMP(0),
modified_date     TIMESTAMP(0)
);
create index CMX_PLT_FK_I on FS_FIADB.SUBP_COND_CHNG_MTRX (PREV_PLT_CN);
create index CMX_PLT_FK2_I on FS_FIADB.SUBP_COND_CHNG_MTRX (PLT_CN);
alter table FS_FIADB.SUBP_COND_CHNG_MTRX add constraint CMX_PK primary key (CN);
alter table FS_FIADB.SUBP_COND_CHNG_MTRX add constraint CMX_UK unique (PLT_CN, PREV_PLT_CN, SUBP, SUBPTYP, CONDID, PREVCOND);
alter table FS_FIADB.SUBP_COND_CHNG_MTRX add constraint CMX_PLT_FK foreign key (PREV_PLT_CN) references FS_FIADB.PLOT (CN);
alter table FS_FIADB.SUBP_COND_CHNG_MTRX add constraint CMX_PLT_FK2 foreign key (PLT_CN) references FS_FIADB.PLOT (CN);