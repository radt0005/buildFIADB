CREATE TABLE fs_fiadb.pop_eval
(
cn              VARCHAR(34) NOT NULL,
eval_grp_cn     VARCHAR(34),
rscd            INTEGER NOT NULL,
evalid          INTEGER NOT NULL,
eval_descr      VARCHAR(255),
statecd         INTEGER NOT NULL,
location_nm     VARCHAR(255),
report_year_nm  VARCHAR(255),
start_invyr     INTEGER,
end_invyr       INTEGER,
land_only       VARCHAR(1),
timberland_only VARCHAR(1),
growth_acct     VARCHAR(1),
estn_method     VARCHAR(40),
notes           VARCHAR(2000),
created_date    TIMESTAMP(0),
modified_date   TIMESTAMP(0)
);
create index PEV_PEG_FK_I on FS_FIADB.POP_EVAL (EVAL_GRP_CN);
alter table FS_FIADB.POP_EVAL add constraint PEV_PK primary key (CN);
alter table FS_FIADB.POP_EVAL add constraint PEV_UK unique (RSCD, EVALID);
alter table FS_FIADB.POP_EVAL add constraint PEV_PEG_FK foreign key (EVAL_GRP_CN) references FS_FIADB.POP_EVAL_GRP (CN);