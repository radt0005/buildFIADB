create table FS_FIADB.TREE_REGIONAL_BIOMASS
(
  tre_cn               VARCHAR(34) not null,
  statecd              SMALLINT not null,
  regional_drybiot     DECIMAL(13,6),
  regional_drybiom     DECIMAL(13,6),
  created_by           VARCHAR(30),
  created_date         TIMESTAMP(0),
  created_in_instance  VARCHAR(6),
  modified_by          VARCHAR(30),
  modified_date        TIMESTAMP(0),
  modified_in_instance VARCHAR(6),
  regional_drybiosl    DECIMAL(13,6)
);
-- Add comments to the table 
comment on table FS_FIADB.TREE_REGIONAL_BIOMASS
  is '6.0';
-- Add comments to the columns 
comment on column FS_FIADB.TREE_REGIONAL_BIOMASS.tre_cn
  is 'Unique index';
comment on column FS_FIADB.TREE_REGIONAL_BIOMASS.statecd
  is 'State code';
comment on column FS_FIADB.TREE_REGIONAL_BIOMASS.regional_drybiot
  is 'Total gross biomass ovendry weight for live trees';
comment on column FS_FIADB.TREE_REGIONAL_BIOMASS.regional_drybiom
  is 'Merchantable stem biomass ovendry weight for live trees';
comment on column FS_FIADB.TREE_REGIONAL_BIOMASS.created_date
  is 'Created date';
comment on column FS_FIADB.TREE_REGIONAL_BIOMASS.created_in_instance
  is 'Created in instance';
comment on column FS_FIADB.TREE_REGIONAL_BIOMASS.modified_by
  is 'Modified by';
comment on column FS_FIADB.TREE_REGIONAL_BIOMASS.modified_date
  is 'Modified date';
comment on column FS_FIADB.TREE_REGIONAL_BIOMASS.modified_in_instance
  is 'Modified in instance';
comment on column FS_FIADB.TREE_REGIONAL_BIOMASS.regional_drybiosl
  is 'Sawlog biomass ovendry weight for sawtimber trees';
-- Create/Recreate indexes 
create index TRB_IDX on FS_FIADB.TREE_REGIONAL_BIOMASS (STATECD);
create index TRB_TRE_FK_I on FS_FIADB.TREE_REGIONAL_BIOMASS (TRE_CN);
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.TREE_REGIONAL_BIOMASS
  add constraint TRB_PK primary key (TRE_CN);
alter table FS_FIADB.TREE_REGIONAL_BIOMASS
  add constraint TRB_TRE_FK foreign key (TRE_CN)
  references FS_FIADB.TREE (CN);