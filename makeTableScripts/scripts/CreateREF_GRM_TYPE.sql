CREATE TABLE fs_fiadb.ref_grm_type
(
cn                   VARCHAR(34) NOT NULL,
rscd                 INTEGER NOT NULL,
statecd              INTEGER NOT NULL,
start_invyr          INTEGER NOT NULL,
end_invyr            INTEGER,
grm_typ              VARCHAR(15) NOT NULL,
grow_typ_cd          INTEGER,
mort_typ_cd          INTEGER,
remv_typ_cd          INTEGER,
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6),
timberland_only      VARCHAR(1) NOT NULL,
grm_build_location   VARCHAR(5) NOT NULL
);
comment on column fs_fiadb.ref_grm_type.cn
  is 'Sequence number (surrogate primary key';
comment on column fs_fiadb.ref_grm_type.rscd
  is 'Region or Station Code';
comment on column fs_fiadb.ref_grm_type.statecd
  is 'State Code';
comment on column fs_fiadb.ref_grm_type.start_invyr
  is 'Starting Inventory Year';
comment on column fs_fiadb.ref_grm_type.end_invyr
  is 'Ending Inventory Year';
comment on column fs_fiadb.ref_grm_type.grm_typ
  is 'GRM Type. P2P = Periodic to Periodic, P2A = Periodic to Annual, A2A = Annual to Annual';
comment on column fs_fiadb.ref_grm_type.grow_typ_cd
  is 'Type of annual growth code. 1 = Current Annual (growth within last year), 2 = Periodic Annual (growth since previous plot visit)';
comment on column fs_fiadb.ref_grm_type.mort_typ_cd
  is 'Type of annual mortality code. 1 = Current Annual (mortality within last year), 2 = Periodic Annual (morality since previous plot visit)';
comment on column fs_fiadb.ref_grm_type.remv_typ_cd
  is 'Type of annual removal code. 0 = No estimate, 2 = Periodic Annual (removal since previous plot visit)';
comment on column fs_fiadb.ref_grm_type.created_by
  is 'Created by';
comment on column fs_fiadb.ref_grm_type.created_date
  is 'Created date';
comment on column fs_fiadb.ref_grm_type.created_in_instance
  is 'Created in instance';
comment on column fs_fiadb.ref_grm_type.modified_by
  is 'Modified by ';
comment on column fs_fiadb.ref_grm_type.modified_date
  is 'Modified Date';
comment on column fs_fiadb.ref_grm_type.modified_in_instance
  is 'Modified in Instance ';
comment on column fs_fiadb.ref_grm_type.timberland_only
  is 'Y if estimates are for timberland only, N if reserved lands sampled at t and t-1 for change est., or reserved sampled at t for current est.';
comment on column fs_fiadb.ref_grm_type.grm_build_location
  is 'Identifies the system in which TREE table GRM data is transformed into the TREE_GRM tables; legal values are NIMS, FIADB, or N/A.';
alter table FS_FIADB.REF_GRM_TYPE add constraint RGT_PK primary key (CN);
alter table FS_FIADB.REF_GRM_TYPE add constraint RGT_UK unique (RSCD, STATECD, START_INVYR);