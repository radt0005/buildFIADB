CREATE TABLE fs_fiadb.ref_pop_attribute
(
created_by           VARCHAR(30),
eval_typ             VARCHAR(15),
created_date         TIMESTAMP(0),
modified_date        TIMESTAMP(0),
active               VARCHAR(1),
modified_in_instance VARCHAR(6),
sql_query_se         TEXT,
growth_acct          VARCHAR(1),
attribute_descr      VARCHAR(255),
sql_query            VARCHAR(4000),
attribute_nbr        DOUBLE PRECISION,
land_basis           VARCHAR(32),
notes                VARCHAR(2000),
modified_by          VARCHAR(30),
created_in_instance  VARCHAR(6)
);
comment on column fs_fiadb.ref_pop_attribute.created_by
  is 'Created by';
comment on column fs_fiadb.ref_pop_attribute.eval_typ
  is 'Evaluation type - used by JAVA program PopEstFIADB4';
comment on column fs_fiadb.ref_pop_attribute.created_date
  is 'Created date';
comment on column fs_fiadb.ref_pop_attribute.modified_date
  is 'Modified date';
comment on column fs_fiadb.ref_pop_attribute.active
  is 'Y/N to indicate if attribute record is active or retired';
comment on column fs_fiadb.ref_pop_attribute.modified_in_instance
  is 'Modified in instance';
comment on column fs_fiadb.ref_pop_attribute.sql_query_se
  is 'NA';
comment on column fs_fiadb.ref_pop_attribute.growth_acct
  is 'Y if attribute record can be used for growth accounting, N if it cannot be used for growth accounting, null if eval_typ for record is not EXPGROW';
comment on column fs_fiadb.ref_pop_attribute.attribute_descr
  is 'Estimation attribute e.g. Area of timberland';
comment on column fs_fiadb.ref_pop_attribute.sql_query
  is 'NA';
comment on column fs_fiadb.ref_pop_attribute.attribute_nbr
  is 'Arbitrary unique number';
comment on column fs_fiadb.ref_pop_attribute.land_basis
  is 'Land basis for estimate. Timberland or Forest land';
comment on column fs_fiadb.ref_pop_attribute.notes
  is 'Notes';
comment on column fs_fiadb.ref_pop_attribute.modified_by
  is 'Modified by';
comment on column fs_fiadb.ref_pop_attribute.created_in_instance
  is 'Created in instance';