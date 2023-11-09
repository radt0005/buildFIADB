-- Create table
create table FS_FIADB.DWM_RESIDUAL_PILE
(
  cn                   VARCHAR(34) not null,
  plt_cn               VARCHAR(34) not null,
  invyr                SMALLINT not null,
  statecd              SMALLINT not null,
  countycd             SMALLINT not null,
  plot                 INT not null,
  subp                 SMALLINT not null,
  pile                 DOUBLE PRECISION not null,
  measyear             SMALLINT,
  condid               SMALLINT,
  shapecd              SMALLINT,
  azimuth              SMALLINT,
  density              SMALLINT,
  height1              SMALLINT,
  width1               SMALLINT,
  length1              SMALLINT,
  height2              SMALLINT,
  width2               SMALLINT,
  length2              SMALLINT,
  volcf                DOUBLE PRECISION,
  drybio               DOUBLE PRECISION,
  carbon               DOUBLE PRECISION,
  ppa_unadj            DOUBLE PRECISION,
  ppa_plot             DOUBLE PRECISION,
  ppa_cond             DOUBLE PRECISION,
  created_by           VARCHAR(30),
  created_date         TIMESTAMP(0),
  created_in_instance  VARCHAR(6),
  modified_by          VARCHAR(30),
  modified_in_instance VARCHAR(6),
  modified_date        TIMESTAMP(0),
  comp_ht              SMALLINT,
  decaycd              SMALLINT,
  horiz_begndist       DECIMAL(3,1),
  horiz_enddist        DECIMAL(3,1),
  pile_sample_method   VARCHAR(6),
  spcd                 SMALLINT,
  transect             SMALLINT
);
-- Add comments to the table 
comment on table FS_FIADB.DWM_RESIDUAL_PILE
  is '6.0';
-- Add comments to the columns 
comment on column FS_FIADB.DWM_RESIDUAL_PILE.cn
  is 'Unique Index';
comment on column FS_FIADB.DWM_RESIDUAL_PILE.plt_cn
  is 'Foreign Key to NIMS_PLOT';
comment on column FS_FIADB.DWM_RESIDUAL_PILE.statecd
  is 'state code';
comment on column FS_FIADB.DWM_RESIDUAL_PILE.countycd
  is 'County Code';
comment on column FS_FIADB.DWM_RESIDUAL_PILE.plot
  is 'P2 Plot Number';
comment on column FS_FIADB.DWM_RESIDUAL_PILE.subp
  is 'Subplot Number';
comment on column FS_FIADB.DWM_RESIDUAL_PILE.pile
  is 'Subplot pile nbr';
comment on column FS_FIADB.DWM_RESIDUAL_PILE.measyear
  is 'Measurement Year';
comment on column FS_FIADB.DWM_RESIDUAL_PILE.condid
  is 'Forest cond. of pile';
comment on column FS_FIADB.DWM_RESIDUAL_PILE.shapecd
  is 'Pile shape code';
comment on column FS_FIADB.DWM_RESIDUAL_PILE.azimuth
  is 'Bearing from subplot to pile (deg)';
comment on column FS_FIADB.DWM_RESIDUAL_PILE.density
  is 'Packing ratio of pile (%)';
comment on column FS_FIADB.DWM_RESIDUAL_PILE.height1
  is 'Pile height1 (ft)';
comment on column FS_FIADB.DWM_RESIDUAL_PILE.width1
  is 'Pile width1 (ft)';
comment on column FS_FIADB.DWM_RESIDUAL_PILE.length1
  is 'Pile length1 (ft)';
comment on column FS_FIADB.DWM_RESIDUAL_PILE.height2
  is 'Pile height2 (ft)';
comment on column FS_FIADB.DWM_RESIDUAL_PILE.width2
  is 'Pile width2 (ft)';
comment on column FS_FIADB.DWM_RESIDUAL_PILE.length2
  is 'Pile length2 (ft)';
comment on column FS_FIADB.DWM_RESIDUAL_PILE.volcf
  is 'Cubic foot volume of pile.';
comment on column FS_FIADB.DWM_RESIDUAL_PILE.drybio
  is 'Dry weight of pile in pounds.';
comment on column FS_FIADB.DWM_RESIDUAL_PILE.carbon
  is 'Carbon weight of pile in pounds.';
comment on column FS_FIADB.DWM_RESIDUAL_PILE.ppa_unadj
  is 'Piles per acre based on target area';
comment on column FS_FIADB.DWM_RESIDUAL_PILE.ppa_plot
  is 'Piles per acre based on the area of the plot actually measured';
comment on column FS_FIADB.DWM_RESIDUAL_PILE.ppa_cond
  is 'Piles per acre based on the area of the condition actually measured';
comment on column FS_FIADB.DWM_RESIDUAL_PILE.created_by
  is 'Created by';
comment on column FS_FIADB.DWM_RESIDUAL_PILE.created_date
  is 'Created Date';
comment on column FS_FIADB.DWM_RESIDUAL_PILE.created_in_instance
  is 'Created in Instance';
comment on column FS_FIADB.DWM_RESIDUAL_PILE.modified_by
  is 'Modified by';
comment on column FS_FIADB.DWM_RESIDUAL_PILE.modified_in_instance
  is 'Modified in Instance';
comment on column FS_FIADB.DWM_RESIDUAL_PILE.modified_date
  is 'Modified Date';
comment on column FS_FIADB.DWM_RESIDUAL_PILE.comp_ht
  is 'Compacted height of residue pile (ft)';
comment on column FS_FIADB.DWM_RESIDUAL_PILE.decaycd
  is 'Decay class code of the residue pile';
comment on column FS_FIADB.DWM_RESIDUAL_PILE.horiz_begndist
  is 'Pile beginning horizontal distance (ft)';
comment on column FS_FIADB.DWM_RESIDUAL_PILE.horiz_enddist
  is 'Pile ending horizontal distance (ft)';
comment on column FS_FIADB.DWM_RESIDUAL_PILE.pile_sample_method
  is 'Code indicating what design and sampling protocol were used to collect the record';
comment on column FS_FIADB.DWM_RESIDUAL_PILE.spcd
  is 'Species code for residue pile';
comment on column FS_FIADB.DWM_RESIDUAL_PILE.transect
  is 'Subplot transect (deg)';
-- Create/Recreate indexes 
create index DRP_NAT_I on FS_FIADB.DWM_RESIDUAL_PILE (STATECD, INVYR, COUNTYCD, PLOT, SUBP, PILE);
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.DWM_RESIDUAL_PILE
  add constraint DRP_PK primary key (CN);
alter table FS_FIADB.DWM_RESIDUAL_PILE
  add constraint DRP_UK unique (PLT_CN, SUBP, TRANSECT, PILE);