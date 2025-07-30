CREATE TABLE fs_fiadb.datamart_most_recent_inv
(
statecd   INTEGER NOT NULL,
eval_grps VARCHAR(32) NOT NULL,
comments  VARCHAR(64) NOT NULL,
stateab   VARCHAR(2)
);
comment on column fs_fiadb.datamart_most_recent_inv.statecd
  is 'NA';
comment on column fs_fiadb.datamart_most_recent_inv.eval_grps
  is 'NA';
comment on column fs_fiadb.datamart_most_recent_inv.comments
  is 'NA';
comment on column fs_fiadb.datamart_most_recent_inv.stateab
  is 'NA';