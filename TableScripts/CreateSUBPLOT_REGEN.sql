-- Create table
create table FS_FIADB.SUBPLOT_REGEN
(
  cn                         VARCHAR(34) not null,
  plt_cn                     VARCHAR(34) not null,
  sbp_cn                     VARCHAR(34) not null,
  invyr                      SMALLINT not null,
  statecd                    SMALLINT not null,
  unitcd                     SMALLINT not null,
  countycd                   SMALLINT not null,
  plot                       INT not null,
  subp                       SMALLINT not null,
  regen_subp_status_cd       SMALLINT,
  regen_nonsample_reasn_cd   SMALLINT,
  subplot_site_limitations   SMALLINT,
  microplot_site_limitations SMALLINT,
  created_by                 VARCHAR(30),
  created_date               TIMESTAMP(0),
  created_in_instance        VARCHAR(6),
  modified_by                VARCHAR(30),
  modified_date              TIMESTAMP(0),
  modified_in_instance       VARCHAR(6),
  cycle                      SMALLINT,
  subcycle                   SMALLINT,
  regen_micr_status_cd       SMALLINT
);
-- Add comments to the table 
comment on table FS_FIADB.SUBPLOT_REGEN
  is 'NIMS 6.0';
-- Add comments to the columns 
comment on column FS_FIADB.SUBPLOT_REGEN.cn
  is 'Sequence number (surrogate primary key';
comment on column FS_FIADB.SUBPLOT_REGEN.plt_cn
  is 'Foreign key to Plot table CN';
comment on column FS_FIADB.SUBPLOT_REGEN.sbp_cn
  is 'Foreign key to Subplot table CN';
comment on column FS_FIADB.SUBPLOT_REGEN.statecd
  is 'State code';
comment on column FS_FIADB.SUBPLOT_REGEN.unitcd
  is 'Survey unit code';
comment on column FS_FIADB.SUBPLOT_REGEN.countycd
  is 'County code';
comment on column FS_FIADB.SUBPLOT_REGEN.plot
  is 'Plot number';
comment on column FS_FIADB.SUBPLOT_REGEN.subp
  is 'Subplot number';
comment on column FS_FIADB.SUBPLOT_REGEN.regen_subp_status_cd
  is 'Regeneration subplot status code';
comment on column FS_FIADB.SUBPLOT_REGEN.regen_nonsample_reasn_cd
  is 'Regeneration subplot or microplot nonsampled reason code';
comment on column FS_FIADB.SUBPLOT_REGEN.subplot_site_limitations
  is 'Record 2 or 3 if site limitations occur on at least 30% of subplot or con';
comment on column FS_FIADB.SUBPLOT_REGEN.microplot_site_limitations
  is 'Record 2, 3, or 4 if site limitations dominate the area of the microplot or con';
comment on column FS_FIADB.SUBPLOT_REGEN.created_by
  is 'Created by';
comment on column FS_FIADB.SUBPLOT_REGEN.created_date
  is 'Created Date ';
comment on column FS_FIADB.SUBPLOT_REGEN.created_in_instance
  is 'Created in Instance ';
comment on column FS_FIADB.SUBPLOT_REGEN.modified_by
  is 'Modified by ';
comment on column FS_FIADB.SUBPLOT_REGEN.modified_date
  is 'Modified Date';
comment on column FS_FIADB.SUBPLOT_REGEN.modified_in_instance
  is 'Modified in Instance ';
comment on column FS_FIADB.SUBPLOT_REGEN.cycle
  is 'Inventory cycle number';
comment on column FS_FIADB.SUBPLOT_REGEN.subcycle
  is 'Inventory subcycle number';
comment on column FS_FIADB.SUBPLOT_REGEN.regen_micr_status_cd
  is 'Regeneration microplot status code';
-- Create/Recreate indexes 
create index SBPREGEN_PLT_FK_I on FS_FIADB.SUBPLOT_REGEN (PLT_CN);
create index SBPREGEN_SBP_FK_I on FS_FIADB.SUBPLOT_REGEN (SBP_CN);
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.SUBPLOT_REGEN
  add constraint SBPREGEN_PK primary key (CN);
alter table FS_FIADB.SUBPLOT_REGEN
  add constraint SBPREGEN_UK unique (STATECD, COUNTYCD, PLOT, SUBP, INVYR);
alter table FS_FIADB.SUBPLOT_REGEN
  add constraint SBPREGEN_PLT_FK foreign key (PLT_CN)
  references FS_FIADB.PLOT (CN);
alter table FS_FIADB.SUBPLOT_REGEN
  add constraint SBPREGEN_SBP_FK foreign key (SBP_CN)
  references FS_FIADB.SUBPLOT (CN);