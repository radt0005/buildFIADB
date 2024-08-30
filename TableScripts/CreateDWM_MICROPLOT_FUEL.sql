CREATE TABLE fs_fiadb.dwm_microplot_fuel
(
cn                 VARCHAR(34) NOT NULL,
plt_cn             VARCHAR(34) NOT NULL,
invyr              INTEGER NOT NULL,
statecd            INTEGER NOT NULL,
countycd           INTEGER NOT NULL,
plot               INTEGER NOT NULL,
subp               INTEGER NOT NULL,
measyear           INTEGER,
lvshrbcd           INTEGER,
dshrbcd            INTEGER,
lvhrbcd            INTEGER,
dhrbcd             INTEGER,
littercd           DOUBLE PRECISION,
lvshrbht           DOUBLE PRECISION,
dshrbht            DOUBLE PRECISION,
lvhrbht            DOUBLE PRECISION,
dhrbht             DOUBLE PRECISION,
created_date       TIMESTAMP(0),
modified_date      TIMESTAMP(0),
micr_sample_method VARCHAR(6)
);
create index DMF_NAT_I on FS_FIADB.DWM_MICROPLOT_FUEL (STATECD, INVYR, COUNTYCD, PLOT, SUBP);
alter table FS_FIADB.DWM_MICROPLOT_FUEL add constraint DMF_PK primary key (CN);
alter table FS_FIADB.DWM_MICROPLOT_FUEL add constraint DMF_UK unique (PLT_CN, SUBP);