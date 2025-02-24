CREATE TABLE fs_fiadb.ref_pop_attribute
(
attribute_nbr   DOUBLE PRECISION,
attribute_descr VARCHAR(255),
eval_typ        VARCHAR(15),
notes           VARCHAR(2000),
sql_query       VARCHAR(4000),
active          VARCHAR(1),
growth_acct     VARCHAR(1),
land_basis      VARCHAR(32),
sql_query_se    TEXT,
created_date    TIMESTAMP(0),
modified_date   TIMESTAMP(0)
);
