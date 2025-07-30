CREATE TABLE fs_fiadb.sitetree
(
cn                             VARCHAR(34) NOT NULL,
plt_cn                         VARCHAR(34) NOT NULL,
prev_sit_cn                    VARCHAR(34),
invyr                          INTEGER NOT NULL,
statecd                        INTEGER NOT NULL,
unitcd                         INTEGER NOT NULL,
countycd                       INTEGER NOT NULL,
plot                           INTEGER NOT NULL,
condid                         INTEGER NOT NULL,
tree                           INTEGER NOT NULL,
spcd                           DOUBLE PRECISION,
dia                            DECIMAL(5,2),
ht                             INTEGER,
agedia                         INTEGER,
spgrpcd                        INTEGER,
sitree                         INTEGER,
sibase                         INTEGER,
subp                           INTEGER,
azimuth                        INTEGER,
dist                           DECIMAL(4,1),
method                         INTEGER NOT NULL,
sitree_est                     INTEGER,
validcd                        INTEGER,
created_by                     VARCHAR(30),
created_date                   TIMESTAMP(0),
created_in_instance            VARCHAR(6),
modified_by                    VARCHAR(30),
modified_date                  TIMESTAMP(0),
modified_in_instance           VARCHAR(6),
cycle                          INTEGER,
subcycle                       INTEGER,
agechkcd_rmrs                  INTEGER,
age_determination_method_pnwrs INTEGER,
cclcd_rmrs                     INTEGER,
damage_agent_cd1_rmrs          INTEGER,
damage_agent_cd2_rmrs          INTEGER,
damage_agent_cd3_rmrs          INTEGER,
sibase_age_pnwrs               INTEGER,
sitetrcd_rmrs                  INTEGER,
site_age_tree_status_pnwrs     VARCHAR(1),
site_age_tree_type_pnwrs       INTEGER,
site_tree_method_pnwrs         VARCHAR(1),
sitree_equ_no_pnwrs            INTEGER,
treeclcd_rmrs                  INTEGER,
tree_act_rmrs                  INTEGER,
year_age_taken                 INTEGER,
sieqn_ref_cd                   VARCHAR(10),
sitree_fvs                     INTEGER,
sibase_fvs                     INTEGER,
sieqn_ref_cd_fvs               VARCHAR(10)
);
comment on column fs_fiadb.sitetree.cn
  is 'Unique index';
comment on column fs_fiadb.sitetree.plt_cn
  is 'Unique index';
comment on column fs_fiadb.sitetree.prev_sit_cn
  is 'Unique index';
comment on column fs_fiadb.sitetree.invyr
  is 'NA';
comment on column fs_fiadb.sitetree.statecd
  is 'State code';
comment on column fs_fiadb.sitetree.unitcd
  is 'Survey unit code';
comment on column fs_fiadb.sitetree.countycd
  is 'County code';
comment on column fs_fiadb.sitetree.plot
  is 'Plot number';
comment on column fs_fiadb.sitetree.condid
  is 'Condition number';
comment on column fs_fiadb.sitetree.tree
  is 'Tree number';
comment on column fs_fiadb.sitetree.spcd
  is 'Species';
comment on column fs_fiadb.sitetree.dia
  is 'Current diameter';
comment on column fs_fiadb.sitetree.ht
  is 'Height';
comment on column fs_fiadb.sitetree.agedia
  is 'Age at diameter height';
comment on column fs_fiadb.sitetree.spgrpcd
  is 'Species group code';
comment on column fs_fiadb.sitetree.sitree
  is 'Site index';
comment on column fs_fiadb.sitetree.sibase
  is 'Site index base age';
comment on column fs_fiadb.sitetree.subp
  is 'Subplot number';
comment on column fs_fiadb.sitetree.azimuth
  is 'Azimuth';
comment on column fs_fiadb.sitetree.dist
  is 'Horizontal distance';
comment on column fs_fiadb.sitetree.method
  is 'NA';
