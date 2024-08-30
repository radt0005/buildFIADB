-- Create table
create table FS_FIADB.REF_POP_ATTRIBUTE
(
  cn                   VARCHAR(34) not null,
  attribute_nbr        INTEGER not null,
  attribute_descr      VARCHAR(255),
  eval_typ             VARCHAR(15),
  created_by           VARCHAR(30),
  created_date         TIMESTAMP(0),
  created_in_instance  VARCHAR(6),
  modified_by          VARCHAR(30),
  modified_date        TIMESTAMP(0),
  modified_in_instance VARCHAR(6),
  notes                VARCHAR(2000),
  sql_query            VARCHAR(4000),
  active               VARCHAR(1),
  growth_acct          VARCHAR(1),
  land_basis           VARCHAR(32),
  sql_query_se         TEXT
);
-- Add comments to the table 
comment on table FS_FIADB.REF_POP_ATTRIBUTE
  is '6.0';
-- Add comments to the columns 
comment on column FS_FIADB.REF_POP_ATTRIBUTE.cn
  is 'Sequence number (surrogate primary key';
comment on column FS_FIADB.REF_POP_ATTRIBUTE.attribute_nbr
  is 'Arbitrary unique number';
comment on column FS_FIADB.REF_POP_ATTRIBUTE.attribute_descr
  is 'Estimation attribute e.g. Area of timberland';
comment on column FS_FIADB.REF_POP_ATTRIBUTE.eval_typ
  is 'The evaluation type associated with the attribute. It is assumed that an attribute can only be associated with on evaluation type.';
comment on column FS_FIADB.REF_POP_ATTRIBUTE.created_by
  is 'Created by';
comment on column FS_FIADB.REF_POP_ATTRIBUTE.created_date
  is 'Created Date';
comment on column FS_FIADB.REF_POP_ATTRIBUTE.created_in_instance
  is 'Created in Instance';
comment on column FS_FIADB.REF_POP_ATTRIBUTE.modified_by
  is 'Modified by';
comment on column FS_FIADB.REF_POP_ATTRIBUTE.modified_date
  is 'Modified Date';
comment on column FS_FIADB.REF_POP_ATTRIBUTE.modified_in_instance
  is 'Modified in Instance';
comment on column FS_FIADB.REF_POP_ATTRIBUTE.notes
  is 'Notes';
comment on column FS_FIADB.REF_POP_ATTRIBUTE.sql_query
  is 'SQL query used to generate the population estimate';
comment on column FS_FIADB.REF_POP_ATTRIBUTE.active
  is 'Is the attribute active or retired';
comment on column FS_FIADB.REF_POP_ATTRIBUTE.growth_acct
  is 'Does the attribute use growth accounting';
comment on column FS_FIADB.REF_POP_ATTRIBUTE.land_basis
  is 'What is the land basis';
comment on column FS_FIADB.REF_POP_ATTRIBUTE.sql_query_se
  is 'SQL query used to generate the population estimate with sampling errors';
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.REF_POP_ATTRIBUTE
  add constraint PAE_PK primary key (CN);
alter table FS_FIADB.REF_POP_ATTRIBUTE
  add constraint PAE_UK unique (ATTRIBUTE_NBR);
