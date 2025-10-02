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
modified_date                 TIMESTAMP(0),
created_date                  TIMESTAMP(0)
);
comment on column fs_fiadb.soils_lab.cn
  is 'Sequence number (surrogate primary key';
comment on column fs_fiadb.soils_lab.plt_cn
  is 'Foreign key to Plot table CN';
comment on column fs_fiadb.soils_lab.invyr
  is 'Annual Inventory Year';
comment on column fs_fiadb.soils_lab.statecd
  is 'State Code ';
comment on column fs_fiadb.soils_lab.countycd
  is 'County Code ';
comment on column fs_fiadb.soils_lab.plot
  is 'P2 Plot Number';
comment on column fs_fiadb.soils_lab.smplnnbr
  is 'Sample line number. The number corresponding to the subplot where the sample was collected. Code 9 indicates that the exact subplot where the sample was collected is unknown.';
comment on column fs_fiadb.soils_lab.vstnbr
  is 'Visit number. The number of the soil sampling location at which the soil sample was collected.';
comment on column fs_fiadb.soils_lab.layer_type
  is 'Layer Type. Indicates the soil layer type';
comment on column fs_fiadb.soils_lab.sampler_type
  is 'Sampler type. Indicates type of soil sampler used.';
comment on column fs_fiadb.soils_lab.qastatcd
  is 'Quality assurance status';
comment on column fs_fiadb.soils_lab.sample_date
  is 'Sample date';
comment on column fs_fiadb.soils_lab.lab_id
  is 'Laboratory identification. Indicates the laboratory where the analyses were done.';
comment on column fs_fiadb.soils_lab.sample_id
  is 'Sample identification. Internal lab sample identification number used to identify samples, match to plot identifier data, and track samples.';
comment on column fs_fiadb.soils_lab.field_moist_soil_wt
  is 'Field moist soil weight. The weight of the soil sample as received from the field in g.';
comment on column fs_fiadb.soils_lab.air_dry_soil_wt
  is 'Air-dry soil weight. The weight of the soil sample after air-drying at ambient temperature in g.';
comment on column fs_fiadb.soils_lab.oven_dry_soil_wt
  is 'Oven-dry soil weight. The calculated weight of the soil sample based on an oven-dried subsample in g.';
comment on column fs_fiadb.soils_lab.field_moist_water_content_pct
  is 'Field moist water content percent. The field-moist to air-dry water content in percent.';
comment on column fs_fiadb.soils_lab.residual_water_content_pct
  is 'Residual water content percent. The air-dry to oven-dry water content in percent.';
comment on column fs_fiadb.soils_lab.total_water_content_pct
  is 'Total water content in percent. The field-moist to air-dry + air-dry to oven-dry water contents in percent.';
comment on column fs_fiadb.soils_lab.bulk_density
  is 'Bulk density. The soil bulk density calculated as weight per unit volume of soil, g/cm3.';
comment on column fs_fiadb.soils_lab.coarse_fraction_pct
  is 'Coarse fraction percent. The percentage of mineral soil greater than 2-mm in size.';
comment on column fs_fiadb.soils_lab.c_org_pct
  is 'Carbon organic percent. Organic carbon in percent';
comment on column fs_fiadb.soils_lab.c_inorg_pct
  is 'Carbon inorganic percent. Inorganic carbon (carbonates) in percent.';
comment on column fs_fiadb.soils_lab.c_total_pct
  is 'Carbon total percent. Total carbon (organic + inorganic) in percent.';
comment on column fs_fiadb.soils_lab.n_total_pct
  is 'Nitrogen total percent. Total nitrogen in percent.';
comment on column fs_fiadb.soils_lab.ph_h2o
  is 'pH in water. Soil pH in a 1:1 soil/water suspension';
comment on column fs_fiadb.soils_lab.ph_cacl2
  is 'pH in calcium chloride. Soil pH in 0.01 M CaCl2 solution.';
comment on column fs_fiadb.soils_lab.exchng_na
  is 'Exchangeable sodium in mg/kg.';
comment on column fs_fiadb.soils_lab.exchng_k
  is 'Exchangeable potassium in mg/kg.';
comment on column fs_fiadb.soils_lab.exchng_mg
  is 'Exchangeable magnesium in mg/kg.';
comment on column fs_fiadb.soils_lab.exchng_ca
  is 'Exchangeable calcium in mg/kg.';
comment on column fs_fiadb.soils_lab.exchng_al
  is 'Exchangeable aluminum in mg/kg';
comment on column fs_fiadb.soils_lab.ecec
  is 'Effective cation exchange capacity. Exchangeable Na + K + Mg + Ca + Al) in cmolc/kg';
comment on column fs_fiadb.soils_lab.exchng_mn
  is 'Exchangeable manganese in mg/kg';
comment on column fs_fiadb.soils_lab.exchng_fe
  is 'Exchangeable iron in mg/kg.';
comment on column fs_fiadb.soils_lab.exchng_ni
  is 'Exchangeable nickel in mg/kg.';
comment on column fs_fiadb.soils_lab.exchng_cu
  is 'Exchangeable copper in mg/kg.';
comment on column fs_fiadb.soils_lab.exchng_zn
  is 'Exchangeable zinc in mg/kg.';
comment on column fs_fiadb.soils_lab.exchng_cd
  is 'Exchangeable cadmium in mg/kg';
comment on column fs_fiadb.soils_lab.exchng_pb
  is 'Exchangeable lead in mg/kg.';
comment on column fs_fiadb.soils_lab.exchng_s
  is 'Exchangeable sulfur in mg/kg.';
comment on column fs_fiadb.soils_lab.bray1_p
  is 'Bray 1 phosphorus. Bray 1 extractable phosphorus in mg/kg.';
comment on column fs_fiadb.soils_lab.olsen_p
  is 'Olsen phosphorus. Olsen extractable phosphorus in mg/kg.';
comment on column fs_fiadb.soils_lab.measyear
  is 'Measurement Year ';
comment on column fs_fiadb.soils_lab.modified_date
  is 'Modified Date';
comment on column fs_fiadb.soils_lab.created_date
  is 'Created Date ';
create index SLB_SMPLNNBR_I on FS_FIADB.SOILS_LAB (VSTNBR, COUNTYCD, LAYER_TYPE, STATECD, PLOT, MEASYEAR);
alter table FS_FIADB.SOILS_LAB add constraint SLB_PK primary key (CN);