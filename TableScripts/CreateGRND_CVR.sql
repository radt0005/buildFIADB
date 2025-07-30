CREATE TABLE fs_fiadb.grnd_cvr
(
cn            VARCHAR(34) NOT NULL,
plt_cn        VARCHAR(34) NOT NULL,
invyr         INTEGER NOT NULL,
statecd       INTEGER NOT NULL,
unitcd        INTEGER NOT NULL,
countycd      INTEGER NOT NULL,
plot          INTEGER NOT NULL,
subp          INTEGER NOT NULL,
transect      INTEGER NOT NULL,
cvr_pct       INTEGER,
grnd_cvr_seg  INTEGER NOT NULL,
grnd_cvr_typ  VARCHAR(4) NOT NULL,
cycle         INTEGER,
subcycle      INTEGER,
created_date  TIMESTAMP(0),
modified_date TIMESTAMP(0)
);
comment on column fs_fiadb.grnd_cvr.cn
  is 'Unique index';
comment on column fs_fiadb.grnd_cvr.plt_cn
  is 'Unique index';
comment on column fs_fiadb.grnd_cvr.invyr
  is 'Inventory year';
comment on column fs_fiadb.grnd_cvr.statecd
  is 'State code';
comment on column fs_fiadb.grnd_cvr.unitcd
  is 'Survey unit code';
comment on column fs_fiadb.grnd_cvr.countycd
  is 'County code';
comment on column fs_fiadb.grnd_cvr.plot
  is 'Plot number';
comment on column fs_fiadb.grnd_cvr.subp
  is 'subplot number';
comment on column fs_fiadb.grnd_cvr.transect
  is 'transect number';
comment on column fs_fiadb.grnd_cvr.cvr_pct
  is 'cover percent';
comment on column fs_fiadb.grnd_cvr.grnd_cvr_seg
  is 'segment id  for 4-14 or 14-24';
comment on column fs_fiadb.grnd_cvr.grnd_cvr_typ
  is 'type of ground cover';
comment on column fs_fiadb.grnd_cvr.cycle
  is 'Inventory cycle number';
comment on column fs_fiadb.grnd_cvr.subcycle
  is 'Inventory subcycle number';
comment on column fs_fiadb.grnd_cvr.created_date
  is 'Created date';
comment on column fs_fiadb.grnd_cvr.modified_date
  is 'Modified date';
create index GRND_CVR_UK_I on FS_FIADB.GRND_CVR (GRND_CVR_TYP, PLT_CN, TRANSECT, GRND_CVR_SEG, SUBP);
create index GRND_CVR_PLT_FK_I on FS_FIADB.GRND_CVR (PLT_CN);
alter table FS_FIADB.GRND_CVR add constraint GRND_CVR_PK primary key (CN);
alter table FS_FIADB.GRND_CVR add constraint GRND_CVR_PLT_FK foreign key (PLT_CN) references FS_FIADB.PLOT (CN);