CREATE TABLE fs_fiadb.ref_intl_to_doyle_factor
(
dia_2inch_class INTEGER NOT NULL,
softwood        VARCHAR(1) NOT NULL,
factor          DECIMAL(5,4),
created_date    TIMESTAMP(0),
modified_date   TIMESTAMP(0)
);
alter table FS_FIADB.REF_INTL_TO_DOYLE_FACTOR add constraint RIDF_PK primary key (DIA_2INCH_CLASS, SOFTWOOD);