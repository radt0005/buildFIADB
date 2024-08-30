-- Create table
create table FS_FIADB.DATAMART_TABLES
(
  table_type           DOUBLE PRECISION not null,
  table_name           VARCHAR(30) not null,
  created_by           VARCHAR(30),
  created_date         TIMESTAMP(0),
  created_in_instance  VARCHAR(6),
  modified_by          VARCHAR(30),
  modified_date        TIMESTAMP(0),
  modified_in_instance VARCHAR(6)
);
-- Add comments to the table 
comment on table FS_FIADB.DATAMART_TABLES
  is '6.0';
-- Add comments to the columns 
comment on column FS_FIADB.DATAMART_TABLES.table_type
  is '1=REFERENCE TABLE; 2=NON-REFERENCE TABLE';
comment on column FS_FIADB.DATAMART_TABLES.table_name
  is 'FIADB table name';
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.DATAMART_TABLES
  add constraint DATAMART_TBLS_PK primary key (TABLE_TYPE, TABLE_NAME);
