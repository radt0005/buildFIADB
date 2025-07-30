CREATE TABLE fs_fiadb.pop_eval_typ
(
cn            VARCHAR(34) NOT NULL,
eval_grp_cn   VARCHAR(34),
eval_cn       VARCHAR(34) NOT NULL,
eval_typ      VARCHAR(15),
created_date  TIMESTAMP(0),
modified_date TIMESTAMP(0)
);
comment on column fs_fiadb.pop_eval_typ.cn
  is 'Sequence number (surrogate primary key)';
comment on column fs_fiadb.pop_eval_typ.eval_grp_cn
  is 'NA';
comment on column fs_fiadb.pop_eval_typ.eval_cn
  is 'NA';
comment on column fs_fiadb.pop_eval_typ.eval_typ
  is 'NA';
comment on column fs_fiadb.pop_eval_typ.created_date
  is 'NA';
comment on column fs_fiadb.pop_eval_typ.modified_date
  is 'NA';
create index PET_PEG_FK_I on FS_FIADB.POP_EVAL_TYP (EVAL_GRP_CN);
create index PET_PEV_FK_I on FS_FIADB.POP_EVAL_TYP (EVAL_CN);
alter table FS_FIADB.POP_EVAL_TYP add constraint PET_PK primary key (CN);
alter table FS_FIADB.POP_EVAL_TYP add constraint PET_UK1 unique (EVAL_TYP, EVAL_GRP_CN, EVAL_CN);
alter table FS_FIADB.POP_EVAL_TYP add constraint PET_UK2 unique (EVAL_GRP_CN, EVAL_TYP);
alter table FS_FIADB.POP_EVAL_TYP add constraint PET_PEV_FK foreign key (EVAL_CN) references FS_FIADB.POP_EVAL (CN);
alter table FS_FIADB.POP_EVAL_TYP add constraint PET_PED_FK foreign key (EVAL_TYP) references FS_FIADB.REF_POP_EVAL_TYP_DESCR (EVAL_TYP);
alter table FS_FIADB.POP_EVAL_TYP add constraint PET_PEG_FK foreign key (EVAL_GRP_CN) references FS_FIADB.POP_EVAL_GRP (CN);