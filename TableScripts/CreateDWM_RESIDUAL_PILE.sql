CREATE TABLE fs_fiadb.dwm_residual_pile
(
cn                 VARCHAR(34) NOT NULL,
plt_cn             VARCHAR(34) NOT NULL,
invyr              INTEGER NOT NULL,
statecd            INTEGER NOT NULL,
countycd           INTEGER NOT NULL,
plot               INTEGER NOT NULL,
subp               INTEGER NOT NULL,
pile               DOUBLE PRECISION NOT NULL,
measyear           INTEGER,
condid             INTEGER,
shapecd            INTEGER,
density            INTEGER,
height1            INTEGER,
width1             INTEGER,
length1            INTEGER,
height2            INTEGER,
width2             INTEGER,
length2            INTEGER,
volcf              DOUBLE PRECISION,
drybio             DOUBLE PRECISION,
carbon             DOUBLE PRECISION,
ppa_unadj          DOUBLE PRECISION,
ppa_plot           DOUBLE PRECISION,
ppa_cond           DOUBLE PRECISION,
created_date       TIMESTAMP(0),
modified_date      TIMESTAMP(0),
comp_ht            INTEGER,
decaycd            INTEGER,
horiz_begndist     DECIMAL(3,1),
horiz_enddist      DECIMAL(3,1),
pile_sample_method VARCHAR(6),
spcd               INTEGER,
transect           INTEGER
);
create index DRP_NAT_I on FS_FIADB.DWM_RESIDUAL_PILE (STATECD, INVYR, COUNTYCD, PLOT, SUBP, PILE);
alter table FS_FIADB.DWM_RESIDUAL_PILE add constraint DRP_PK primary key (CN);
alter table FS_FIADB.DWM_RESIDUAL_PILE add constraint DRP_UK unique (PLT_CN, SUBP, TRANSECT, PILE);