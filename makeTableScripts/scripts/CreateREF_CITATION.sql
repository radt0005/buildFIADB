CREATE TABLE fs_fiadb.ref_citation
(
citation_nbr         INTEGER NOT NULL,
citation             VARCHAR(2000),
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6),
citation_nbr         INTEGER NOT NULL,
citation             VARCHAR(2000) NOT NULL,
created_by           VARCHAR(30) NOT NULL,
created_date         TIMESTAMP(0) NOT NULL,
created_in_instance  VARCHAR(6) NOT NULL,
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6)
);
comment on column fs_fiadb.ref_citation.citation_nbr
  is 'Citation number';
comment on column fs_fiadb.ref_citation.citation
  is 'Citation';
comment on column fs_fiadb.ref_citation.created_by
  is 'Created by';
comment on column fs_fiadb.ref_citation.created_date
  is 'Created Date';
comment on column fs_fiadb.ref_citation.created_in_instance
  is 'Created in Instance';
comment on column fs_fiadb.ref_citation.modified_by
  is 'Modified by';
comment on column fs_fiadb.ref_citation.modified_date
  is 'Modified Date';
comment on column fs_fiadb.ref_citation.modified_in_instance
  is 'Modified in Instance';
comment on column fs_fiadb.ref_citation.citation_nbr
  is 'Citation number';
comment on column fs_fiadb.ref_citation.citation
  is 'Citation';
comment on column fs_fiadb.ref_citation.created_by
  is 'Created by';
comment on column fs_fiadb.ref_citation.created_date
  is 'Created Date';
comment on column fs_fiadb.ref_citation.created_in_instance
  is 'Created in Instance';
comment on column fs_fiadb.ref_citation.modified_by
  is 'Modified by';
comment on column fs_fiadb.ref_citation.modified_date
  is 'Modified Date';
comment on column fs_fiadb.ref_citation.modified_in_instance
  is 'Modified in Instance';
alter table FS_FIADB.REF_CITATION add constraint CIT_PK primary key (CITATION_NBR, CITATION_NBR, CITATION_NBR, CITATION_NBR, CITATION_NBR, CITATION_NBR, CITATION_NBR, CITATION_NBR);