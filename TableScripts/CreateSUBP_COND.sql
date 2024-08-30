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
create index SCD_NAT_I on FS_FIADB.SUBP_COND (STATECD, INVYR, UNITCD, COUNTYCD, PLOT, SUBP, CONDID);
create index SCD_SBP_FK_I on FS_FIADB.SUBP_COND (PLT_CN, SUBP);
create index SCD_CND_FK_I on FS_FIADB.SUBP_COND (PLT_CN, CONDID);
create index SCD_PLT_FK_I on FS_FIADB.SUBP_COND (PLT_CN);
alter table FS_FIADB.SUBP_COND add constraint SCD_PK primary key (CN);
alter table FS_FIADB.SUBP_COND add constraint SCD_UK unique (PLT_CN, SUBP, CONDID);
alter table FS_FIADB.SUBP_COND add constraint SCD_SBP_FK foreign key (PLT_CN, SUBP) references FS_FIADB.SUBPLOT (PLT_CN, SUBP);
alter table FS_FIADB.SUBP_COND add constraint SCD_CND_FK foreign key (PLT_CN, CONDID) references FS_FIADB.COND (PLT_CN, CONDID);
alter table FS_FIADB.SUBP_COND add constraint SCD_PLT_FK foreign key (PLT_CN) references FS_FIADB.PLOT (CN);