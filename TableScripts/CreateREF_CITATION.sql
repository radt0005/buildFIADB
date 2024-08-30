CREATE TABLE fs_fiadb.ref_citation
(
citation_nbr  INTEGER NOT NULL,
citation      VARCHAR(2000),
created_date  TIMESTAMP(0),
modified_date TIMESTAMP(0)
);
alter table FS_FIADB.REF_CITATION add constraint CIT_PK primary key (CITATION_NBR);