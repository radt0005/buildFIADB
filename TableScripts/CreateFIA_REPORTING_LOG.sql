-- Create table
create table FS_FIADB.FIA_REPORTING_LOG
(
  cn                   VARCHAR(34) not null,
  session_id           VARCHAR(50),
  app_url              VARCHAR(200),
  app_version          VARCHAR(32),
  session_date         TIMESTAMP(0),
  retrieval_type       VARCHAR(12),
  latitude             DOUBLE PRECISION,
  longitude            DOUBLE PRECISION,
  radius               DOUBLE PRECISION,
  geographic_area      VARCHAR(2000),
  attribute            VARCHAR(50),
  filter               VARCHAR(2000),
  page_name            VARCHAR(32),
  row_name             VARCHAR(32),
  column_name          VARCHAR(32),
  mapped               VARCHAR(1) default 'N',
  remote_address       VARCHAR(15),
  console_xml          BYTEA,
  completion_status    VARCHAR(4),
  created_by           VARCHAR(30),
  created_date         TIMESTAMP(0),
  created_in_instance  VARCHAR(6),
  modified_by          VARCHAR(30),
  modified_date        TIMESTAMP(0),
  modified_in_instance VARCHAR(6)
);
-- Add comments to the table 
comment on table FS_FIADB.FIA_REPORTING_LOG
  is '6.0';
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.FIA_REPORTING_LOG
  add constraint FRL_PK primary key (CN);