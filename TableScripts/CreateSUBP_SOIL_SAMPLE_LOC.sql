CREATE TABLE fs_fiadb.subp_soil_sample_loc
(
cn                     VARCHAR(34) NOT NULL,
plt_cn                 VARCHAR(34) NOT NULL,
statecd                INTEGER NOT NULL,
countycd               INTEGER NOT NULL,
plot                   INTEGER NOT NULL,
inv_vst_nbr            INTEGER NOT NULL,
invyr                  INTEGER NOT NULL,
cycle                  INTEGER NOT NULL,
subcycle               INTEGER NOT NULL,
unitcd                 INTEGER NOT NULL,
subp                   INTEGER NOT NULL,
vstnbr                 INTEGER,
condid                 INTEGER NOT NULL,
soils_sample_method_cd INTEGER NOT NULL,
soils_sample_status_cd INTEGER NOT NULL,
core_size              DECIMAL(4,3),
core_length            DECIMAL(3,1),
core_bottom_cd         INTEGER,
hole_depth             DECIMAL(3,1),
restriction_depth_cd_1 INTEGER,
restriction_depth_cd_2 INTEGER,
restriction_depth_cd_3 INTEGER,
restriction_depth_cd_4 INTEGER,
restriction_depth_1    DECIMAL(3,1),
restriction_depth_2    DECIMAL(3,1),
restriction_depth_3    DECIMAL(3,1),
restriction_depth_4    DECIMAL(3,1),
c_tot_3in_mg_ac        DECIMAL(10,6),
n_tot_3in_mg_ac        DECIMAL(10,6),
used_in_estimation_cd  INTEGER,
created_date           TIMESTAMP(0),
modified_date          TIMESTAMP(0)
);
comment on column fs_fiadb.subp_soil_sample_loc.cn
  is 'Sequence number (surrogate primary key';
comment on column fs_fiadb.subp_soil_sample_loc.plt_cn
  is 'Foreign key to PLOT table CN';
comment on column fs_fiadb.subp_soil_sample_loc.statecd
  is 'State Code';
comment on column fs_fiadb.subp_soil_sample_loc.countycd
  is 'County Code';
comment on column fs_fiadb.subp_soil_sample_loc.plot
  is 'Plot Number';
comment on column fs_fiadb.subp_soil_sample_loc.inv_vst_nbr
  is 'Visit number this Cycle/Inventory';
comment on column fs_fiadb.subp_soil_sample_loc.invyr
  is 'Annual Inventory Year';
comment on column fs_fiadb.subp_soil_sample_loc.cycle
  is 'Inventory cycle number';
comment on column fs_fiadb.subp_soil_sample_loc.subcycle
  is 'Inventory subcycle number';
comment on column fs_fiadb.subp_soil_sample_loc.unitcd
  is 'Survey unit code';
comment on column fs_fiadb.subp_soil_sample_loc.subp
  is 'Subplot number';
comment on column fs_fiadb.subp_soil_sample_loc.vstnbr
  is 'Visit number. The number of the soil sampling location at which the soil sample was collected.';
comment on column fs_fiadb.subp_soil_sample_loc.condid
  is 'Condition Class number';
comment on column fs_fiadb.subp_soil_sample_loc.soils_sample_method_cd
  is 'Soils method code indicating which soils protocol is used.';
comment on column fs_fiadb.subp_soil_sample_loc.soils_sample_status_cd
  is 'Soils sample status code';
comment on column fs_fiadb.subp_soil_sample_loc.core_size
  is 'Soil core size, inner diameter in inches';
comment on column fs_fiadb.subp_soil_sample_loc.core_length
  is 'Length of core to the nearest 0.1 inch';
comment on column fs_fiadb.subp_soil_sample_loc.core_bottom_cd
  is 'Code for substrate at bottom of core';
comment on column fs_fiadb.subp_soil_sample_loc.hole_depth
  is 'Depth of cored hole to the nearest 0.1 inch';
comment on column fs_fiadb.subp_soil_sample_loc.restriction_depth_cd_1
  is 'Code for estimated substrate encountered when probing (location 1)';
comment on column fs_fiadb.subp_soil_sample_loc.restriction_depth_cd_2
  is 'Code for estimated substrate encountered when probing (location 2)';
comment on column fs_fiadb.subp_soil_sample_loc.restriction_depth_cd_3
  is 'Code for estimated substrate encountered when probing (location 3)';
comment on column fs_fiadb.subp_soil_sample_loc.restriction_depth_cd_4
  is 'Code for estimated substrate encountered when probing (location 4)';
comment on column fs_fiadb.subp_soil_sample_loc.restriction_depth_1
  is 'Maximum depth encountered to the nearest 0.5 inch (location 1)';
comment on column fs_fiadb.subp_soil_sample_loc.restriction_depth_2
  is 'Maximum depth encountered to the nearest 0.5 inch (location 2)';
comment on column fs_fiadb.subp_soil_sample_loc.restriction_depth_3
  is 'Maximum depth encountered to the nearest 0.5 inch (location 3)';
comment on column fs_fiadb.subp_soil_sample_loc.restriction_depth_4
  is 'Maximum depth encountered to the nearest 0.5 inch (location 4))';
comment on column fs_fiadb.subp_soil_sample_loc.c_tot_3in_mg_ac
  is 'Total carbon content per acre to a standard depth of three inches in megagrams.';
comment on column fs_fiadb.subp_soil_sample_loc.n_tot_3in_mg_ac
  is 'Total nitrogen content per acre to a standard depth of three inches in megagrams.';
comment on column fs_fiadb.subp_soil_sample_loc.used_in_estimation_cd
  is 'Identifies soil cores that include mineral soil data and had no layers with > 1g weight with missing/invalid data; determines whether soil core is included in population estimates';
comment on column fs_fiadb.subp_soil_sample_loc.created_date
  is 'Created Date';
comment on column fs_fiadb.subp_soil_sample_loc.modified_date
  is 'Modified Date';
alter table FS_FIADB.SUBP_SOIL_SAMPLE_LOC add constraint SSSL_PK primary key (CN);
alter table FS_FIADB.SUBP_SOIL_SAMPLE_LOC add constraint SSSL_FK foreign key (PLT_CN) references FS_FIADB.PLOT (CN);