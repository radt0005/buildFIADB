-- Create table
create table FS_FIADB.POP_EVAL_TYP
(
  cn                   VARCHAR(34) not null,
  eval_grp_cn          VARCHAR(34),
  eval_cn              VARCHAR(34) not null,
  eval_typ             VARCHAR(15),
  created_by           VARCHAR(30),
  created_date         TIMESTAMP(0),
  created_in_instance  VARCHAR(6),
  modified_by          VARCHAR(30),
  modified_date        TIMESTAMP(0),
  modified_in_instance VARCHAR(6));
-- Add comments to the table 
comment on table FS_FIADB.POP_EVAL_TYP
  is '6.0';
-- Add comments to the columns 
comment on column FS_FIADB.POP_EVAL_TYP.cn
  is 'Sequence number (surrogate primary key)';
-- Create/Recreate indexes 
create index PET_PEG_FK_I on FS_FIADB.POP_EVAL_TYP (EVAL_GRP_CN);
create index PET_PEV_FK_I on FS_FIADB.POP_EVAL_TYP (EVAL_CN);
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.POP_EVAL_TYP
  add constraint PET_PK primary key (CN);
alter table FS_FIADB.POP_EVAL_TYP
  add constraint PET_UK1 unique (EVAL_GRP_CN, EVAL_CN, EVAL_TYP);
alter table FS_FIADB.POP_EVAL_TYP
  add constraint PET_UK2 unique (EVAL_GRP_CN, EVAL_TYP);
alter table FS_FIADB.POP_EVAL_TYP
  add constraint PET_PED_FK foreign key (EVAL_TYP)
  references FS_FIADB.REF_POP_EVAL_TYP_DESCR (EVAL_TYP);
alter table FS_FIADB.POP_EVAL_TYP
  add constraint PET_PEG_FK foreign key (EVAL_GRP_CN)
  references FS_FIADB.POP_EVAL_GRP (CN);
alter table FS_FIADB.POP_EVAL_TYP
  add constraint PET_PEV_FK foreign key (EVAL_CN)
  references FS_FIADB.POP_EVAL (CN);