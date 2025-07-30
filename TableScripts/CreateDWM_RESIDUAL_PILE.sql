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
comment on column fs_fiadb.dwm_residual_pile.cn
  is 'Unique Index';
comment on column fs_fiadb.dwm_residual_pile.plt_cn
  is 'Foreign Key to NIMS_PLOT';
comment on column fs_fiadb.dwm_residual_pile.invyr
  is 'NA';
comment on column fs_fiadb.dwm_residual_pile.statecd
  is 'state code';
comment on column fs_fiadb.dwm_residual_pile.countycd
  is 'County Code';
comment on column fs_fiadb.dwm_residual_pile.plot
  is 'P2 Plot Number';
comment on column fs_fiadb.dwm_residual_pile.subp
  is 'Subplot Number';
comment on column fs_fiadb.dwm_residual_pile.pile
  is 'Subplot pile nbr';
comment on column fs_fiadb.dwm_residual_pile.measyear
  is 'Measurement Year';
comment on column fs_fiadb.dwm_residual_pile.condid
  is 'Forest cond. of pile';
comment on column fs_fiadb.dwm_residual_pile.shapecd
  is 'Pile shape code';
comment on column fs_fiadb.dwm_residual_pile.density
  is 'Packing ratio of pile (%)';
comment on column fs_fiadb.dwm_residual_pile.height1
  is 'Pile height1 (ft)';
comment on column fs_fiadb.dwm_residual_pile.width1
  is 'Pile width1 (ft)';
comment on column fs_fiadb.dwm_residual_pile.length1
  is 'Pile length1 (ft)';
comment on column fs_fiadb.dwm_residual_pile.height2
  is 'Pile height2 (ft)';
comment on column fs_fiadb.dwm_residual_pile.width2
  is 'Pile width2 (ft)';
comment on column fs_fiadb.dwm_residual_pile.length2
  is 'Pile length2 (ft)';
comment on column fs_fiadb.dwm_residual_pile.volcf
  is 'Cubic foot volume of pile.';
comment on column fs_fiadb.dwm_residual_pile.drybio
  is 'Dry weight of pile in pounds.';
comment on column fs_fiadb.dwm_residual_pile.carbon
  is 'Carbon weight of pile in pounds.';
comment on column fs_fiadb.dwm_residual_pile.ppa_unadj
  is 'Piles per acre based on target area';
comment on column fs_fiadb.dwm_residual_pile.ppa_plot
  is 'Piles per acre based on the area of the plot actually measured';
comment on column fs_fiadb.dwm_residual_pile.ppa_cond
  is 'Piles per acre based on the area of the condition actually measured';
comment on column fs_fiadb.dwm_residual_pile.created_date
  is 'Created Date';
comment on column fs_fiadb.dwm_residual_pile.modified_date
  is 'Modified Date';
comment on column fs_fiadb.dwm_residual_pile.comp_ht
  is 'Compacted height of residue pile (ft)';
comment on column fs_fiadb.dwm_residual_pile.decaycd
  is 'Decay class code of the residue pile';
comment on column fs_fiadb.dwm_residual_pile.horiz_begndist
  is 'Pile beginning horizontal distance (ft)';
comment on column fs_fiadb.dwm_residual_pile.horiz_enddist
  is 'Pile ending horizontal distance (ft)';
comment on column fs_fiadb.dwm_residual_pile.pile_sample_method
  is 'Code indicating what design and sampling protocol were used to collect the record';
comment on column fs_fiadb.dwm_residual_pile.spcd
  is 'Species code for residue pile';
comment on column fs_fiadb.dwm_residual_pile.transect
  is 'Subplot transect (deg)';
create index DRP_NAT_I on FS_FIADB.DWM_RESIDUAL_PILE (PLOT, SUBP, COUNTYCD, STATECD, INVYR, PILE);
alter table FS_FIADB.DWM_RESIDUAL_PILE add constraint DRP_PK primary key (CN);
alter table FS_FIADB.DWM_RESIDUAL_PILE add constraint DRP_UK unique (TRANSECT, SUBP, PLT_CN, PILE);