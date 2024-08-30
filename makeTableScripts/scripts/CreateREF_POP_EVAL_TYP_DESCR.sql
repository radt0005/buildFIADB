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
alter table FS_FIADB.REF_POP_EVAL_TYP_DESCR add constraint PED_PK primary key (CN);
alter table FS_FIADB.REF_POP_EVAL_TYP_DESCR add constraint PED_UK unique (EVAL_TYP);