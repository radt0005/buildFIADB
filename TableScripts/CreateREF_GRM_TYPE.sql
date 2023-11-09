-- Create table
create table FS_FIADB.REF_GRM_TYPE
(
  cn                   VARCHAR(34) not null,
  rscd                 SMALLINT not null,
  statecd              SMALLINT not null,
  start_invyr          SMALLINT not null,
  end_invyr            SMALLINT,
  grm_typ              VARCHAR(15) not null,
  grow_typ_cd          SMALLINT,
  mort_typ_cd          SMALLINT,
  remv_typ_cd          SMALLINT,
  created_by           VARCHAR(30),
  created_date         TIMESTAMP(0),
  created_in_instance  VARCHAR(6),
  modified_by          VARCHAR(30),
  modified_date        TIMESTAMP(0),
  modified_in_instance VARCHAR(6),
  timberland_only      VARCHAR(1) not null,
  grm_build_location   VARCHAR(5)
);
-- Add comments to the table 
comment on table FS_FIADB.REF_GRM_TYPE
  is 'NIMS 6.0';
-- Add comments to the columns 
comment on column FS_FIADB.REF_GRM_TYPE.cn
  is 'Sequence number (surrogate primary key';
comment on column FS_FIADB.REF_GRM_TYPE.rscd
  is 'Region or Station Code';
comment on column FS_FIADB.REF_GRM_TYPE.statecd
  is 'State Code';
comment on column FS_FIADB.REF_GRM_TYPE.start_invyr
  is 'Starting Inventory Year';
comment on column FS_FIADB.REF_GRM_TYPE.end_invyr
  is 'Ending Inventory Year';
comment on column FS_FIADB.REF_GRM_TYPE.grm_typ
  is 'GRM Type. P2P = Periodic to Periodic, P2A = Periodic to Annual, A2A = Annual to Annual';
comment on column FS_FIADB.REF_GRM_TYPE.grow_typ_cd
  is 'Type of annual growth code. 1 = Current Annual (growth within last year), 2 = Periodic Annual (growth since previous plot visit)';
comment on column FS_FIADB.REF_GRM_TYPE.mort_typ_cd
  is 'Type of annual mortality code. 1 = Current Annual (mortality within last year), 2 = Periodic Annual (morality since previous plot visit)';
comment on column FS_FIADB.REF_GRM_TYPE.remv_typ_cd
  is 'Type of annual removal code. 0 = No estimate, 2 = Periodic Annual (removal since previous plot visit)';
comment on column FS_FIADB.REF_GRM_TYPE.created_by
  is 'Created by';
comment on column FS_FIADB.REF_GRM_TYPE.created_date
  is 'Created date';
comment on column FS_FIADB.REF_GRM_TYPE.created_in_instance
  is 'Created in instance';
comment on column FS_FIADB.REF_GRM_TYPE.modified_by
  is 'Modified by ';
comment on column FS_FIADB.REF_GRM_TYPE.modified_date
  is 'Modified Date';
comment on column FS_FIADB.REF_GRM_TYPE.modified_in_instance
  is 'Modified in Instance ';
comment on column FS_FIADB.REF_GRM_TYPE.timberland_only
  is 'Y if estimates are for timberland only, N if reserved lands sampled at t and t-1 for change est., or reserved sampled at t for current est.';
comment on column FS_FIADB.REF_GRM_TYPE.grm_build_location
  is 'An identifier for the database in which the TREE_GRM_* tables were initially populated';
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.REF_GRM_TYPE
  add constraint RGT_PK primary key (CN);
alter table FS_FIADB.REF_GRM_TYPE
  add constraint RGT_UK unique (RSCD, STATECD, START_INVYR);
-- Create/Recreate check constraints 
alter table FS_FIADB.REF_GRM_TYPE
  add constraint REF_GRM_TYPE_GRM_TYP
  check (GRM_TYP in ('P2P','P2A','A2A','MODELED', 'NONE'));
alter table FS_FIADB.REF_GRM_TYPE
  add constraint REF_GRM_TYPE_TIMBERLAND_ONLY
  check (TIMBERLAND_ONLY in ('Y','N'));
