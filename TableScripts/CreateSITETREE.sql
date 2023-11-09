-- Create table
create table FS_FIADB.SITETREE
(
  cn                             VARCHAR(34) not null,
  plt_cn                         VARCHAR(34) not null,
  prev_sit_cn                    VARCHAR(34),
  invyr                          SMALLINT not null,
  statecd                        SMALLINT not null,
  unitcd                         SMALLINT not null,
  countycd                       SMALLINT not null,
  plot                           INT not null,
  condid                         SMALLINT not null,
  tree                           BIGINT not null,
  spcd                           DOUBLE PRECISION,
  dia                            DECIMAL(5,2),
  ht                             SMALLINT,
  agedia                         SMALLINT,
  spgrpcd                        SMALLINT,
  sitree                         SMALLINT,
  sibase                         SMALLINT,
  subp                           SMALLINT,
  azimuth                        SMALLINT,
  dist                           DECIMAL(4,1),
  method                         SMALLINT not null,
  sitree_est                     SMALLINT,
  validcd                        SMALLINT,
  created_by                     VARCHAR(30),
  created_date                   TIMESTAMP(0),
  created_in_instance            VARCHAR(6),
  modified_by                    VARCHAR(30),
  modified_date                  TIMESTAMP(0),
  modified_in_instance           VARCHAR(6),
  cycle                          SMALLINT,
  subcycle                       SMALLINT,
  agechkcd_rmrs                  SMALLINT,
  age_determination_method_pnwrs SMALLINT,
  cclcd_rmrs                     SMALLINT,
  damage_agent_cd1_rmrs          INT,
  damage_agent_cd2_rmrs          INT,
  damage_agent_cd3_rmrs          INT,
  sibase_age_pnwrs               SMALLINT,
  sitetrcd_rmrs                  SMALLINT,
  site_age_tree_status_pnwrs     VARCHAR(1),
  site_age_tree_type_pnwrs       SMALLINT,
  site_tree_method_pnwrs         VARCHAR(1),
  sitree_equ_no_pnwrs            SMALLINT,
  treeclcd_rmrs                  SMALLINT,
  tree_act_rmrs                  SMALLINT,
  year_age_taken                 SMALLINT,
  sieqn_ref_cd                   VARCHAR(10),
  sitree_fvs                     SMALLINT,
  sibase_fvs                     SMALLINT,
  sieqn_ref_cd_fvs               VARCHAR(10)
);
-- Add comments to the table 
comment on table FS_FIADB.SITETREE
  is '6.0';
-- Add comments to the columns 
comment on column FS_FIADB.SITETREE.cn
  is 'Unique index';
comment on column FS_FIADB.SITETREE.plt_cn
  is 'Unique index';
comment on column FS_FIADB.SITETREE.prev_sit_cn
  is 'Unique index';
comment on column FS_FIADB.SITETREE.statecd
  is 'State code';
comment on column FS_FIADB.SITETREE.unitcd
  is 'Survey unit code';
comment on column FS_FIADB.SITETREE.countycd
  is 'County code';
comment on column FS_FIADB.SITETREE.plot
  is 'Plot number';
comment on column FS_FIADB.SITETREE.condid
  is 'Condition number';
comment on column FS_FIADB.SITETREE.tree
  is 'Tree number';
comment on column FS_FIADB.SITETREE.spcd
  is 'Species';
comment on column FS_FIADB.SITETREE.dia
  is 'Current diameter';
comment on column FS_FIADB.SITETREE.ht
  is 'Height';
comment on column FS_FIADB.SITETREE.agedia
  is 'Age at diameter height';
comment on column FS_FIADB.SITETREE.spgrpcd
  is 'Species group code';
comment on column FS_FIADB.SITETREE.sitree
  is 'Site index';
comment on column FS_FIADB.SITETREE.sibase
  is 'Site index base age';
comment on column FS_FIADB.SITETREE.subp
  is 'Subplot number';
comment on column FS_FIADB.SITETREE.azimuth
  is 'Azimuth';
comment on column FS_FIADB.SITETREE.dist
  is 'Horizontal distance';
comment on column FS_FIADB.SITETREE.created_by
  is 'Created by';
comment on column FS_FIADB.SITETREE.created_date
  is 'Created date';
comment on column FS_FIADB.SITETREE.created_in_instance
  is 'Created in instance';
comment on column FS_FIADB.SITETREE.modified_by
  is 'Modified by';
comment on column FS_FIADB.SITETREE.modified_date
  is 'Modified date';
comment on column FS_FIADB.SITETREE.modified_in_instance
  is 'Modified in instance';
comment on column FS_FIADB.SITETREE.cycle
  is 'Inventory cycle number';
comment on column FS_FIADB.SITETREE.subcycle
  is 'Inventory subcycle number';
comment on column FS_FIADB.SITETREE.agechkcd_rmrs
  is 'age check code';
comment on column FS_FIADB.SITETREE.age_determination_method_pnwrs
  is 'code to record method by which age was determined';
comment on column FS_FIADB.SITETREE.cclcd_rmrs
  is 'crown class code';
comment on column FS_FIADB.SITETREE.damage_agent_cd1_rmrs
  is 'damage agent code 1';
comment on column FS_FIADB.SITETREE.damage_agent_cd2_rmrs
  is 'damage agent code 2';
comment on column FS_FIADB.SITETREE.damage_agent_cd3_rmrs
  is 'damage agent code 3';
comment on column FS_FIADB.SITETREE.sibase_age_pnwrs
  is 'Site index equation base age, PNWRS';
comment on column FS_FIADB.SITETREE.sitetrcd_rmrs
  is 'site tree code';
comment on column FS_FIADB.SITETREE.site_age_tree_status_pnwrs
  is 'O for previous site/age trees, N for new trees, I for invalid';
comment on column FS_FIADB.SITETREE.site_age_tree_type_pnwrs
  is 'enter the appropriate type of site/age tree being represented by this tree record';
comment on column FS_FIADB.SITETREE.site_tree_method_pnwrs
  is 'K for kings method, P for primary (only if required)';
comment on column FS_FIADB.SITETREE.sitree_equ_no_pnwrs
  is 'For further documentation see Research Note: PNW-RN-533, December 2002';
comment on column FS_FIADB.SITETREE.treeclcd_rmrs
  is 'rmrs tree class code';
comment on column FS_FIADB.SITETREE.tree_act_rmrs
  is 'actual tree number';
comment on column FS_FIADB.SITETREE.year_age_taken
  is 'The year the tree was aged';
-- Create/Recreate indexes 
create index SIT_CND_FK_I on FS_FIADB.SITETREE (PLT_CN, CONDID);
create index SIT_NAT_I on FS_FIADB.SITETREE (STATECD, INVYR, UNITCD, COUNTYCD, PLOT, CONDID, TREE);
create index SIT_PLT_FK_I on FS_FIADB.SITETREE (PLT_CN);
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.SITETREE
  add constraint SIT_PK primary key (CN);
alter table FS_FIADB.SITETREE
  add constraint SIT_UK unique (PLT_CN, CONDID, TREE);
alter table FS_FIADB.SITETREE
  add constraint SIT_CND_FK foreign key (PLT_CN, CONDID)
  references FS_FIADB.COND (PLT_CN, CONDID);
alter table FS_FIADB.SITETREE
  add constraint SIT_PLT_FK foreign key (PLT_CN)
  references FS_FIADB.PLOT (CN);