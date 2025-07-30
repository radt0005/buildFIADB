CREATE TABLE fs_fiadb.dwm_microplot_fuel
(
cn                   VARCHAR(34) NOT NULL,
plt_cn               VARCHAR(34) NOT NULL,
invyr                INTEGER NOT NULL,
statecd              INTEGER NOT NULL,
countycd             INTEGER NOT NULL,
plot                 INTEGER NOT NULL,
subp                 INTEGER NOT NULL,
measyear             INTEGER,
lvshrbcd             INTEGER,
dshrbcd              INTEGER,
lvhrbcd              INTEGER,
dhrbcd               INTEGER,
littercd             DOUBLE PRECISION,
lvshrbht             DOUBLE PRECISION,
dshrbht              DOUBLE PRECISION,
lvhrbht              DOUBLE PRECISION,
dhrbht               DOUBLE PRECISION,
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6),
micr_sample_method   VARCHAR(6)
);
comment on column fs_fiadb.dwm_microplot_fuel.cn
  is 'Unique Index';
comment on column fs_fiadb.dwm_microplot_fuel.plt_cn
  is 'Foreign Key to NIMS_PLOT';
comment on column fs_fiadb.dwm_microplot_fuel.invyr
  is 'NA';
comment on column fs_fiadb.dwm_microplot_fuel.statecd
  is 'state code';
comment on column fs_fiadb.dwm_microplot_fuel.countycd
  is 'County Code';
comment on column fs_fiadb.dwm_microplot_fuel.plot
  is 'P2 Plot Number';
comment on column fs_fiadb.dwm_microplot_fuel.subp
  is 'Subplot Number';
comment on column fs_fiadb.dwm_microplot_fuel.measyear
  is 'Measurement Year';
comment on column fs_fiadb.dwm_microplot_fuel.lvshrbcd
  is 'Live shrub cover (%)';
comment on column fs_fiadb.dwm_microplot_fuel.dshrbcd
  is 'Dead shrub cover (%)';
comment on column fs_fiadb.dwm_microplot_fuel.lvhrbcd
  is 'Live herb cover (%)';
comment on column fs_fiadb.dwm_microplot_fuel.dhrbcd
  is 'Dead herb cover (%)';
comment on column fs_fiadb.dwm_microplot_fuel.littercd
  is 'Litter cover (%)';
comment on column fs_fiadb.dwm_microplot_fuel.lvshrbht
  is 'Live shrub height (ft)';
comment on column fs_fiadb.dwm_microplot_fuel.dshrbht
  is 'Dead shrub height (ft)';
comment on column fs_fiadb.dwm_microplot_fuel.lvhrbht
  is 'Live herb height (ft)';
comment on column fs_fiadb.dwm_microplot_fuel.dhrbht
  is 'Dead herb height (ft)';
comment on column fs_fiadb.dwm_microplot_fuel.created_by
  is 'Created by';
comment on column fs_fiadb.dwm_microplot_fuel.created_date
  is 'Created Date';
comment on column fs_fiadb.dwm_microplot_fuel.created_in_instance
  is 'Created in Instance';
comment on column fs_fiadb.dwm_microplot_fuel.modified_by
  is 'Modified by';
comment on column fs_fiadb.dwm_microplot_fuel.modified_date
  is 'Modified Date';
comment on column fs_fiadb.dwm_microplot_fuel.modified_in_instance
  is 'Modified in Instance';
comment on column fs_fiadb.dwm_microplot_fuel.micr_sample_method
  is 'Code indicating what design and sampling protocol were used to collect the record';
create index DMF_NAT_I on FS_FIADB.DWM_MICROPLOT_FUEL (STATECD, INVYR, COUNTYCD, PLOT, SUBP);
alter table FS_FIADB.DWM_MICROPLOT_FUEL add constraint DMF_PK primary key (CN);
alter table FS_FIADB.DWM_MICROPLOT_FUEL add constraint DMF_UK unique (PLT_CN, SUBP);