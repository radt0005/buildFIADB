CREATE TABLE fs_fiadb.ref_forest_type_nimac
(
code         VARCHAR(5) NOT NULL,
meaning      VARCHAR(50) NOT NULL,
description  VARCHAR(2000) NOT NULL,
forest       VARCHAR(1) NOT NULL,
manual_start DECIMAL(3,1) NOT NULL,
manual_end   DECIMAL(3,1)
);
comment on column fs_fiadb.ref_forest_type_nimac.code
  is 'Forest Type Code';
comment on column fs_fiadb.ref_forest_type_nimac.meaning
  is 'Forest Type Name';
comment on column fs_fiadb.ref_forest_type_nimac.description
  is 'Description of the Forest Type';
comment on column fs_fiadb.ref_forest_type_nimac.forest
  is 'Y/N indicates if the type is a Forest Type (Y) or a Non-Forest Type (N)';
comment on column fs_fiadb.ref_forest_type_nimac.manual_start
  is 'Field Manual this code was first used in';
comment on column fs_fiadb.ref_forest_type_nimac.manual_end
  is 'Field Manual this code was last used in';
create index RFTN_PK on FS_FIADB.REF_FOREST_TYPE_NIMAC (CODE);