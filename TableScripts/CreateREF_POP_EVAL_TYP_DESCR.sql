-- Create table
create table FS_FIADB.REF_POP_EVAL_TYP_DESCR
(
  cn                   VARCHAR(34) not null,
  label_order          SMALLINT,
  eval_typ             VARCHAR(15),
  eval_typ_label       VARCHAR(15),
  change_eval_typ      VARCHAR(1),
  eval_typ_descr       VARCHAR(255),
  created_by           VARCHAR(30),
  created_date         TIMESTAMP(0),
  created_in_instance  VARCHAR(6),
  modified_by          VARCHAR(30),
  modified_date        TIMESTAMP(0),
  modified_in_instance VARCHAR(6),
  eval_typ_cd          VARCHAR(2)
);
-- Add comments to the table 
comment on table FS_FIADB.REF_POP_EVAL_TYP_DESCR
  is '6.0';
-- Add comments to the columns 
comment on column FS_FIADB.REF_POP_EVAL_TYP_DESCR.cn
  is 'Sequence number (surrogate primary key)';
comment on column FS_FIADB.REF_POP_EVAL_TYP_DESCR.label_order
  is 'The order in which to assemble eval. types to create standarized eval. grp. descriptions.';
comment on column FS_FIADB.REF_POP_EVAL_TYP_DESCR.eval_typ_label
  is 'The label to use for this evaluation type when constructing standardized evaluation group descriptions.';
comment on column FS_FIADB.REF_POP_EVAL_TYP_DESCR.change_eval_typ
  is 'Y if the evaluation type computes change attributes involving two points in time, N if the evaluation type computes estimates of current attributes involving one point in time. This is used in the construction of standardized evaluationd descriptions.';
comment on column FS_FIADB.REF_POP_EVAL_TYP_DESCR.created_by
  is 'Created by';
comment on column FS_FIADB.REF_POP_EVAL_TYP_DESCR.created_date
  is 'Created Date';
comment on column FS_FIADB.REF_POP_EVAL_TYP_DESCR.created_in_instance
  is 'Created in Instance';
comment on column FS_FIADB.REF_POP_EVAL_TYP_DESCR.modified_by
  is 'Modified by';
comment on column FS_FIADB.REF_POP_EVAL_TYP_DESCR.modified_date
  is 'Modified Date';
comment on column FS_FIADB.REF_POP_EVAL_TYP_DESCR.modified_in_instance
  is 'Modified in Instance';
comment on column FS_FIADB.REF_POP_EVAL_TYP_DESCR.eval_typ_cd
  is 'Evaluation ID Type code for the last 2 characters of the EVALID';
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.REF_POP_EVAL_TYP_DESCR
  add constraint PED_PK primary key (CN);
alter table FS_FIADB.REF_POP_EVAL_TYP_DESCR
  add constraint PED_UK unique (EVAL_TYP);