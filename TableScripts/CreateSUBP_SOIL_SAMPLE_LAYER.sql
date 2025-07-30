CREATE TABLE fs_fiadb.subp_soil_sample_layer
(
cn                            VARCHAR(34) NOT NULL,
sssl_cn                       VARCHAR(34) NOT NULL,
plt_cn                        VARCHAR(34) NOT NULL,
statecd                       INTEGER NOT NULL,
countycd                      INTEGER NOT NULL,
plot                          INTEGER NOT NULL,
invyr                         INTEGER NOT NULL,
inv_vst_nbr                   INTEGER NOT NULL,
cycle                         INTEGER NOT NULL,
subcycle                      INTEGER NOT NULL,
subp                          INTEGER NOT NULL,
vstnbr                        INTEGER,
sampler_type                  VARCHAR(2),
sample_dia                    DECIMAL(7,3),
layer_type                    VARCHAR(30) NOT NULL,
soil_samp_per_ac              DECIMAL(14,6),
layer_thickness               DECIMAL(5,3),
layer_collected_cd            INTEGER,
wt_field_moist                DECIMAL(7,2),
wt_air_dry                    DECIMAL(7,2),
wt_oven_dry                   DECIMAL(7,2),
wt_rock                       DECIMAL(7,2),
water_content_pct_field_moist DECIMAL(6,2),
water_content_pct_residual    DECIMAL(6,2),
water_content_pct_total       DECIMAL(6,2),
bulk_density                  DECIMAL(10,6),
coarse_fraction_pct           DECIMAL(7,3),
bulk_density_fines            DECIMAL(10,6),
texture_cd                    INTEGER,
ph_h2o                        DECIMAL(7,3),
ph_cacl2                      DECIMAL(7,3),
ecec                          DECIMAL(9,3),
exchng_al                     DECIMAL(9,3),
exchng_ca                     DECIMAL(9,3),
exchng_cd                     DECIMAL(9,3),
exchng_cu                     DECIMAL(9,3),
exchng_fe                     DECIMAL(9,3),
exchng_k                      DECIMAL(9,3),
exchng_mg                     DECIMAL(9,3),
exchng_mn                     DECIMAL(9,3),
exchng_na                     DECIMAL(9,3),
exchng_ni                     DECIMAL(9,3),
exchng_pb                     DECIMAL(9,3),
exchng_s                      DECIMAL(9,3),
exchng_zn                     DECIMAL(9,3),
bray1_p                       DECIMAL(9,3),
olsen_p                       DECIMAL(9,3),
c_org_pct                     DECIMAL(7,3),
c_inorg_pct                   DECIMAL(7,3),
c_total_pct                   DECIMAL(7,3),
c_mg_ac                       DECIMAL(10,6),
c_min3_mg_ac                  DECIMAL(10,6),
n_total_pct                   DECIMAL(7,3),
n_mg_ac                       DECIMAL(10,6),
n_min3_mg_ac                  DECIMAL(10,6),
created_date                  TIMESTAMP(0),
modified_date                 TIMESTAMP(0)
);
comment on column fs_fiadb.subp_soil_sample_layer.cn
  is 'Sequence number (surrogate primary key)';
comment on column fs_fiadb.subp_soil_sample_layer.sssl_cn
  is 'Foreign key to SUBP_SOIL_SAMPLE_LOC CN';
comment on column fs_fiadb.subp_soil_sample_layer.plt_cn
  is 'Foreign key to PLOT table CN';
comment on column fs_fiadb.subp_soil_sample_layer.statecd
  is 'State Code';
comment on column fs_fiadb.subp_soil_sample_layer.countycd
  is 'County Code';
comment on column fs_fiadb.subp_soil_sample_layer.plot
  is 'Plot Number';
comment on column fs_fiadb.subp_soil_sample_layer.invyr
  is 'Annual Inventory Year';
comment on column fs_fiadb.subp_soil_sample_layer.inv_vst_nbr
  is 'Visit number this Cycle/Inventory';
comment on column fs_fiadb.subp_soil_sample_layer.cycle
  is 'Inventory cycle number';
