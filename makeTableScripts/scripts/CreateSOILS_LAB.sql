CREATE TABLE fs_fiadb.soils_lab
(
cn                            VARCHAR(34) NOT NULL,
plt_cn                        VARCHAR(34) NOT NULL,
invyr                         INTEGER NOT NULL,
statecd                       INTEGER NOT NULL,
countycd                      INTEGER NOT NULL,
plot                          INTEGER NOT NULL,
smplnnbr                      INTEGER NOT NULL,
vstnbr                        INTEGER,
layer_type                    VARCHAR(10),
sampler_type                  VARCHAR(2),
qastatcd                      INTEGER,
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
exchng_na                     DECIMAL(9,3),
exchng_k                      DECIMAL(9,3),
exchng_mg                     DECIMAL(9,3),
exchng_ca                     DECIMAL(9,3),
exchng_al                     DECIMAL(9,3),
ecec                          DECIMAL(9,3),
exchng_mn                     DECIMAL(9,3),
exchng_fe                     DECIMAL(9,3),
exchng_ni                     DECIMAL(9,3),
exchng_cu                     DECIMAL(9,3),
exchng_zn                     DECIMAL(9,3),
exchng_cd                     DECIMAL(9,3),
exchng_pb                     DECIMAL(9,3),
exchng_s                      DECIMAL(9,3),
bray1_p                       DECIMAL(9,3),
olsen_p                       DECIMAL(9,3),
measyear                      INTEGER NOT NULL,
modified_by                   VARCHAR(30),
modified_date                 TIMESTAMP(0),
modified_in_instance          VARCHAR(6),
created_by                    VARCHAR(30),
created_date                  TIMESTAMP(0),
created_in_instance           VARCHAR(6)
);
comment on column fs_fiadb.soils_lab.cn
  is 'NA';
comment on column fs_fiadb.soils_lab.plt_cn
  is 'NA';
comment on column fs_fiadb.soils_lab.invyr
  is 'NA';
comment on column fs_fiadb.soils_lab.statecd
  is 'NA';
comment on column fs_fiadb.soils_lab.countycd
  is 'NA';
comment on column fs_fiadb.soils_lab.plot
  is 'NA';
comment on column fs_fiadb.soils_lab.smplnnbr
  is 'NA';
comment on column fs_fiadb.soils_lab.vstnbr
  is 'NA';
comment on column fs_fiadb.soils_lab.layer_type
  is 'NA';
comment on column fs_fiadb.soils_lab.sampler_type
  is 'NA';
comment on column fs_fiadb.soils_lab.qastatcd
  is 'NA';
comment on column fs_fiadb.soils_lab.sample_date
  is 'NA';
comment on column fs_fiadb.soils_lab.lab_id
  is 'NA';
comment on column fs_fiadb.soils_lab.sample_id
  is 'NA';
comment on column fs_fiadb.soils_lab.field_moist_soil_wt
  is 'NA';
comment on column fs_fiadb.soils_lab.air_dry_soil_wt
  is 'NA';
comment on column fs_fiadb.soils_lab.oven_dry_soil_wt
  is 'NA';
comment on column fs_fiadb.soils_lab.field_moist_water_content_pct
  is 'NA';
comment on column fs_fiadb.soils_lab.residual_water_content_pct
  is 'NA';
comment on column fs_fiadb.soils_lab.total_water_content_pct
  is 'NA';
comment on column fs_fiadb.soils_lab.bulk_density
  is 'NA';
comment on column fs_fiadb.soils_lab.coarse_fraction_pct
  is 'NA';
comment on column fs_fiadb.soils_lab.c_org_pct
  is 'NA';
comment on column fs_fiadb.soils_lab.c_inorg_pct
  is 'NA';
comment on column fs_fiadb.soils_lab.c_total_pct
  is 'NA';
comment on column fs_fiadb.soils_lab.n_total_pct
  is 'NA';
comment on column fs_fiadb.soils_lab.ph_h2o
  is 'NA';
comment on column fs_fiadb.soils_lab.ph_cacl2
  is 'NA';
comment on column fs_fiadb.soils_lab.exchng_na
  is 'NA';
comment on column fs_fiadb.soils_lab.exchng_k
  is 'NA';
comment on column fs_fiadb.soils_lab.exchng_mg
  is 'NA';
comment on column fs_fiadb.soils_lab.exchng_ca
  is 'NA';
comment on column fs_fiadb.soils_lab.exchng_al
  is 'NA';
comment on column fs_fiadb.soils_lab.ecec
  is 'NA';
comment on column fs_fiadb.soils_lab.exchng_mn
  is 'NA';
comment on column fs_fiadb.soils_lab.exchng_fe
  is 'NA';
comment on column fs_fiadb.soils_lab.exchng_ni
  is 'NA';
comment on column fs_fiadb.soils_lab.exchng_cu
  is 'NA';
comment on column fs_fiadb.soils_lab.exchng_zn
  is 'NA';
comment on column fs_fiadb.soils_lab.exchng_cd
  is 'NA';
comment on column fs_fiadb.soils_lab.exchng_pb
  is 'NA';
comment on column fs_fiadb.soils_lab.exchng_s
  is 'NA';
comment on column fs_fiadb.soils_lab.bray1_p
  is 'NA';
comment on column fs_fiadb.soils_lab.olsen_p
  is 'NA';
comment on column fs_fiadb.soils_lab.measyear
  is 'NA';
comment on column fs_fiadb.soils_lab.modified_by
  is 'NA';
comment on column fs_fiadb.soils_lab.modified_date
  is 'NA';
comment on column fs_fiadb.soils_lab.modified_in_instance
  is 'NA';
comment on column fs_fiadb.soils_lab.created_by
  is 'NA';
comment on column fs_fiadb.soils_lab.created_date
  is 'NA';
comment on column fs_fiadb.soils_lab.created_in_instance
  is 'NA';
create index SLB_NAT_I on FS_FIADB.SOILS_LAB (STATECD, INVYR, COUNTYCD, PLOT, SMPLNNBR, LAYER_TYPE);
alter table FS_FIADB.SOILS_LAB add constraint SLB_PK primary key (CN);
alter table FS_FIADB.SOILS_LAB add constraint SLB_UK unique (PLT_CN, SMPLNNBR, LAYER_TYPE);