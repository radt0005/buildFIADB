-- Create table
create table FS_FIADB.EVALIDATOR_VARIABLE_LIBRARY
(
  db_var               VARCHAR(32),
  label_var            VARCHAR(48) not null,
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
-- Add comments to the table 
comment on table FS_FIADB.EVALIDATOR_VARIABLE_LIBRARY
  is '6.0';
-- Add comments to the columns 
comment on column FS_FIADB.EVALIDATOR_VARIABLE_LIBRARY.db_var
  is 'The FIADB database variable that is most reflective of the classification variable (note: some classification variables may use more than one database variable)';
comment on column FS_FIADB.EVALIDATOR_VARIABLE_LIBRARY.label_var
  is 'The way the classification variable will appear in the page variable/row variable/column variable drop down boxes in step 3 of the EVALIDator program';
comment on column FS_FIADB.EVALIDATOR_VARIABLE_LIBRARY.type_var
  is 'No longer needed - has no meaning';
comment on column FS_FIADB.EVALIDATOR_VARIABLE_LIBRARY.type_var_name
  is 'No longer needed - has no meaning  - value is always "CLASSIFICATION"';
comment on column FS_FIADB.EVALIDATOR_VARIABLE_LIBRARY.attribute_list
  is 'No longer needed - has no meaning';
comment on column FS_FIADB.EVALIDATOR_VARIABLE_LIBRARY.page_list
  is 'Can this classification variable be used for pages in the report - values of "Y" and "N"';
comment on column FS_FIADB.EVALIDATOR_VARIABLE_LIBRARY.row_list
  is 'Can this classification variable be used for rows in the report - values of "Y" and "N"';
comment on column FS_FIADB.EVALIDATOR_VARIABLE_LIBRARY.col_list
  is 'Can this classification variable be used for columns in the report - values of "Y" and "N"';
comment on column FS_FIADB.EVALIDATOR_VARIABLE_LIBRARY.max_cols
  is 'Maximum number of classes for this classification variable (note: a value of 99 will result in the classification not showing up in the EVALIDator program)';
comment on column FS_FIADB.EVALIDATOR_VARIABLE_LIBRARY.decode_statement
  is 'Oracle decode statement used that converts database variable(s) to categorical values for reporting purposes';
comment on column FS_FIADB.EVALIDATOR_VARIABLE_LIBRARY.function_name
  is 'Oracle decode statement or function that converts database variable(s) to categorical values for reporting purposes';
comment on column FS_FIADB.EVALIDATOR_VARIABLE_LIBRARY.created_by
  is 'Created by';
comment on column FS_FIADB.EVALIDATOR_VARIABLE_LIBRARY.created_date
  is 'Created date';
comment on column FS_FIADB.EVALIDATOR_VARIABLE_LIBRARY.created_in_instance
  is 'Created in instance';
comment on column FS_FIADB.EVALIDATOR_VARIABLE_LIBRARY.modified_by
  is 'Modified by';
comment on column FS_FIADB.EVALIDATOR_VARIABLE_LIBRARY.modified_date
  is 'Modified date';
comment on column FS_FIADB.EVALIDATOR_VARIABLE_LIBRARY.modified_in_instance
  is 'Modified in instance';
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.EVALIDATOR_VARIABLE_LIBRARY
  add constraint EVL_PK primary key (LABEL_VAR);