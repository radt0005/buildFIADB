-- Create table
create table FS_FIADB.TREE_WOODLAND_STEMS
(
  cn                   VARCHAR(34) not null,
  plt_cn               VARCHAR(34) not null,
  invyr                SMALLINT not null,
  statecd              SMALLINT not null,
  unitcd               SMALLINT not null,
  countycd             SMALLINT not null,
  plot                 DOUBLE PRECISION not null,
  subp                 DOUBLE PRECISION not null,
  tree                 BIGINT,
  tre_cn               VARCHAR(34) not null,
  dia                  DECIMAL(5,2),
  statuscd             SMALLINT,
  stem_nbr             SMALLINT,
  cycle                SMALLINT,
  subcycle             SMALLINT,
  created_by           VARCHAR(30),
  created_date         TIMESTAMP(0),
  created_in_instance  VARCHAR(6),
  modified_by          VARCHAR(30),
  modified_date        TIMESTAMP(0),
  modified_in_instance VARCHAR(6)
);
-- Add comments to the table 
comment on table FS_FIADB.TREE_WOODLAND_STEMS
  is '6.0';
-- Add comments to the columns 
comment on column FS_FIADB.TREE_WOODLAND_STEMS.cn
  is 'Unique index';
comment on column FS_FIADB.TREE_WOODLAND_STEMS.plt_cn
  is 'Unique index';
comment on column FS_FIADB.TREE_WOODLAND_STEMS.invyr
  is 'Inventory year';
comment on column FS_FIADB.TREE_WOODLAND_STEMS.statecd
  is 'State code';
comment on column FS_FIADB.TREE_WOODLAND_STEMS.unitcd
  is 'Survey unit code';
comment on column FS_FIADB.TREE_WOODLAND_STEMS.countycd
  is 'County code';
comment on column FS_FIADB.TREE_WOODLAND_STEMS.plot
  is 'Plot number';
comment on column FS_FIADB.TREE_WOODLAND_STEMS.subp
  is 'subplot number';
comment on column FS_FIADB.TREE_WOODLAND_STEMS.tree
  is 'tree number';
comment on column FS_FIADB.TREE_WOODLAND_STEMS.tre_cn
  is 'sequence number (foreign key back to tree)';
comment on column FS_FIADB.TREE_WOODLAND_STEMS.dia
  is 'woodland stem diameter';
comment on column FS_FIADB.TREE_WOODLAND_STEMS.statuscd
  is 'woodland stem status code 1=live 2=dead';
comment on column FS_FIADB.TREE_WOODLAND_STEMS.stem_nbr
  is 'stem sequence number';
comment on column FS_FIADB.TREE_WOODLAND_STEMS.cycle
  is 'Inventory cycle number';
comment on column FS_FIADB.TREE_WOODLAND_STEMS.subcycle
  is 'Inventory subcycle number';
comment on column FS_FIADB.TREE_WOODLAND_STEMS.created_by
  is 'Created by';
comment on column FS_FIADB.TREE_WOODLAND_STEMS.created_date
  is 'Created date';
comment on column FS_FIADB.TREE_WOODLAND_STEMS.created_in_instance
  is 'Created in instance';
comment on column FS_FIADB.TREE_WOODLAND_STEMS.modified_by
  is 'Modified by';
comment on column FS_FIADB.TREE_WOODLAND_STEMS.modified_date
  is 'Modified date';
comment on column FS_FIADB.TREE_WOODLAND_STEMS.modified_in_instance
  is 'Modified in instance';
-- Create/Recreate indexes 
create index WOODS_PLT_FK_I on FS_FIADB.TREE_WOODLAND_STEMS (PLT_CN);
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.TREE_WOODLAND_STEMS
  add constraint WOODS_PK primary key (CN);
alter table FS_FIADB.TREE_WOODLAND_STEMS
  add constraint WOODS_UK unique (TRE_CN, STEM_NBR);
alter table FS_FIADB.TREE_WOODLAND_STEMS
  add constraint WOODS_UK2 unique (PLT_CN, SUBP, TREE, STEM_NBR);
alter table FS_FIADB.TREE_WOODLAND_STEMS
  add constraint WOODS_PLT_FK foreign key (PLT_CN)
  references FS_FIADB.PLOT (CN);
alter table FS_FIADB.TREE_WOODLAND_STEMS
  add constraint WOODS_TRE_FK foreign key (TRE_CN)
  references FS_FIADB.TREE (CN);
