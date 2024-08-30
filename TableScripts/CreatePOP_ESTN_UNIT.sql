CREATE TABLE fs_fiadb.pop_estn_unit
(
cn              VARCHAR(34) NOT NULL,
eval_cn         VARCHAR(34) NOT NULL,
rscd            INTEGER NOT NULL,
evalid          INTEGER NOT NULL,
estn_unit       INTEGER NOT NULL,
estn_unit_descr VARCHAR(255),
statecd         INTEGER NOT NULL,
arealand_eu     DECIMAL(12,2),
areatot_eu      DECIMAL(12,2),
area_used       DECIMAL(12,2),
area_source     VARCHAR(50),
p1pntcnt_eu     BIGINT,
p1source        VARCHAR(50),
created_date    TIMESTAMP(0),
modified_date   TIMESTAMP(0)
);
create index PEU_PEV_FK_I on FS_FIADB.POP_ESTN_UNIT (EVAL_CN);
alter table FS_FIADB.POP_ESTN_UNIT add constraint PEU_PK primary key (CN);
alter table FS_FIADB.POP_ESTN_UNIT add constraint PEU_UK unique (RSCD, EVALID, ESTN_UNIT);
alter table FS_FIADB.POP_ESTN_UNIT add constraint PEU_PEV_FK foreign key (EVAL_CN) references FS_FIADB.POP_EVAL (CN);