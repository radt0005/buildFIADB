-- Create table
create table FS_FIADB.POP_EVAL_GRP
(
  cn                   VARCHAR(34) not null,
  rscd                 SMALLINT not null,
  eval_grp             INT not null,
  eval_grp_descr       VARCHAR(255),
  statecd              SMALLINT not null,
  notes                VARCHAR(2000),
  created_by           VARCHAR(30),
  created_date         TIMESTAMP(0),
  created_in_instance  VARCHAR(6),
  modified_by          VARCHAR(30),
  modified_date        TIMESTAMP(0),
  modified_in_instance VARCHAR(6));
-- Add comments to the table 
comment on table FS_FIADB.POP_EVAL_GRP
  is '6.0';
-- Add comments to the columns 
comment on column FS_FIADB.POP_EVAL_GRP.eval_grp
  is 'Reporting year followed by 4 more digits to make the statecd;eval_grp combo unique';
comment on column FS_FIADB.POP_EVAL_GRP.eval_grp_descr
  is 'If the evaluation is used in a statistical or analytical report use report title';
comment on column FS_FIADB.POP_EVAL_GRP.statecd
  is 'State Code of primary state being evaluated';
comment on column FS_FIADB.POP_EVAL_GRP.notes
  is 'Population evaluation group notes';
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.POP_EVAL_GRP
  add constraint PEG_PK primary key (CN);
alter table FS_FIADB.POP_EVAL_GRP
  add constraint PEG_UK unique (RSCD, EVAL_GRP);