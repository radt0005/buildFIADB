CREATE TABLE fs_fiadb.ref_pop_eval_typ_descr
(
cn                   VARCHAR(34) NOT NULL,
label_order          INTEGER,
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
comment on column fs_fiadb.ref_pop_eval_typ_descr.cn
  is 'Sequence number (surrogate primary key)';
comment on column fs_fiadb.ref_pop_eval_typ_descr.label_order
  is 'The order in which to assemble eval. types to create standarized eval. grp. descriptions.';
comment on column fs_fiadb.ref_pop_eval_typ_descr.eval_typ
  is 'NA';
comment on column fs_fiadb.ref_pop_eval_typ_descr.eval_typ_label
  is 'The label to use for this evaluation type when constructing standardized evaluation group descriptions.';
comment on column fs_fiadb.ref_pop_eval_typ_descr.change_eval_typ
  is 'Y if the evaluation type computes change attributes involving two points in time, N if the evaluation type computes estimates of current attributes involving one point in time. This is used in the construction of standardized evaluationd descriptions.';
comment on column fs_fiadb.ref_pop_eval_typ_descr.eval_typ_descr
  is 'NA';
comment on column fs_fiadb.ref_pop_eval_typ_descr.created_by
  is 'Created by';
comment on column fs_fiadb.ref_pop_eval_typ_descr.created_date
  is 'Created Date';
comment on column fs_fiadb.ref_pop_eval_typ_descr.created_in_instance
  is 'Created in Instance';
comment on column fs_fiadb.ref_pop_eval_typ_descr.modified_by
  is 'Modified by';
comment on column fs_fiadb.ref_pop_eval_typ_descr.modified_date
  is 'Modified Date';
comment on column fs_fiadb.ref_pop_eval_typ_descr.modified_in_instance
  is 'Modified in Instance';
comment on column fs_fiadb.ref_pop_eval_typ_descr.eval_typ_cd
  is 'Evaluation ID Type code for the last 2 characters of the EVALID';
alter table FS_FIADB.REF_POP_EVAL_TYP_DESCR add constraint PED_PK primary key (CN);
alter table FS_FIADB.REF_POP_EVAL_TYP_DESCR add constraint PED_UK unique (EVAL_TYP);