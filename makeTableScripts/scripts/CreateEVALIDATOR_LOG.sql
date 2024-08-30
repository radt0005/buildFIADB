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