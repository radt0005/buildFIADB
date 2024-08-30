CREATE TABLE fs_fiadb.tree_woodland_stems
(
cn            VARCHAR(34) NOT NULL,
plt_cn        VARCHAR(34) NOT NULL,
invyr         INTEGER NOT NULL,
statecd       INTEGER NOT NULL,
unitcd        INTEGER NOT NULL,
countycd      INTEGER NOT NULL,
plot          INTEGER NOT NULL,
subp          INTEGER NOT NULL,
tree          INTEGER,
tre_cn        VARCHAR(34) NOT NULL,
dia           DECIMAL(5,2),
statuscd      INTEGER,
stem_nbr      INTEGER,
cycle         INTEGER,
subcycle      INTEGER,
created_date  TIMESTAMP(0),
modified_date TIMESTAMP(0)
);
create index WOODS_PLT_FK_I on FS_FIADB.TREE_WOODLAND_STEMS (PLT_CN);
alter table FS_FIADB.TREE_WOODLAND_STEMS add constraint WOODS_PK primary key (CN);
alter table FS_FIADB.TREE_WOODLAND_STEMS add constraint WOODS_UK2 unique (PLT_CN, SUBP, TREE, STEM_NBR);
alter table FS_FIADB.TREE_WOODLAND_STEMS add constraint WOODS_UK unique (TRE_CN, STEM_NBR);
alter table FS_FIADB.TREE_WOODLAND_STEMS add constraint WOODS_TRE_FK foreign key (TRE_CN) references FS_FIADB.TREE (CN);
alter table FS_FIADB.TREE_WOODLAND_STEMS add constraint WOODS_PLT_FK foreign key (PLT_CN) references FS_FIADB.PLOT (CN);