CREATE TABLE fs_fiadb.lichen_lab
(
cn              VARCHAR(34) NOT NULL,
plt_cn          VARCHAR(34) NOT NULL,
invyr           INTEGER NOT NULL,
statecd         INTEGER NOT NULL,
countycd        INTEGER NOT NULL,
plot            INTEGER NOT NULL,
lich_sppcd      INTEGER NOT NULL,
measyear        INTEGER NOT NULL,
abundance_class INTEGER NOT NULL,
origin_flag     INTEGER,
spp_comments    VARCHAR(2000),
created_date    TIMESTAMP(0),
modified_date   TIMESTAMP(0)
);
create index LCH_NAT_I on FS_FIADB.LICHEN_LAB (STATECD, INVYR, COUNTYCD, PLOT, LICH_SPPCD);
alter table FS_FIADB.LICHEN_LAB add constraint LCH_PK primary key (CN);
alter table FS_FIADB.LICHEN_LAB add constraint LCH_UK unique (PLT_CN, LICH_SPPCD);
alter table FS_FIADB.LICHEN_LAB add constraint LCH_PLT_FK foreign key (PLT_CN) references FS_FIADB.PLOT (CN);