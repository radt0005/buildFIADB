create table FS_FIADB.DATAMART_MOST_RECENT_INV
(
  statecd   SMALLINT not null,
  eval_grps VARCHAR(32) not null,
  comments  VARCHAR(64) not null,
  stateab   VARCHAR(2)
);
-- Add comments to the table 
comment on table FS_FIADB.DATAMART_MOST_RECENT_INV
  is '6.0';