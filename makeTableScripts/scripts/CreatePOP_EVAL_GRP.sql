CREATE TABLE fs_fiadb.pop_eval_grp
(
cn                   VARCHAR(34) NOT NULL,
rscd                 INTEGER NOT NULL,
eval_grp             INTEGER NOT NULL,
eval_grp_descr       VARCHAR(255),
statecd              INTEGER NOT NULL,
notes                VARCHAR(2000),
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6)
);
comment on column fs_fiadb.pop_eval_grp.cn
  is 'NA';
comment on column fs_fiadb.pop_eval_grp.rscd
  is 'NA';
comment on column fs_fiadb.pop_eval_grp.eval_grp
  is 'Reporting year followed by 4 more digits to make the statecd;eval_grp combo unique';
comment on column fs_fiadb.pop_eval_grp.eval_grp_descr
  is 'If the evaluation is used in a statistical or analytical report use report title';
comment on column fs_fiadb.pop_eval_grp.statecd
  is 'State Code of primary state being evaluated';
comment on column fs_fiadb.pop_eval_grp.notes
  is 'Population evaluation group notes';
comment on column fs_fiadb.pop_eval_grp.created_by
  is 'NA';
comment on column fs_fiadb.pop_eval_grp.created_date
  is 'NA';
comment on column fs_fiadb.pop_eval_grp.created_in_instance
  is 'NA';
comment on column fs_fiadb.pop_eval_grp.modified_by
  is 'NA';
comment on column fs_fiadb.pop_eval_grp.modified_date
  is 'NA';
comment on column fs_fiadb.pop_eval_grp.modified_in_instance
  is 'NA';
create index PEG_EVAL_I on FS_FIADB.POP_EVAL_GRP (EVAL_GRP);
alter table FS_FIADB.POP_EVAL_GRP add constraint PEG_PK primary key (CN);
alter table FS_FIADB.POP_EVAL_GRP add constraint PEG_UK unique (RSCD, EVAL_GRP);