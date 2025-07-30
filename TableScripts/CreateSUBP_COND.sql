CREATE TABLE fs_fiadb.subp_cond
(
cn                   VARCHAR(34) NOT NULL,
plt_cn               VARCHAR(34) NOT NULL,
invyr                INTEGER NOT NULL,
statecd              INTEGER NOT NULL,
unitcd               INTEGER NOT NULL,
countycd             INTEGER NOT NULL,
plot                 INTEGER NOT NULL,
subp                 INTEGER NOT NULL,
condid               INTEGER NOT NULL,
created_date         TIMESTAMP(0),
modified_date        TIMESTAMP(0),
micrcond_prop        DOUBLE PRECISION,
subpcond_prop        DOUBLE PRECISION,
macrcond_prop        DOUBLE PRECISION,
nonfr_incl_pct_subp  INTEGER,
nonfr_incl_pct_macro INTEGER,
cycle                INTEGER,
subcycle             INTEGER
);
comment on column fs_fiadb.subp_cond.cn
  is 'Unique index';
comment on column fs_fiadb.subp_cond.plt_cn
  is 'Unique index';
comment on column fs_fiadb.subp_cond.invyr
  is 'NA';
comment on column fs_fiadb.subp_cond.statecd
  is 'State code';
comment on column fs_fiadb.subp_cond.unitcd
  is 'Survey unit code';
comment on column fs_fiadb.subp_cond.countycd
  is 'County code';
comment on column fs_fiadb.subp_cond.plot
  is 'Plot number';
comment on column fs_fiadb.subp_cond.subp
  is 'Subplot number';
comment on column fs_fiadb.subp_cond.condid
  is 'Condition number';
comment on column fs_fiadb.subp_cond.created_date
  is 'Created date';
comment on column fs_fiadb.subp_cond.modified_date
  is 'Modified date';
comment on column fs_fiadb.subp_cond.micrcond_prop
  is 'Proportion of this microplot in this condition';
comment on column fs_fiadb.subp_cond.subpcond_prop
  is 'Proportion of this subplot in this condition';
comment on column fs_fiadb.subp_cond.macrcond_prop
  is 'Proportion of this macroplot in this condition';
comment on column fs_fiadb.subp_cond.nonfr_incl_pct_subp
  is 'NA';
comment on column fs_fiadb.subp_cond.nonfr_incl_pct_macro
  is 'NA';
comment on column fs_fiadb.subp_cond.cycle
  is 'Inventory cycle number';
comment on column fs_fiadb.subp_cond.subcycle
  is 'Inventory subcycle number';
create index SCD_NAT_I on FS_FIADB.SUBP_COND (STATECD, INVYR, CONDID, PLOT, UNITCD, SUBP, COUNTYCD);
create index SCD_CND_FK_I on FS_FIADB.SUBP_COND (CONDID, PLT_CN);
create index SCD_SBP_FK_I on FS_FIADB.SUBP_COND (SUBP, PLT_CN);
create index SCD_PLT_FK_I on FS_FIADB.SUBP_COND (PLT_CN);
alter table FS_FIADB.SUBP_COND add constraint SCD_PK primary key (CN);
alter table FS_FIADB.SUBP_COND add constraint SCD_UK unique (PLT_CN, CONDID, SUBP);
alter table FS_FIADB.SUBP_COND add constraint SCD_SBP_FK foreign key (PLT_CN, SUBP) references FS_FIADB.SUBPLOT (PLT_CN, SUBP);
alter table FS_FIADB.SUBP_COND add constraint SCD_CND_FK foreign key (PLT_CN, CONDID) references FS_FIADB.COND (PLT_CN, CONDID);
alter table FS_FIADB.SUBP_COND add constraint SCD_PLT_FK foreign key (PLT_CN) references FS_FIADB.PLOT (CN);