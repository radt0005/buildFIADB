CREATE TABLE fs_fiadb.subplot_regen
(
cn                         VARCHAR(34) NOT NULL,
plt_cn                     VARCHAR(34) NOT NULL,
sbp_cn                     VARCHAR(34) NOT NULL,
invyr                      INTEGER NOT NULL,
statecd                    INTEGER NOT NULL,
unitcd                     INTEGER NOT NULL,
countycd                   INTEGER NOT NULL,
plot                       INTEGER NOT NULL,
subp                       INTEGER NOT NULL,
regen_subp_status_cd       INTEGER,
regen_nonsample_reasn_cd   INTEGER,
subplot_site_limitations   INTEGER,
microplot_site_limitations INTEGER,
created_date               TIMESTAMP(0),
modified_date              TIMESTAMP(0),
cycle                      INTEGER,
subcycle                   INTEGER,
regen_micr_status_cd       INTEGER
);
comment on column fs_fiadb.subplot_regen.cn
  is 'Sequence number (surrogate primary key';
comment on column fs_fiadb.subplot_regen.plt_cn
  is 'Foreign key to Plot table CN';
comment on column fs_fiadb.subplot_regen.sbp_cn
  is 'Foreign key to Subplot table CN';
comment on column fs_fiadb.subplot_regen.invyr
  is 'NA';
comment on column fs_fiadb.subplot_regen.statecd
  is 'State code';
comment on column fs_fiadb.subplot_regen.unitcd
  is 'Survey unit code';
comment on column fs_fiadb.subplot_regen.countycd
  is 'County code';
comment on column fs_fiadb.subplot_regen.plot
  is 'Plot number';
comment on column fs_fiadb.subplot_regen.subp
  is 'Subplot number';
comment on column fs_fiadb.subplot_regen.regen_subp_status_cd
  is 'Regeneration subplot status code';
comment on column fs_fiadb.subplot_regen.regen_nonsample_reasn_cd
  is 'Regeneration subplot or microplot nonsampled reason code';
comment on column fs_fiadb.subplot_regen.subplot_site_limitations
  is 'Record 2 or 3 if site limitations occur on at least 30% of subplot or con';
comment on column fs_fiadb.subplot_regen.microplot_site_limitations
  is 'Record 2, 3, or 4 if site limitations dominate the area of the microplot or con';
comment on column fs_fiadb.subplot_regen.created_date
  is 'Created Date ';
comment on column fs_fiadb.subplot_regen.modified_date
  is 'Modified Date';
comment on column fs_fiadb.subplot_regen.cycle
  is 'Inventory cycle number';
comment on column fs_fiadb.subplot_regen.subcycle
  is 'Inventory subcycle number';
comment on column fs_fiadb.subplot_regen.regen_micr_status_cd
  is 'Regeneration microplot status code';
create index SBPREGEN_PLT_FK_I on FS_FIADB.SUBPLOT_REGEN (PLT_CN);
create index SBPREGEN_SBP_FK_I on FS_FIADB.SUBPLOT_REGEN (SBP_CN);
alter table FS_FIADB.SUBPLOT_REGEN add constraint SBPREGEN_PK primary key (CN);
alter table FS_FIADB.SUBPLOT_REGEN add constraint SBPREGEN_UK unique (COUNTYCD, STATECD, INVYR, SUBP, PLOT);
alter table FS_FIADB.SUBPLOT_REGEN add constraint SBPREGEN_SBP_FK foreign key (SBP_CN) references FS_FIADB.SUBPLOT (CN);
alter table FS_FIADB.SUBPLOT_REGEN add constraint SBPREGEN_PLT_FK foreign key (PLT_CN) references FS_FIADB.PLOT (CN);