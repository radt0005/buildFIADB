CREATE TABLE fs_fiadb.pop_eval_attribute
(
cn            VARCHAR(34) NOT NULL,
eval_cn       VARCHAR(34) NOT NULL,
attribute_nbr INTEGER NOT NULL,
statecd       INTEGER,
created_date  TIMESTAMP(0),
modified_date TIMESTAMP(0)
);
comment on column fs_fiadb.pop_eval_attribute.cn
  is 'NA';
comment on column fs_fiadb.pop_eval_attribute.eval_cn
  is 'NA';
comment on column fs_fiadb.pop_eval_attribute.attribute_nbr
  is 'NA';
comment on column fs_fiadb.pop_eval_attribute.statecd
  is 'NA';
comment on column fs_fiadb.pop_eval_attribute.created_date
  is 'NA';
comment on column fs_fiadb.pop_eval_attribute.modified_date
  is 'NA';
create index PEA_PAE_FK_I on FS_FIADB.POP_EVAL_ATTRIBUTE (ATTRIBUTE_NBR);
create index PEA_PEV_FK_I on FS_FIADB.POP_EVAL_ATTRIBUTE (EVAL_CN);
alter table FS_FIADB.POP_EVAL_ATTRIBUTE add constraint PEA_UK unique (ATTRIBUTE_NBR, EVAL_CN);
alter table FS_FIADB.POP_EVAL_ATTRIBUTE add constraint PEA_PEV_FK foreign key (EVAL_CN) references FS_FIADB.POP_EVAL (CN);