comment on column fs_fiadb.subp_soil_sample_layer.subcycle
  is 'Inventory subcycle number';
comment on column fs_fiadb.subp_soil_sample_layer.subp
  is 'Subplot number';
comment on column fs_fiadb.subp_soil_sample_layer.vstnbr
  is 'Visit number. The number of the soil sampling location at which the soil sample was collected.';
comment on column fs_fiadb.subp_soil_sample_layer.sampler_type
  is 'Code indicating the type of sampler used for the layer.  Valid codes:  BD (bulk density, SF (sample frame), O (other)';
comment on column fs_fiadb.subp_soil_sample_layer.sample_dia
  is 'Diameter of sample area in inches.';
comment on column fs_fiadb.subp_soil_sample_layer.layer_type
  is 'Layer Type. Indicates the soil layer type. Valid values: LITTER, GREEN_MOSS_LICHEN, IDENT_PARTS (identifiable parts), UNIDENT_PARTS (unidentifiable parts), MINERAL_SOIL, UNK_SOIL (unknown soil), MINERAL_SOIL_0-20_CM, MINERAL_SOIL_20-40_CM, MINERAL_SOIL_40-60_CM, MINERAL_SOIL_60-80_CM, MINERAL_SOIL_80-100_CM';
comment on column fs_fiadb.subp_soil_sample_layer.soil_samp_per_ac
  is 'Expansion factor from the layer sampling area to an acre.';
comment on column fs_fiadb.subp_soil_sample_layer.layer_thickness
  is 'Layer thickness to the nearest 0.1 inch';
comment on column fs_fiadb.subp_soil_sample_layer.layer_collected_cd
  is 'Code indicating if soil layer was collected';
comment on column fs_fiadb.subp_soil_sample_layer.wt_field_moist
  is 'Field moist soil weight. The weight of the soil sample as received from the field in g.';
comment on column fs_fiadb.subp_soil_sample_layer.wt_air_dry
  is 'Air-dry soil weight. The weight of the soil sample after air-drying at ambient temperature in g.';
comment on column fs_fiadb.subp_soil_sample_layer.wt_oven_dry
  is 'Oven-dry soil weight. The calculated weight of the soil sample based on an oven-dried subsample in g.';
comment on column fs_fiadb.subp_soil_sample_layer.wt_rock
  is 'Rock (particle size > 2mm) weight in g.';
comment on column fs_fiadb.subp_soil_sample_layer.water_content_pct_field_moist
  is 'Field moist water content percent. The field-moist to air-dry water content in percent.';
comment on column fs_fiadb.subp_soil_sample_layer.water_content_pct_residual
  is 'Residual water content percent. The air-dry to oven-dry water content in percent.';
comment on column fs_fiadb.subp_soil_sample_layer.water_content_pct_total
  is 'Total water content in percent. The field-moist to air-dry + air-dry to oven-dry water contents in percent.';
comment on column fs_fiadb.subp_soil_sample_layer.bulk_density
  is 'Bulk density. The soil bulk density calculated as weight per unit volume of soil, g/cm3.';
comment on column fs_fiadb.subp_soil_sample_layer.coarse_fraction_pct
  is 'Coarse fraction percent. The percentage of mineral soil particles greater than 2-mm in size.';
comment on column fs_fiadb.subp_soil_sample_layer.bulk_density_fines
  is 'The soil bulk density of particles less than 2mm calculated as weight per unit volume of soil, g/cm3.';
comment on column fs_fiadb.subp_soil_sample_layer.texture_cd
  is 'Code for the soil texture of the mineral soil layer';
comment on column fs_fiadb.subp_soil_sample_layer.ph_h2o
  is 'pH in water. Soil pH in a 1:1 soil/water suspension';
comment on column fs_fiadb.subp_soil_sample_layer.ph_cacl2
  is 'pH in calcium chloride. Soil pH in 0.01 M CaCl2 solution.';
comment on column fs_fiadb.subp_soil_sample_layer.ecec
  is 'Effective cation exchange capacity. Exchangeable Na + K + Mg + Ca + Al) in cmolc/kg';
