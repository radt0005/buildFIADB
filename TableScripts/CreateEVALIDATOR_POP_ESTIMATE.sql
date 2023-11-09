-- Create table
create table FS_FIADB.EVALIDATOR_POP_ESTIMATE
(
  attribute_nbr        DOUBLE PRECISION not null,
  attribute_descr      VARCHAR(255),
  vba_sumfromwhere     VARCHAR(4000),
  pea_surrogate        VARCHAR(10),
  condtreeseed         VARCHAR(50),
  sort_col             DOUBLE PRECISION,
  eval_typ             VARCHAR(15),
  estimate_metadata    TEXT,
  created_by           VARCHAR(30),
  created_date         TIMESTAMP(0),
  created_in_instance  VARCHAR(6),
  modified_by          VARCHAR(30),
  modified_date        TIMESTAMP(0),
  modified_in_instance VARCHAR(6),
  land_basis           VARCHAR(32),
  estimate_grp_descr   VARCHAR(255),
  estimate             VARCHAR(20),
  estn_type            VARCHAR(10),
  estn_tree_portion    VARCHAR(20),
  estn_attribute       VARCHAR(125),
  estn_units_attribute VARCHAR(6),
  estn_units_display   VARCHAR(50),
  estimate_variant     VARCHAR(20),
  growth_acct          VARCHAR(1),
  active               VARCHAR(1),
  notes                VARCHAR(2000));
-- Add comments to the table 
comment on table FS_FIADB.EVALIDATOR_POP_ESTIMATE
  is '6.1';
-- Add comments to the columns 
comment on column FS_FIADB.EVALIDATOR_POP_ESTIMATE.attribute_nbr
  is 'Arbitrary unique number';
comment on column FS_FIADB.EVALIDATOR_POP_ESTIMATE.attribute_descr
  is 'Estimation attribute e.g. Area of timberland';
comment on column FS_FIADB.EVALIDATOR_POP_ESTIMATE.vba_sumfromwhere
  is 'SQL segment used by EVALIDator program';
comment on column FS_FIADB.EVALIDATOR_POP_ESTIMATE.pea_surrogate
  is 'POP_EVAL_ATTRIBUTE surrogate. The EVALIDator program uses the POP_EVAL_ATTRIBUTE table to restrict the user to running retrievals that have been approved by the regional FIA unit. When testing a new attribute the PEA_SURROGATE field can be used to overide this restriction.';
comment on column FS_FIADB.EVALIDATOR_POP_ESTIMATE.condtreeseed
  is 'Identifies, for the EVALIDator program, whether data from the COND/TREE/SEED/PTREE (previous tree) will be required to generate an estimate';
comment on column FS_FIADB.EVALIDATOR_POP_ESTIMATE.sort_col
  is 'Sort order for the Attribute drop down list within the EVALIDator program';
comment on column FS_FIADB.EVALIDATOR_POP_ESTIMATE.eval_typ
  is 'Evaluation type - used by JAVA program PopEstFIADB4';
comment on column FS_FIADB.EVALIDATOR_POP_ESTIMATE.estimate_metadata
  is 'Metadata description of the estimate';
comment on column FS_FIADB.EVALIDATOR_POP_ESTIMATE.created_by
  is 'Created by';
comment on column FS_FIADB.EVALIDATOR_POP_ESTIMATE.created_date
  is 'Created date';
comment on column FS_FIADB.EVALIDATOR_POP_ESTIMATE.created_in_instance
  is 'Created in instance';
comment on column FS_FIADB.EVALIDATOR_POP_ESTIMATE.modified_by
  is 'Modified by';
comment on column FS_FIADB.EVALIDATOR_POP_ESTIMATE.modified_date
  is 'Modified date';
comment on column FS_FIADB.EVALIDATOR_POP_ESTIMATE.modified_in_instance
  is 'Modified in instance';
comment on column FS_FIADB.EVALIDATOR_POP_ESTIMATE.land_basis
  is 'Land basis for estimate. Timberland or Forest land';
comment on column FS_FIADB.EVALIDATOR_POP_ESTIMATE.estimate_grp_descr
  is 'Estimation group description';
comment on column FS_FIADB.EVALIDATOR_POP_ESTIMATE.estimate
  is 'Base attribute that is being estimated.';
comment on column FS_FIADB.EVALIDATOR_POP_ESTIMATE.estn_type
  is 'Estimation type of the tree. GS, AL, SL for growing stock, all live, sawlog';
comment on column FS_FIADB.EVALIDATOR_POP_ESTIMATE.estn_tree_portion
  is 'If tree estimate, the portion of the tree being estimate for the attribute.';
comment on column FS_FIADB.EVALIDATOR_POP_ESTIMATE.estn_attribute
  is 'Column name of the attribute that is being used to derive the attribute. Some estimates are derived from more than one attribute';
comment on column FS_FIADB.EVALIDATOR_POP_ESTIMATE.estn_units_attribute
  is 'Estimation units stored in the attribute column. CF, BF, LBS for cubic feet, board feet, and pounds';
comment on column FS_FIADB.EVALIDATOR_POP_ESTIMATE.estn_units_display
  is 'Units displayed by EVALIDator for the estimate (cubic feet, board feet, short tons)';
comment on column FS_FIADB.EVALIDATOR_POP_ESTIMATE.estimate_variant
  is 'Indicates the type of attribute being estimated (regional dry biomass or CRM biomass or regional volume or national volume, etc.)';
comment on column FS_FIADB.EVALIDATOR_POP_ESTIMATE.growth_acct
  is 'Y if attribute record can be used for growth accounting, N if it cannot be used for growth accounting, null if eval_typ for record is not EXPGROW';
comment on column FS_FIADB.EVALIDATOR_POP_ESTIMATE.active
  is 'Y/N to indicate if attribute record is active or retired';
comment on column FS_FIADB.EVALIDATOR_POP_ESTIMATE.notes
  is 'Notes';
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.EVALIDATOR_POP_ESTIMATE
  add constraint EPE6_PK primary key (ATTRIBUTE_NBR);
alter table FS_FIADB.EVALIDATOR_POP_ESTIMATE
  add constraint EPE6_FK foreign key (ESTIMATE_GRP_DESCR)
  references FS_FIADB.EVALIDATOR_ESTIMATE_GRP (ESTIMATE_GRP_DESCR);
