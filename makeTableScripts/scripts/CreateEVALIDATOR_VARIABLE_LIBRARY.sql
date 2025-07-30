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
modified_in_instance VARCHAR(6),
sql_select           VARCHAR(4000),
sql_join             VARCHAR(4000),
sql_groupby          VARCHAR(4000),
sql_alias            VARCHAR(200)
);
comment on column fs_fiadb.evalidator_variable_library.db_var
  is 'The FIADB database variable that is most reflective of the classification variable (note: some classification variables may use more than one database variable)';
comment on column fs_fiadb.evalidator_variable_library.label_var
  is 'The way the classification variable will appear in the page variable/row variable/column variable drop down boxes in step 3 of the EVALIDator program';
comment on column fs_fiadb.evalidator_variable_library.type_var
  is 'No longer needed - has no meaning';
comment on column fs_fiadb.evalidator_variable_library.type_var_name
  is 'No longer needed - has no meaning  - value is always "CLASSIFICATION"';
comment on column fs_fiadb.evalidator_variable_library.attribute_list
  is 'No longer needed - has no meaning';
comment on column fs_fiadb.evalidator_variable_library.page_list
  is 'Can this classification variable be used for pages in the report - values of "Y" and "N"';
comment on column fs_fiadb.evalidator_variable_library.row_list
  is 'Can this classification variable be used for rows in the report - values of "Y" and "N"';
comment on column fs_fiadb.evalidator_variable_library.col_list
  is 'Can this classification variable be used for columns in the report - values of "Y" and "N"';
comment on column fs_fiadb.evalidator_variable_library.max_cols
  is 'Maximum number of classes for this classification variable (note: a value of 99 will result in the classification not showing up in the EVALIDator program)';
comment on column fs_fiadb.evalidator_variable_library.decode_statement
  is 'Oracle decode statement used that converts database variable(s) to categorical values for reporting purposes (only used by EVALIDator program when 'Trend analysis - StateInventories for rowsno pages' is selected as the row variable)';
comment on column fs_fiadb.evalidator_variable_library.function_name
  is 'Oracle decode statement or function that converts database variable(s) to categorical values for reporting purposes (used by EVALIDator program when 'Trend analysis - StateInventories for rowsno pages' is NOT selected as the row variable)';
comment on column fs_fiadb.evalidator_variable_library.prc_metadata
  is 'NA';
comment on column fs_fiadb.evalidator_variable_library.created_by
  is 'Created by';
comment on column fs_fiadb.evalidator_variable_library.created_date
  is 'Created date';
comment on column fs_fiadb.evalidator_variable_library.created_in_instance
  is 'Created in instance';
comment on column fs_fiadb.evalidator_variable_library.modified_by
  is 'Modified by';
comment on column fs_fiadb.evalidator_variable_library.modified_date
  is 'Modified date';
comment on column fs_fiadb.evalidator_variable_library.modified_in_instance
  is 'Modified in instance';
comment on column fs_fiadb.evalidator_variable_library.sql_select
  is 'NA';
comment on column fs_fiadb.evalidator_variable_library.sql_join
  is 'NA';
comment on column fs_fiadb.evalidator_variable_library.sql_groupby
  is 'NA';
comment on column fs_fiadb.evalidator_variable_library.sql_alias
  is 'NA';
alter table FS_FIADB.EVALIDATOR_VARIABLE_LIBRARY add constraint EVL_PK primary key (LABEL_VAR);