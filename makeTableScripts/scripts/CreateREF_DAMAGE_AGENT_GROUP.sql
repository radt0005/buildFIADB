CREATE TABLE fs_fiadb.ref_damage_agent_group
(
code                 INTEGER NOT NULL,
description          VARCHAR(80) NOT NULL,
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6)
);
comment on column fs_fiadb.ref_damage_agent_group.code
  is 'Damage agent group code';
comment on column fs_fiadb.ref_damage_agent_group.description
  is 'Description of the damage agent group';
comment on column fs_fiadb.ref_damage_agent_group.created_by
  is 'Created by';
comment on column fs_fiadb.ref_damage_agent_group.created_date
  is 'Created Date ';
comment on column fs_fiadb.ref_damage_agent_group.created_in_instance
  is 'Created in Instance ';
comment on column fs_fiadb.ref_damage_agent_group.modified_by
  is 'Modified by ';
comment on column fs_fiadb.ref_damage_agent_group.modified_date
  is 'Modified Date';
comment on column fs_fiadb.ref_damage_agent_group.modified_in_instance
  is 'Modified in Instance ';
alter table FS_FIADB.REF_DAMAGE_AGENT_GROUP add constraint DAG_PK primary key (CODE);