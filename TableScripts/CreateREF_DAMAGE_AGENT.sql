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
alter table FS_FIADB.REF_DAMAGE_AGENT add constraint DA_PK primary key (CODE);
alter table FS_FIADB.REF_DAMAGE_AGENT add constraint DA_DAG_FK foreign key (DAG_CODE) references FS_FIADB.REF_DAMAGE_AGENT_GROUP (CODE);