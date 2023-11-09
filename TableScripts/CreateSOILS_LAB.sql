-- Create table
create table FS_FIADB.SOILS_LAB
(
  cn                            VARCHAR(34) not null,
  plt_cn                        VARCHAR(34) not null,
  invyr                         SMALLINT not null,
  statecd                       SMALLINT not null,
  countycd                      SMALLINT not null,
  plot                          INT not null,
  smplnnbr                      SMALLINT not null,
  vstnbr                        SMALLINT,
  layer_type                    VARCHAR(10),
  sampler_type                  VARCHAR(2),
  qastatcd                      SMALLINT,
  sample_date                   TIMESTAMP(0),
  lab_id                        VARCHAR(10),
  sample_id                     VARCHAR(12),
  field_moist_soil_wt           DECIMAL(7,2),
  air_dry_soil_wt               DECIMAL(7,2),
  oven_dry_soil_wt              DECIMAL(7,2),
  field_moist_water_content_pct DECIMAL(6,2),
  residual_water_content_pct    DECIMAL(6,2),
  total_water_content_pct       DECIMAL(6,2),
  bulk_density                  DECIMAL(7,3),
  coarse_fraction_pct           DECIMAL(7,3),
  c_org_pct                     DECIMAL(7,3),
  c_inorg_pct                   DECIMAL(7,3),
  c_total_pct                   DECIMAL(7,3),
  n_total_pct                   DECIMAL(7,3),
  ph_h2o                        DECIMAL(7,3),
  ph_cacl2                      DECIMAL(7,3),
  exchng_na                     DECIMAL(8,3),
  exchng_k                      DECIMAL(7,3),
  exchng_mg                     DECIMAL(8,3),
  exchng_ca                     DECIMAL(8,3),
  exchng_al                     DECIMAL(7,3),
  ecec                          DECIMAL(7,3),
  exchng_mn                     DECIMAL(7,3),
  exchng_fe                     DECIMAL(7,3),
  exchng_ni                     DECIMAL(7,3),
  exchng_cu                     DECIMAL(7,3),
  exchng_zn                     DECIMAL(7,3),
  exchng_cd                     DECIMAL(7,3),
  exchng_pb                     DECIMAL(7,3),
  exchng_s                      DECIMAL(8,3),
  bray1_p                       DECIMAL(7,3),
  olsen_p                       DECIMAL(7,3),
  measyear                      SMALLINT not null,
  modified_by                   VARCHAR(30),
  modified_date                 TIMESTAMP(0),
  modified_in_instance          VARCHAR(6),
  created_by                    VARCHAR(30),
  created_date                  TIMESTAMP(0),
  created_in_instance           VARCHAR(6)
);
-- Add comments to the table 
comment on table FS_FIADB.SOILS_LAB
  is '6.0';
-- Create/Recreate indexes 
create index SLB_NAT_I on FS_FIADB.SOILS_LAB (STATECD, INVYR, COUNTYCD, PLOT, SMPLNNBR, LAYER_TYPE);
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.SOILS_LAB
  add constraint SLB_PK primary key (CN);
alter table FS_FIADB.SOILS_LAB
  add constraint SLB_UK unique (PLT_CN, SMPLNNBR, LAYER_TYPE);