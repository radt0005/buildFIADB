CREATE TABLE fs_fiadb.evalidator_variable_library
(
db_var               VARCHAR(32),
label_var            VARCHAR(48) NOT NULL,
type_var             DOUBLE PRECISION,
type_var_name        CHAR(14),
attribute_list       CHAR(1),
page_list            CHAR(1),
row_list             CHAR(1),
col_list             CHAR(1),
max_cols             DOUBLE PRECISION,
decode_statement     VARCHAR(4000),
function_name        VARCHAR(4000),
prc_metadata         VARCHAR(4000),
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6)
);
alter table FS_FIADB.EVALIDATOR_VARIABLE_LIBRARY add constraint EVL_PK primary key (LABEL_VAR);