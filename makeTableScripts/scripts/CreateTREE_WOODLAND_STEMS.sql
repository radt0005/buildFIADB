CREATE TABLE fs_fiadb.tree_woodland_stems
(
cn                   VARCHAR(34) NOT NULL,
plt_cn               VARCHAR(34) NOT NULL,
invyr                INTEGER NOT NULL,
statecd              INTEGER NOT NULL,
unitcd               INTEGER NOT NULL,
countycd             INTEGER NOT NULL,
plot                 INTEGER NOT NULL,
subp                 INTEGER NOT NULL,
tree                 INTEGER,
tre_cn               VARCHAR(34) NOT NULL,
dia                  DECIMAL(5,2),
statuscd             INTEGER,
stem_nbr             INTEGER,
cycle                INTEGER,
subcycle             INTEGER,
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6)
);
comment on column fs_fiadb.tree_woodland_stems.cn
  is 'Unique index';
comment on column fs_fiadb.tree_woodland_stems.plt_cn
  is 'Unique index';
comment on column fs_fiadb.tree_woodland_stems.invyr
  is 'Inventory year';
comment on column fs_fiadb.tree_woodland_stems.statecd
  is 'State code';
comment on column fs_fiadb.tree_woodland_stems.unitcd
  is 'Survey unit code';
comment on column fs_fiadb.tree_woodland_stems.countycd
  is 'County code';
comment on column fs_fiadb.tree_woodland_stems.plot
  is 'Plot number';
comment on column fs_fiadb.tree_woodland_stems.subp
  is 'subplot number';
comment on column fs_fiadb.tree_woodland_stems.tree
  is 'tree number';
comment on column fs_fiadb.tree_woodland_stems.tre_cn
  is 'sequence number (foreign key back to tree)';
comment on column fs_fiadb.tree_woodland_stems.dia
  is 'woodland stem diameter';
comment on column fs_fiadb.tree_woodland_stems.statuscd
  is 'woodland stem status code 1=live 2=dead';
comment on column fs_fiadb.tree_woodland_stems.stem_nbr
  is 'stem sequence number';
comment on column fs_fiadb.tree_woodland_stems.cycle
  is 'Inventory cycle number';
comment on column fs_fiadb.tree_woodland_stems.subcycle
  is 'Inventory subcycle number';
comment on column fs_fiadb.tree_woodland_stems.created_by
  is 'Created by';
comment on column fs_fiadb.tree_woodland_stems.created_date
  is 'Created date';
comment on column fs_fiadb.tree_woodland_stems.created_in_instance
  is 'Created in instance';
comment on column fs_fiadb.tree_woodland_stems.modified_by
  is 'Modified by';
comment on column fs_fiadb.tree_woodland_stems.modified_date
  is 'Modified date';
comment on column fs_fiadb.tree_woodland_stems.modified_in_instance
  is 'Modified in instance';
create index WOODS_PLT_FK_I on FS_FIADB.TREE_WOODLAND_STEMS (PLT_CN);
alter table FS_FIADB.TREE_WOODLAND_STEMS add constraint WOODS_PK primary key (CN);
alter table FS_FIADB.TREE_WOODLAND_STEMS add constraint WOODS_UK2 unique (PLT_CN, SUBP, TREE, STEM_NBR);
alter table FS_FIADB.TREE_WOODLAND_STEMS add constraint WOODS_UK unique (TRE_CN, STEM_NBR);
alter table FS_FIADB.TREE_WOODLAND_STEMS add constraint WOODS_TRE_FK foreign key (TRE_CN) references FS_FIADB.TREE (CN);
alter table FS_FIADB.TREE_WOODLAND_STEMS add constraint WOODS_PLT_FK foreign key (PLT_CN) references FS_FIADB.PLOT (CN);