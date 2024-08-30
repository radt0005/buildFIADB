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
create index SBPREGEN_PLT_FK_I on FS_FIADB.SUBPLOT_REGEN (PLT_CN);
create index SBPREGEN_SBP_FK_I on FS_FIADB.SUBPLOT_REGEN (SBP_CN);
alter table FS_FIADB.SUBPLOT_REGEN add constraint SBPREGEN_PK primary key (CN);
alter table FS_FIADB.SUBPLOT_REGEN add constraint SBPREGEN_UK unique (STATECD, COUNTYCD, PLOT, SUBP, INVYR);
alter table FS_FIADB.SUBPLOT_REGEN add constraint SBPREGEN_SBP_FK foreign key (SBP_CN) references FS_FIADB.SUBPLOT (CN);
alter table FS_FIADB.SUBPLOT_REGEN add constraint SBPREGEN_PLT_FK foreign key (PLT_CN) references FS_FIADB.PLOT (CN);