CREATE TABLE fs_fiadb.pop_eval_grp
(
cn             VARCHAR(34) NOT NULL,
rscd           INTEGER NOT NULL,
eval_grp       INTEGER NOT NULL,
eval_grp_descr VARCHAR(255),
statecd        INTEGER NOT NULL,
notes          VARCHAR(2000),
created_date   TIMESTAMP(0),
modified_date  TIMESTAMP(0)
);
create index PEG_EVAL_I on FS_FIADB.POP_EVAL_GRP (EVAL_GRP);
alter table FS_FIADB.POP_EVAL_GRP add constraint PEG_PK primary key (CN);
alter table FS_FIADB.POP_EVAL_GRP add constraint PEG_UK unique (RSCD, EVAL_GRP);