comment on column fs_fiadb.subp_soil_sample_layer.exchng_al
  is 'Exchangeable aluminum in mg/kg';
comment on column fs_fiadb.subp_soil_sample_layer.exchng_ca
  is 'Exchangeable calcium in mg/kg.';
comment on column fs_fiadb.subp_soil_sample_layer.exchng_cd
  is 'Exchangeable cadmium in mg/kg';
comment on column fs_fiadb.subp_soil_sample_layer.exchng_cu
  is 'Exchangeable copper in mg/kg.';
comment on column fs_fiadb.subp_soil_sample_layer.exchng_fe
  is 'Exchangeable iron in mg/kg.';
comment on column fs_fiadb.subp_soil_sample_layer.exchng_k
  is 'Exchangeable potassium in mg/kg.';
comment on column fs_fiadb.subp_soil_sample_layer.exchng_mg
  is 'Exchangeable magnesium in mg/kg.';
comment on column fs_fiadb.subp_soil_sample_layer.exchng_mn
  is 'Exchangeable manganese in mg/kg';
comment on column fs_fiadb.subp_soil_sample_layer.exchng_na
  is 'Exchangeable sodium in mg/kg.';
comment on column fs_fiadb.subp_soil_sample_layer.exchng_ni
  is 'Exchangeable nickel in mg/kg.';
comment on column fs_fiadb.subp_soil_sample_layer.exchng_pb
  is 'Exchangeable lead in mg/kg.';
comment on column fs_fiadb.subp_soil_sample_layer.exchng_s
  is 'Exchangeable sulfur in mg/kg.';
comment on column fs_fiadb.subp_soil_sample_layer.exchng_zn
  is 'Exchangeable zinc in mg/kg.';
comment on column fs_fiadb.subp_soil_sample_layer.bray1_p
  is 'Bray 1 phosphorus. Bray 1 extractable phosphorus in mg/kg.';
comment on column fs_fiadb.subp_soil_sample_layer.olsen_p
  is 'Olsen phosphorus. Olsen extractable phosphorus in mg/kg.';
comment on column fs_fiadb.subp_soil_sample_layer.c_org_pct
  is 'Carbon organic percent. Organic carbon in percent';
comment on column fs_fiadb.subp_soil_sample_layer.c_inorg_pct
  is 'Carbon inorganic percent. Inorganic carbon (carbonates) in percent.';
comment on column fs_fiadb.subp_soil_sample_layer.c_total_pct
  is 'Carbon total percent. Total carbon (organic + inorganic) in percent.';
comment on column fs_fiadb.subp_soil_sample_layer.c_mg_ac
  is 'Carbon content per acre in megagrams.';
comment on column fs_fiadb.subp_soil_sample_layer.c_min3_mg_ac
  is 'Carbon content per acre to a standard depth of three inches in megagrams.';
comment on column fs_fiadb.subp_soil_sample_layer.n_total_pct
  is 'Nitrogen total percent. Total nitrogen in percent.';
comment on column fs_fiadb.subp_soil_sample_layer.n_mg_ac
  is 'Nitrogen content per acre in megagrams.';
comment on column fs_fiadb.subp_soil_sample_layer.n_min3_mg_ac
  is 'Nitrogen content per acre to a standard depth of three inches in megagrams.';
comment on column fs_fiadb.subp_soil_sample_layer.created_date
  is 'Created Date';
comment on column fs_fiadb.subp_soil_sample_layer.modified_date
  is 'Modified Date';
alter table FS_FIADB.SUBP_SOIL_SAMPLE_LAYER add constraint SSSLYR_PK primary key (CN);
alter table FS_FIADB.SUBP_SOIL_SAMPLE_LAYER add constraint SSSLYR_FK2 foreign key (SSSL_CN) references FS_FIADB.SUBP_SOIL_SAMPLE_LOC (CN);
alter table FS_FIADB.SUBP_SOIL_SAMPLE_LAYER add constraint SSSLYR_FK foreign key (PLT_CN) references FS_FIADB.PLOT (CN);