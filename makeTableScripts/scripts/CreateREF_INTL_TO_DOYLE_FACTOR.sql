CREATE TABLE fs_fiadb.ref_intl_to_doyle_factor
(
dia_2inch_class      INTEGER NOT NULL,
softwood             VARCHAR(1) NOT NULL,
factor               DECIMAL(5,4),
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6)
);
comment on column fs_fiadb.ref_intl_to_doyle_factor.dia_2inch_class
  is 'The two inch diameter class of the tree';
comment on column fs_fiadb.ref_intl_to_doyle_factor.softwood
  is 'N = Hardwoods species, Y = Softwood species';
comment on column fs_fiadb.ref_intl_to_doyle_factor.factor
  is 'The factor to multiply International 1/4 Inch log rule board feet by to produce Doyle log rule board foot volume';
comment on column fs_fiadb.ref_intl_to_doyle_factor.created_by
  is 'Created by';
comment on column fs_fiadb.ref_intl_to_doyle_factor.created_date
  is 'Created Date ';
comment on column fs_fiadb.ref_intl_to_doyle_factor.created_in_instance
  is 'Created in Instance ';
comment on column fs_fiadb.ref_intl_to_doyle_factor.modified_by
  is 'Modified by ';
comment on column fs_fiadb.ref_intl_to_doyle_factor.modified_date
  is 'Modified Date';
comment on column fs_fiadb.ref_intl_to_doyle_factor.modified_in_instance
  is 'Modified in Instance ';
alter table FS_FIADB.REF_INTL_TO_DOYLE_FACTOR add constraint RIDF_PK primary key (DIA_2INCH_CLASS, SOFTWOOD);