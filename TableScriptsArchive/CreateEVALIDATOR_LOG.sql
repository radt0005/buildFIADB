-- Create table
create table FS_FIADB.EVALIDATOR_LOG
(
  session_id      VARCHAR(50),
  session_date    TIMESTAMP(0),
  retrieval_type  VARCHAR(12),
  latitude        DOUBLE PRECISION,
  longitude       DOUBLE PRECISION,
  radius          DOUBLE PRECISION,
  geographic_area VARCHAR(2000),
  attribute       VARCHAR(200),
  filter          VARCHAR(2000),
  page_name       VARCHAR(200),
  row_name        VARCHAR(200),
  column_name     VARCHAR(200),
  mapped          VARCHAR(1) default 'N',
  remote_address  VARCHAR(15),
  calc_se         VARCHAR(50),
  page_time       VARCHAR(200),
  row_time        VARCHAR(200),
  col_time        VARCHAR(200));
-- Add comments to the table 
comment on table FS_FIADB.EVALIDATOR_LOG
  is '6.0';
-- Add comments to the columns 
comment on column FS_FIADB.EVALIDATOR_LOG.session_id
  is 'Unique identifier for EVALIDator session';
comment on column FS_FIADB.EVALIDATOR_LOG.session_date
  is 'Date and time of retrieval';
comment on column FS_FIADB.EVALIDATOR_LOG.retrieval_type
  is 'Always "evalid"';
comment on column FS_FIADB.EVALIDATOR_LOG.latitude
  is 'Fuzzed and swapped lat for center of circular retrievals';
comment on column FS_FIADB.EVALIDATOR_LOG.longitude
  is 'Fuzzed and swapped lon for center of circular retrievals';
comment on column FS_FIADB.EVALIDATOR_LOG.radius
  is 'Radius in miles for circular retrievals';
comment on column FS_FIADB.EVALIDATOR_LOG.geographic_area
  is 'States and evalids included in retrieval';
comment on column FS_FIADB.EVALIDATOR_LOG.attribute
  is 'Type of estimate as described by REF_ATTRIBUTE_ACCESS1.ATTRIBUTE_DESCR';
comment on column FS_FIADB.EVALIDATOR_LOG.filter
  is 'User defined SQL where clause that restricts the data included in the retrieval';
comment on column FS_FIADB.EVALIDATOR_LOG.page_name
  is 'Classification variable used for pages of the report as described in FIM_401_VARIABLE_LIBRARY.LABEL_VAR';
comment on column FS_FIADB.EVALIDATOR_LOG.row_name
  is 'Classification variable used for rows of the report as described in FIM_401_VARIABLE_LIBRARY.LABEL_VAR';
comment on column FS_FIADB.EVALIDATOR_LOG.column_name
  is 'Classification variable used for columns of the report as described in FIM_401_VARIABLE_LIBRARY.LABEL_VAR';
comment on column FS_FIADB.EVALIDATOR_LOG.mapped
  is 'Always null';
comment on column FS_FIADB.EVALIDATOR_LOG.remote_address
  is 'Users Ipaddress';
comment on column FS_FIADB.EVALIDATOR_LOG.calc_se
  is 'At one time user could specify whether they wanted sampling error estimates. No longer an option.';