comment on column fs_fiadb.sitetree.sitree_est
  is 'NA';
comment on column fs_fiadb.sitetree.validcd
  is 'NA';
comment on column fs_fiadb.sitetree.created_by
  is 'Created by';
comment on column fs_fiadb.sitetree.created_date
  is 'Created date';
comment on column fs_fiadb.sitetree.created_in_instance
  is 'Created in instance';
comment on column fs_fiadb.sitetree.modified_by
  is 'Modified by';
comment on column fs_fiadb.sitetree.modified_date
  is 'Modified date';
comment on column fs_fiadb.sitetree.modified_in_instance
  is 'Modified in instance';
comment on column fs_fiadb.sitetree.cycle
  is 'Inventory cycle number';
comment on column fs_fiadb.sitetree.subcycle
  is 'Inventory subcycle number';
comment on column fs_fiadb.sitetree.agechkcd_rmrs
  is 'age check code';
comment on column fs_fiadb.sitetree.age_determination_method_pnwrs
  is 'code to record method by which age was determined';
comment on column fs_fiadb.sitetree.cclcd_rmrs
  is 'crown class code';
comment on column fs_fiadb.sitetree.damage_agent_cd1_rmrs
  is 'damage agent code 1';
comment on column fs_fiadb.sitetree.damage_agent_cd2_rmrs
  is 'damage agent code 2';
comment on column fs_fiadb.sitetree.damage_agent_cd3_rmrs
  is 'damage agent code 3';
comment on column fs_fiadb.sitetree.sibase_age_pnwrs
  is 'Site index equation base age, PNWRS';
comment on column fs_fiadb.sitetree.sitetrcd_rmrs
  is 'site tree code';
comment on column fs_fiadb.sitetree.site_age_tree_status_pnwrs
  is 'O for previous site/age trees, N for new trees, I for invalid';
comment on column fs_fiadb.sitetree.site_age_tree_type_pnwrs
  is 'enter the appropriate type of site/age tree being represented by this tree record';
comment on column fs_fiadb.sitetree.site_tree_method_pnwrs
  is 'K for kings method, P for primary (only if required)';
comment on column fs_fiadb.sitetree.sitree_equ_no_pnwrs
  is 'For further documentation see Research Note: PNW-RN-533, December 2002';
comment on column fs_fiadb.sitetree.treeclcd_rmrs
  is 'rmrs tree class code';
comment on column fs_fiadb.sitetree.tree_act_rmrs
  is 'actual tree number';
comment on column fs_fiadb.sitetree.year_age_taken
  is 'The year the tree was aged';
comment on column fs_fiadb.sitetree.sieqn_ref_cd
  is 'Site index equation reference code used by the Forest Vegetation Simulator';
comment on column fs_fiadb.sitetree.sitree_fvs
  is 'Site index for the tree, for the Forest Vegetation Simulator';
comment on column fs_fiadb.sitetree.sibase_fvs
  is 'Site index base age used by the Forest Vegetation Simulator';
comment on column fs_fiadb.sitetree.sieqn_ref_cd_fvs
  is 'NA';
create index SIT_NAT_I on FS_FIADB.SITETREE (STATECD, INVYR, UNITCD, COUNTYCD, PLOT, CONDID, TREE);
create index SIT_PLT_FK_I on FS_FIADB.SITETREE (PLT_CN);
create index SIT_CND_FK_I on FS_FIADB.SITETREE (PLT_CN, CONDID);
alter table FS_FIADB.SITETREE add constraint SIT_PK primary key (CN);
alter table FS_FIADB.SITETREE add constraint SIT_UK unique (PLT_CN, CONDID, TREE);
alter table FS_FIADB.SITETREE add constraint SIT_CND_FK foreign key (CONDID, PLT_CN) references FS_FIADB.COND (CONDID, PLT_CN);
alter table FS_FIADB.SITETREE add constraint SIT_PLT_FK foreign key (PLT_CN) references FS_FIADB.PLOT (CN);