-- Create table
create table FS_FIADB.INVASIVE_SUBPLOT_SPP
(
  cn                   VARCHAR(34) not null,
  plt_cn               VARCHAR(34) not null,
  invyr                SMALLINT not null,
  statecd              SMALLINT not null,
  unitcd               SMALLINT,
  countycd             SMALLINT not null,
  plot                 DOUBLE PRECISION not null,
  subp                 DOUBLE PRECISION not null,
  condid               SMALLINT not null,
  veg_fldspcd          VARCHAR(10) not null,
  unique_sp_nbr        SMALLINT not null,
  veg_spcd             VARCHAR(10) not null,
  cover_pct            SMALLINT not null,
  created_by           VARCHAR(30),
  created_date         TIMESTAMP(0),
  created_in_instance  VARCHAR(6),
  modified_by          VARCHAR(30),
  modified_date        TIMESTAMP(0),
  modified_in_instance VARCHAR(6),
  cycle                SMALLINT not null,
  subcycle             SMALLINT not null
);
-- Add comments to the table 
comment on table FS_FIADB.INVASIVE_SUBPLOT_SPP
  is '6.0';
-- Add comments to the columns 
comment on column FS_FIADB.INVASIVE_SUBPLOT_SPP.cn
  is 'Sequence number (surrogate primary key';
comment on column FS_FIADB.INVASIVE_SUBPLOT_SPP.plt_cn
  is 'Foreign key to Plot table CN';
comment on column FS_FIADB.INVASIVE_SUBPLOT_SPP.invyr
  is 'Inventory year';
comment on column FS_FIADB.INVASIVE_SUBPLOT_SPP.statecd
  is 'State code';
comment on column FS_FIADB.INVASIVE_SUBPLOT_SPP.unitcd
  is 'Survey unit code';
comment on column FS_FIADB.INVASIVE_SUBPLOT_SPP.countycd
  is 'County code';
comment on column FS_FIADB.INVASIVE_SUBPLOT_SPP.plot
  is 'Plot number';
comment on column FS_FIADB.INVASIVE_SUBPLOT_SPP.subp
  is 'Subplot number';
comment on column FS_FIADB.INVASIVE_SUBPLOT_SPP.condid
  is 'Condition number';
comment on column FS_FIADB.INVASIVE_SUBPLOT_SPP.veg_fldspcd
  is 'Veg Field Species Code';
comment on column FS_FIADB.INVASIVE_SUBPLOT_SPP.unique_sp_nbr
  is 'Unique Species Number identifies the number of species occurrences within each NRCS genus or unknown code. For example, 2 unidentifiable CAREX species would be entered as 2 separate records with differing Unique Species Numbers to show that they are not the same species.';
comment on column FS_FIADB.INVASIVE_SUBPLOT_SPP.veg_spcd
  is 'Veg Species Code';
comment on column FS_FIADB.INVASIVE_SUBPLOT_SPP.cover_pct
  is 'Species percent canopy cover';
comment on column FS_FIADB.INVASIVE_SUBPLOT_SPP.created_by
  is 'Created by';
comment on column FS_FIADB.INVASIVE_SUBPLOT_SPP.created_date
  is 'Created Date';
comment on column FS_FIADB.INVASIVE_SUBPLOT_SPP.created_in_instance
  is 'Created in Instance';
comment on column FS_FIADB.INVASIVE_SUBPLOT_SPP.modified_by
  is 'Modified by';
comment on column FS_FIADB.INVASIVE_SUBPLOT_SPP.modified_date
  is 'Modified Date';
comment on column FS_FIADB.INVASIVE_SUBPLOT_SPP.modified_in_instance
  is 'Modified in Instance';
comment on column FS_FIADB.INVASIVE_SUBPLOT_SPP.cycle
  is 'Inventory cycle number';
comment on column FS_FIADB.INVASIVE_SUBPLOT_SPP.subcycle
  is 'Inventory subcycle number';
-- Create/Recreate indexes 
create index ISS_PLT_FK_I on FS_FIADB.INVASIVE_SUBPLOT_SPP (PLT_CN);
create index ISS_SCD_FK_I on FS_FIADB.INVASIVE_SUBPLOT_SPP (PLT_CN, SUBP, CONDID);
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.INVASIVE_SUBPLOT_SPP
  add constraint ISS_PK primary key (CN);
alter table FS_FIADB.INVASIVE_SUBPLOT_SPP
  add constraint ISS_UK unique (PLT_CN, VEG_FLDSPCD, UNIQUE_SP_NBR, SUBP, CONDID);
alter table FS_FIADB.INVASIVE_SUBPLOT_SPP
  add constraint ISS_PLT_FK foreign key (PLT_CN)
  references FS_FIADB.PLOT (CN);
