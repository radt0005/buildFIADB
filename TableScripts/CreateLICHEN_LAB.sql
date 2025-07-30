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
comment on column fs_fiadb.lichen_lab.cn
  is 'NA';
comment on column fs_fiadb.lichen_lab.plt_cn
  is 'NA';
comment on column fs_fiadb.lichen_lab.invyr
  is 'NA';
comment on column fs_fiadb.lichen_lab.statecd
  is 'NA';
comment on column fs_fiadb.lichen_lab.countycd
  is 'NA';
comment on column fs_fiadb.lichen_lab.plot
  is 'NA';
comment on column fs_fiadb.lichen_lab.lich_sppcd
  is 'NA';
comment on column fs_fiadb.lichen_lab.measyear
  is 'NA';
comment on column fs_fiadb.lichen_lab.abundance_class
  is 'NA';
comment on column fs_fiadb.lichen_lab.origin_flag
  is 'NA';
comment on column fs_fiadb.lichen_lab.spp_comments
  is 'NA';
comment on column fs_fiadb.lichen_lab.created_date
  is 'NA';
comment on column fs_fiadb.lichen_lab.modified_date
  is 'NA';
create index LCH_NAT_I on FS_FIADB.LICHEN_LAB (LICH_SPPCD, COUNTYCD, INVYR, STATECD, PLOT);
alter table FS_FIADB.LICHEN_LAB add constraint LCH_PK primary key (CN);
alter table FS_FIADB.LICHEN_LAB add constraint LCH_UK unique (LICH_SPPCD, PLT_CN);
alter table FS_FIADB.LICHEN_LAB add constraint LCH_PLT_FK foreign key (PLT_CN) references FS_FIADB.PLOT (CN);