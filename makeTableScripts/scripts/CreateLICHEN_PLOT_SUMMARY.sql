CREATE TABLE fs_fiadb.lichen_plot_summary
(
cn                   VARCHAR(34) NOT NULL,
plt_cn               VARCHAR(34) NOT NULL,
invyr                INTEGER NOT NULL,
statecd              INTEGER NOT NULL,
countycd             INTEGER NOT NULL,
plot                 INTEGER NOT NULL,
measyear             INTEGER NOT NULL,
summation            DECIMAL(7,4) NOT NULL,
richness             INTEGER NOT NULL,
evenness             DECIMAL(5,4),
diversity            DECIMAL(5,4) NOT NULL,
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6)
);
comment on column fs_fiadb.lichen_plot_summary.cn
  is 'NA';
comment on column fs_fiadb.lichen_plot_summary.plt_cn
  is 'NA';
comment on column fs_fiadb.lichen_plot_summary.invyr
  is 'NA';
comment on column fs_fiadb.lichen_plot_summary.statecd
  is 'statecd code';
comment on column fs_fiadb.lichen_plot_summary.countycd
  is 'county code';
comment on column fs_fiadb.lichen_plot_summary.plot
  is 'p2 plot number';
comment on column fs_fiadb.lichen_plot_summary.measyear
  is 'measurement year';
comment on column fs_fiadb.lichen_plot_summary.summation
  is 'NA';
comment on column fs_fiadb.lichen_plot_summary.richness
  is 'NA';
comment on column fs_fiadb.lichen_plot_summary.evenness
  is 'NA';
comment on column fs_fiadb.lichen_plot_summary.diversity
  is 'NA';
comment on column fs_fiadb.lichen_plot_summary.created_by
  is 'NA';
comment on column fs_fiadb.lichen_plot_summary.created_date
  is 'NA';
comment on column fs_fiadb.lichen_plot_summary.created_in_instance
  is 'NA';
comment on column fs_fiadb.lichen_plot_summary.modified_by
  is 'NA';
comment on column fs_fiadb.lichen_plot_summary.modified_date
  is 'NA';
comment on column fs_fiadb.lichen_plot_summary.modified_in_instance
  is 'NA';
create index LPS_NAT_I on FS_FIADB.LICHEN_PLOT_SUMMARY (STATECD, INVYR, COUNTYCD, PLOT);
alter table FS_FIADB.LICHEN_PLOT_SUMMARY add constraint LPS_PK primary key (CN);
alter table FS_FIADB.LICHEN_PLOT_SUMMARY add constraint LPS_UK unique (PLT_CN);
alter table FS_FIADB.LICHEN_PLOT_SUMMARY add constraint LPS_PLT_FK foreign key (PLT_CN) references FS_FIADB.PLOT (CN);