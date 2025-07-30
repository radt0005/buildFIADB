CREATE TABLE fs_fiadb.pop_estn_unit
(
cn                   VARCHAR(34) NOT NULL,
eval_cn              VARCHAR(34) NOT NULL,
rscd                 INTEGER NOT NULL,
evalid               INTEGER NOT NULL,
estn_unit            INTEGER NOT NULL,
estn_unit_descr      VARCHAR(255),
statecd              INTEGER NOT NULL,
arealand_eu          DECIMAL(12,2),
areatot_eu           DECIMAL(12,2),
area_used            DECIMAL(12,2),
area_source          VARCHAR(50),
p1pntcnt_eu          INTEGER,
p1source             VARCHAR(50),
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6)
);
comment on column fs_fiadb.pop_estn_unit.cn
  is 'NA';
comment on column fs_fiadb.pop_estn_unit.eval_cn
  is 'NA';
comment on column fs_fiadb.pop_estn_unit.rscd
  is 'Region or Station Code';
comment on column fs_fiadb.pop_estn_unit.evalid
  is 'Evaluation ID';
comment on column fs_fiadb.pop_estn_unit.estn_unit
  is 'Estimation unit';
comment on column fs_fiadb.pop_estn_unit.estn_unit_descr
  is 'Estimation unit description';
comment on column fs_fiadb.pop_estn_unit.statecd
  is 'State Code of primary state being evaluated';
comment on column fs_fiadb.pop_estn_unit.arealand_eu
  is 'Land area within the estimation unit';
comment on column fs_fiadb.pop_estn_unit.areatot_eu
  is 'Total area within the estimation unit';
comment on column fs_fiadb.pop_estn_unit.area_used
  is 'AREA USED TO CALCULATE EXPANSION FACTORS';
comment on column fs_fiadb.pop_estn_unit.area_source
  is 'Source of area figures usually Census Bureau or from pixel counts';
comment on column fs_fiadb.pop_estn_unit.p1pntcnt_eu
  is 'total number of pixels in the estimation unit';
comment on column fs_fiadb.pop_estn_unit.p1source
  is 'Phase 1 source';
comment on column fs_fiadb.pop_estn_unit.created_by
  is 'Created by';
comment on column fs_fiadb.pop_estn_unit.created_date
  is 'Created date';
comment on column fs_fiadb.pop_estn_unit.created_in_instance
  is 'Created in instance';
comment on column fs_fiadb.pop_estn_unit.modified_by
  is 'Modified by';
comment on column fs_fiadb.pop_estn_unit.modified_date
  is 'Modified date';
comment on column fs_fiadb.pop_estn_unit.modified_in_instance
  is 'Modified in instance';
create index PEU_PEV_FK_I on FS_FIADB.POP_ESTN_UNIT (EVAL_CN);
alter table FS_FIADB.POP_ESTN_UNIT add constraint PEU_PK primary key (CN);
alter table FS_FIADB.POP_ESTN_UNIT add constraint PEU_UK unique (RSCD, EVALID, ESTN_UNIT);
alter table FS_FIADB.POP_ESTN_UNIT add constraint PEU_PEV_FK foreign key (EVAL_CN) references FS_FIADB.POP_EVAL (CN);