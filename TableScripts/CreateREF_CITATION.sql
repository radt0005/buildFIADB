CREATE TABLE fs_fiadb.ref_citation
(
citation_nbr  INTEGER NOT NULL,
citation      VARCHAR(2000) NOT NULL,
created_date  TIMESTAMP(0) NOT NULL,
modified_date TIMESTAMP(0)
);
comment on column fs_fiadb.ref_citation.citation_nbr
  is 'Citation number';
comment on column fs_fiadb.ref_citation.citation
  is 'Citation';
comment on column fs_fiadb.ref_citation.created_date
  is 'Created Date';
comment on column fs_fiadb.ref_citation.modified_date
  is 'Modified Date';
alter table FS_FIADB.REF_CITATION add constraint CIT_PK primary key (CITATION_NBR);