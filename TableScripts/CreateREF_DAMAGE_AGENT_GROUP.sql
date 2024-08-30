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
alter table FS_FIADB.REF_DAMAGE_AGENT_GROUP add constraint DAG_PK primary key (CODE);