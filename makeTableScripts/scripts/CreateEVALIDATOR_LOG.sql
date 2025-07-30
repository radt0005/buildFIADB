CREATE TABLE fs_fiadb.evalidator_log
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
mapped          VARCHAR(1),
remote_address  VARCHAR(15),
calc_se         VARCHAR(50),
page_time       VARCHAR(200),
row_time        VARCHAR(200),
col_time        VARCHAR(200)
);
comment on column fs_fiadb.evalidator_log.session_id
  is 'Unique identifier for EVALIDator session';
comment on column fs_fiadb.evalidator_log.session_date
  is 'Date and time of retrieval';
comment on column fs_fiadb.evalidator_log.retrieval_type
  is 'Always "evalid"';
comment on column fs_fiadb.evalidator_log.latitude
  is 'Fuzzed and swapped lat for center of circular retrievals';
comment on column fs_fiadb.evalidator_log.longitude
  is 'Fuzzed and swapped lon for center of circular retrievals';
comment on column fs_fiadb.evalidator_log.radius
  is 'Radius in miles for circular retrievals';
comment on column fs_fiadb.evalidator_log.geographic_area
  is 'States and evalids included in retrieval';
comment on column fs_fiadb.evalidator_log.attribute
  is 'Type of estimate as described by REF_ATTRIBUTE_ACCESS1.ATTRIBUTE_DESCR';
comment on column fs_fiadb.evalidator_log.filter
  is 'User defined SQL where clause that restricts the data included in the retrieval';
comment on column fs_fiadb.evalidator_log.page_name
  is 'Classification variable used for pages of the report as described in FIM_401_VARIABLE_LIBRARY.LABEL_VAR';
comment on column fs_fiadb.evalidator_log.row_name
  is 'Classification variable used for rows of the report as described in FIM_401_VARIABLE_LIBRARY.LABEL_VAR';
comment on column fs_fiadb.evalidator_log.column_name
  is 'Classification variable used for columns of the report as described in FIM_401_VARIABLE_LIBRARY.LABEL_VAR';
comment on column fs_fiadb.evalidator_log.mapped
  is 'Always null';
comment on column fs_fiadb.evalidator_log.remote_address
  is 'Users Ipaddress';
comment on column fs_fiadb.evalidator_log.calc_se
  is 'At one time user could specify whether they wanted sampling error estimates. No longer an option.';
comment on column fs_fiadb.evalidator_log.page_time
  is 'NA';
comment on column fs_fiadb.evalidator_log.row_time
  is 'NA';
comment on column fs_fiadb.evalidator_log.col_time
  is 'NA';