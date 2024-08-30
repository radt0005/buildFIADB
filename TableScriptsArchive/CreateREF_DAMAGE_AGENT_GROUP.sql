-- Create table
create table FS_FIADB.REF_DAMAGE_AGENT_GROUP
(
  code                 INT not null,
  description          VARCHAR(80) not null,
  created_by           VARCHAR(30),
  created_date         TIMESTAMP(0),
  created_in_instance  VARCHAR(6),
  modified_by          VARCHAR(30),
  modified_date        TIMESTAMP(0),
  modified_in_instance VARCHAR(6)
);
-- Add comments to the table 
comment on table FS_FIADB.REF_DAMAGE_AGENT_GROUP
  is 'Damage agent groups. Table created for 6.0 TREE DAMAGE AGENT protocols';
-- Add comments to the columns 
comment on column FS_FIADB.REF_DAMAGE_AGENT_GROUP.code
  is 'Damage agent group code';
comment on column FS_FIADB.REF_DAMAGE_AGENT_GROUP.description
  is 'Description of the damage agent group';
comment on column FS_FIADB.REF_DAMAGE_AGENT_GROUP.created_by
  is 'Created by';
comment on column FS_FIADB.REF_DAMAGE_AGENT_GROUP.created_date
  is 'Created Date ';
comment on column FS_FIADB.REF_DAMAGE_AGENT_GROUP.created_in_instance
  is 'Created in Instance ';
comment on column FS_FIADB.REF_DAMAGE_AGENT_GROUP.modified_by
  is 'Modified by ';
comment on column FS_FIADB.REF_DAMAGE_AGENT_GROUP.modified_date
  is 'Modified Date';
comment on column FS_FIADB.REF_DAMAGE_AGENT_GROUP.modified_in_instance
  is 'Modified in Instance ';
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.REF_DAMAGE_AGENT_GROUP
  add constraint DAG_PK primary key (CODE);