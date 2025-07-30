CREATE TABLE fs_fiadb.p2veg_subp_structure
(
cn                   VARCHAR(34) NOT NULL,
plt_cn               VARCHAR(34) NOT NULL,
statecd              INTEGER NOT NULL,
unitcd               INTEGER NOT NULL,
countycd             INTEGER NOT NULL,
plot                 INTEGER NOT NULL,
invyr                INTEGER NOT NULL,
subp                 INTEGER NOT NULL,
condid               INTEGER NOT NULL,
growth_habit_cd      VARCHAR(2) NOT NULL,
layer                INTEGER NOT NULL,
cover_pct            INTEGER NOT NULL,
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6),
cycle                INTEGER NOT NULL,
subcycle             INTEGER NOT NULL
);
comment on column fs_fiadb.p2veg_subp_structure.cn
  is 'Sequence number (surrogate primary key';
comment on column fs_fiadb.p2veg_subp_structure.plt_cn
  is 'Foreign key to Plot table CN';
comment on column fs_fiadb.p2veg_subp_structure.statecd
  is 'State code';
comment on column fs_fiadb.p2veg_subp_structure.unitcd
  is 'Survey unit code';
comment on column fs_fiadb.p2veg_subp_structure.countycd
  is 'County code';
comment on column fs_fiadb.p2veg_subp_structure.plot
  is 'Plot number';
comment on column fs_fiadb.p2veg_subp_structure.invyr
  is 'Inventory year';
comment on column fs_fiadb.p2veg_subp_structure.subp
  is 'Subplot number';
comment on column fs_fiadb.p2veg_subp_structure.condid
  is 'Condition number';
comment on column fs_fiadb.p2veg_subp_structure.growth_habit_cd
  is 'Species growth habit code';
comment on column fs_fiadb.p2veg_subp_structure.layer
  is 'Species layer';
comment on column fs_fiadb.p2veg_subp_structure.cover_pct
  is 'Species percent canopy cover';
comment on column fs_fiadb.p2veg_subp_structure.created_by
  is 'Created by';
comment on column fs_fiadb.p2veg_subp_structure.created_date
  is 'Created Date';
comment on column fs_fiadb.p2veg_subp_structure.created_in_instance
  is 'Created in Instance';
comment on column fs_fiadb.p2veg_subp_structure.modified_by
  is 'Modified by';
comment on column fs_fiadb.p2veg_subp_structure.modified_date
  is 'Modified Date';
comment on column fs_fiadb.p2veg_subp_structure.modified_in_instance
  is 'Modified in Instance';
comment on column fs_fiadb.p2veg_subp_structure.cycle
  is 'Inventory cycle number';
comment on column fs_fiadb.p2veg_subp_structure.subcycle
  is 'Inventory subcycle number';
create index P2VSS_PLT_CN_CONDID on FS_FIADB.P2VEG_SUBP_STRUCTURE (PLT_CN, CONDID);
create index P2VSS_PLT_FK_I on FS_FIADB.P2VEG_SUBP_STRUCTURE (PLT_CN);
alter table FS_FIADB.P2VEG_SUBP_STRUCTURE add constraint P2VSS_PK primary key (CN);
alter table FS_FIADB.P2VEG_SUBP_STRUCTURE add constraint P2VSS_UK unique (PLT_CN, SUBP, CONDID, GROWTH_HABIT_CD, LAYER);
alter table FS_FIADB.P2VEG_SUBP_STRUCTURE add constraint P2VSS_UK2 unique (STATECD, COUNTYCD, PLOT, INVYR, SUBP, CONDID, GROWTH_HABIT_CD, LAYER);
alter table FS_FIADB.P2VEG_SUBP_STRUCTURE add constraint P2VSS_UK3 unique (STATECD, CYCLE, SUBCYCLE, COUNTYCD, PLOT, SUBP, CONDID, GROWTH_HABIT_CD, LAYER);
alter table FS_FIADB.P2VEG_SUBP_STRUCTURE add constraint P2VSS_SCD_FK foreign key (SUBP, CONDID, PLT_CN) references FS_FIADB.SUBP_COND (SUBP, CONDID, PLT_CN);
alter table FS_FIADB.P2VEG_SUBP_STRUCTURE add constraint P2VSS_PLT_FK foreign key (PLT_CN) references FS_FIADB.PLOT (CN);