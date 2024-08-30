-- Create table
create table FS_FIADB.POP_ESTN_UNIT
(
  cn                   VARCHAR(34) not null,
  eval_cn              VARCHAR(34) not null,
  rscd                 SMALLINT not null,
  evalid               INT not null,
  estn_unit            INT not null,
  estn_unit_descr      VARCHAR(255),
  statecd              SMALLINT not null,
  arealand_eu          DECIMAL(12,2),
  areatot_eu           DECIMAL(12,2),
  area_used            DECIMAL(12,2),
  area_source          VARCHAR(50),
  p1pntcnt_eu          BIGINT,
  p1source             VARCHAR(50),
  created_by           VARCHAR(30),
  created_date         TIMESTAMP(0),
  created_in_instance  VARCHAR(6),
  modified_by          VARCHAR(30),
  modified_date        TIMESTAMP(0),
  modified_in_instance VARCHAR(6));
-- Add comments to the table 
comment on table FS_FIADB.POP_ESTN_UNIT
  is '6.0';
-- Add comments to the columns 
comment on column FS_FIADB.POP_ESTN_UNIT.rscd
  is 'Region or Station Code';
comment on column FS_FIADB.POP_ESTN_UNIT.evalid
  is 'Evaluation ID';
comment on column FS_FIADB.POP_ESTN_UNIT.estn_unit
  is 'Estimation unit';
comment on column FS_FIADB.POP_ESTN_UNIT.estn_unit_descr
  is 'Estimation unit description';
comment on column FS_FIADB.POP_ESTN_UNIT.statecd
  is 'State Code of primary state being evaluated';
comment on column FS_FIADB.POP_ESTN_UNIT.arealand_eu
  is 'Land area within the estimation unit';
comment on column FS_FIADB.POP_ESTN_UNIT.areatot_eu
  is 'Total area within the estimation unit';
comment on column FS_FIADB.POP_ESTN_UNIT.area_used
  is 'AREA USED TO CALCULATE EXPANSION FACTORS';
comment on column FS_FIADB.POP_ESTN_UNIT.area_source
  is 'Source of area figures usually Census Bureau or from pixel counts';
comment on column FS_FIADB.POP_ESTN_UNIT.p1pntcnt_eu
  is 'total number of pixels in the estimation unit';
comment on column FS_FIADB.POP_ESTN_UNIT.p1source
  is 'Phase 1 source';
comment on column FS_FIADB.POP_ESTN_UNIT.created_by
  is 'Created by';
comment on column FS_FIADB.POP_ESTN_UNIT.created_date
  is 'Created date';
comment on column FS_FIADB.POP_ESTN_UNIT.created_in_instance
  is 'Created in instance';
comment on column FS_FIADB.POP_ESTN_UNIT.modified_by
  is 'Modified by';
comment on column FS_FIADB.POP_ESTN_UNIT.modified_date
  is 'Modified date';
comment on column FS_FIADB.POP_ESTN_UNIT.modified_in_instance
  is 'Modified in instance';
-- Create/Recreate indexes 
create index PEU_PEV_FK_I on FS_FIADB.POP_ESTN_UNIT (EVAL_CN);
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.POP_ESTN_UNIT
  add constraint PEU_PK primary key (CN);
alter table FS_FIADB.POP_ESTN_UNIT
  add constraint PEU_UK unique (RSCD, EVALID, ESTN_UNIT);
alter table FS_FIADB.POP_ESTN_UNIT
  add constraint PEU_PEV_FK foreign key (EVAL_CN)
  references FS_FIADB.POP_EVAL (CN);