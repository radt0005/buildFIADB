-- Create table
create table FS_FIADB.EVALIDATOR_ESTIMATE_GRP
(
  estimate_grp_nbr     DOUBLE PRECISION not null,
  estimate_grp_descr   VARCHAR(255),
  created_by           VARCHAR(30),
  created_date         TIMESTAMP(0),
  created_in_instance  VARCHAR(6),
  modified_by          VARCHAR(30),
  modified_date        TIMESTAMP(0),
  modified_in_instance VARCHAR(6),
  active               VARCHAR(1)
);
-- Add comments to the columns 
comment on column FS_FIADB.EVALIDATOR_ESTIMATE_GRP.estimate_grp_nbr
  is 'Arbitrary unique number';
comment on column FS_FIADB.EVALIDATOR_ESTIMATE_GRP.estimate_grp_descr
  is 'Estimate group description';
comment on column FS_FIADB.EVALIDATOR_ESTIMATE_GRP.created_by
  is 'Created by';
comment on column FS_FIADB.EVALIDATOR_ESTIMATE_GRP.created_date
  is 'Created date';
comment on column FS_FIADB.EVALIDATOR_ESTIMATE_GRP.created_in_instance
  is 'Created in instance';
comment on column FS_FIADB.EVALIDATOR_ESTIMATE_GRP.modified_by
  is 'Modified by';
comment on column FS_FIADB.EVALIDATOR_ESTIMATE_GRP.modified_date
  is 'Modified date';
comment on column FS_FIADB.EVALIDATOR_ESTIMATE_GRP.modified_in_instance
  is 'Modified in instance';
comment on column FS_FIADB.EVALIDATOR_ESTIMATE_GRP.active
  is 'Active estimation group Y/N';
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.EVALIDATOR_ESTIMATE_GRP
  add constraint EEG_PK primary key (ESTIMATE_GRP_NBR);
alter table FS_FIADB.EVALIDATOR_ESTIMATE_GRP
  add constraint EEG_UK unique (ESTIMATE_GRP_DESCR);