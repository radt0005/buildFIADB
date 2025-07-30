CREATE TABLE fs_fiadb.ref_damage_agent
(
code                 INTEGER NOT NULL,
common_name          VARCHAR(80) NOT NULL,
scientific_name      VARCHAR(80),
threshold            VARCHAR(2000),
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6),
dag_code             INTEGER
);
comment on column fs_fiadb.ref_damage_agent.code
  is 'Tree damage agent code';
comment on column fs_fiadb.ref_damage_agent.common_name
  is 'The common name of the tree damage agent';
comment on column fs_fiadb.ref_damage_agent.scientific_name
  is 'The scientific name of the tree damage agent';
comment on column fs_fiadb.ref_damage_agent.threshold
  is 'The threshold required before recording the tree damage agent';
comment on column fs_fiadb.ref_damage_agent.created_by
  is 'Created by';
comment on column fs_fiadb.ref_damage_agent.created_date
  is 'Created Date ';
comment on column fs_fiadb.ref_damage_agent.created_in_instance
  is 'Created in Instance ';
comment on column fs_fiadb.ref_damage_agent.modified_by
  is 'Modified by ';
comment on column fs_fiadb.ref_damage_agent.modified_date
  is 'Modified Date';
comment on column fs_fiadb.ref_damage_agent.modified_in_instance
  is 'Modified in Instance ';
comment on column fs_fiadb.ref_damage_agent.dag_code
  is 'NA';
alter table FS_FIADB.REF_DAMAGE_AGENT add constraint DA_PK primary key (CODE);
alter table FS_FIADB.REF_DAMAGE_AGENT add constraint DA_DAG_FK foreign key (DAG_CODE) references FS_FIADB.REF_DAMAGE_AGENT_GROUP (CODE);