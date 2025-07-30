CREATE TABLE fs_fiadb.pop_eval_attribute
(
cn                   VARCHAR(34) NOT NULL,
eval_cn              VARCHAR(34) NOT NULL,
attribute_nbr        INTEGER NOT NULL,
statecd              INTEGER,
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6)
);
comment on column fs_fiadb.pop_eval_attribute.cn
  is 'NA';
comment on column fs_fiadb.pop_eval_attribute.eval_cn
  is 'NA';
comment on column fs_fiadb.pop_eval_attribute.attribute_nbr
  is 'NA';
comment on column fs_fiadb.pop_eval_attribute.statecd
  is 'NA';
comment on column fs_fiadb.pop_eval_attribute.created_by
  is 'NA';
comment on column fs_fiadb.pop_eval_attribute.created_date
  is 'NA';
comment on column fs_fiadb.pop_eval_attribute.created_in_instance
  is 'NA';
comment on column fs_fiadb.pop_eval_attribute.modified_by
  is 'NA';
comment on column fs_fiadb.pop_eval_attribute.modified_date
  is 'NA';
comment on column fs_fiadb.pop_eval_attribute.modified_in_instance
  is 'NA';
create index PEA_PEV_FK_I on FS_FIADB.POP_EVAL_ATTRIBUTE (EVAL_CN);
create index PEA_PAE_FK_I on FS_FIADB.POP_EVAL_ATTRIBUTE (ATTRIBUTE_NBR);
alter table FS_FIADB.POP_EVAL_ATTRIBUTE add constraint PEA_UK unique (EVAL_CN, ATTRIBUTE_NBR);
alter table FS_FIADB.POP_EVAL_ATTRIBUTE add constraint PEA_PEV_FK foreign key (EVAL_CN) references FS_FIADB.POP_EVAL (CN);