CREATE TABLE fs_fiadb.pop_eval_attribute
(
cn            VARCHAR(34) NOT NULL,
eval_cn       VARCHAR(34) NOT NULL,
attribute_nbr INTEGER NOT NULL,
statecd       INTEGER,
created_date  TIMESTAMP(0),
modified_date TIMESTAMP(0)
);
create index PEA_PEV_FK_I on FS_FIADB.POP_EVAL_ATTRIBUTE (EVAL_CN);
create index PEA_PAE_FK_I on FS_FIADB.POP_EVAL_ATTRIBUTE (ATTRIBUTE_NBR);
alter table FS_FIADB.POP_EVAL_ATTRIBUTE add constraint PEA_UK unique (EVAL_CN, ATTRIBUTE_NBR);
alter table FS_FIADB.POP_EVAL_ATTRIBUTE add constraint PEA_PEV_FK foreign key (EVAL_CN) references FS_FIADB.POP_EVAL (CN);