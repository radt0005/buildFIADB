-- Create table
create table FS_FIADB.POP_EVAL_ATTRIBUTE
(
  cn                   VARCHAR(34) not null,
  eval_cn              VARCHAR(34) not null,
  attribute_nbr        INTEGER not null,
  statecd              SMALLINT,
  created_by           VARCHAR(30),
  created_date         TIMESTAMP(0),
  created_in_instance  VARCHAR(6),
  modified_by          VARCHAR(30),
  modified_date        TIMESTAMP(0),
  modified_in_instance VARCHAR(6));
-- Add comments to the table 
comment on table FS_FIADB.POP_EVAL_ATTRIBUTE
  is '6.0';
-- Create/Recreate indexes 
create index PEA_PAE_FK_I on FS_FIADB.POP_EVAL_ATTRIBUTE (ATTRIBUTE_NBR);
create index PEA_PEV_FK_I on FS_FIADB.POP_EVAL_ATTRIBUTE (EVAL_CN);
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.POP_EVAL_ATTRIBUTE
  add constraint PEA_UK unique (EVAL_CN, ATTRIBUTE_NBR);
alter table FS_FIADB.POP_EVAL_ATTRIBUTE
  add constraint PEA_PAE_FK foreign key (ATTRIBUTE_NBR)
  references FS_FIADB.REF_POP_ATTRIBUTE (ATTRIBUTE_NBR);
alter table FS_FIADB.POP_EVAL_ATTRIBUTE
  add constraint PEA_PEV_FK foreign key (EVAL_CN)
  references FS_FIADB.POP_EVAL (CN);
