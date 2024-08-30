CREATE TABLE fs_fiadb.ref_citation
(
citation_nbr         INTEGER NOT NULL,
citation             VARCHAR(2000),
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6)
);
alter table FS_FIADB.REF_CITATION add constraint CIT_PK primary key (CITATION_NBR);