CREATE TABLE fs_fiadb.soils_sample_loc
(
cn                   VARCHAR(34) NOT NULL,
plt_cn               VARCHAR(34) NOT NULL,
invyr                INTEGER NOT NULL,
statecd              INTEGER NOT NULL,
countycd             INTEGER NOT NULL,
plot                 INTEGER NOT NULL,
smplnnbr             INTEGER NOT NULL,
measyear             INTEGER NOT NULL,
forflthk             DOUBLE PRECISION,
ltrlrthk             DOUBLE PRECISION,
forflthkn            DOUBLE PRECISION,
ltrlrthkn            DOUBLE PRECISION,
forflthks            DOUBLE PRECISION,
ltrlrthks            DOUBLE PRECISION,
forflthke            DOUBLE PRECISION,
ltrlrthke            DOUBLE PRECISION,
forflthkw            DOUBLE PRECISION,
ltrlrthkw            DOUBLE PRECISION,
condid               INTEGER,
vstnbr               INTEGER NOT NULL,
txtrlyr1             DOUBLE PRECISION,
txtrlyr2             DOUBLE PRECISION,
dpthsbsl             DOUBLE PRECISION,
soils_statcd         INTEGER NOT NULL,
created_by           VARCHAR(30),
created_date         TIMESTAMP(0),
created_in_instance  VARCHAR(6),
modified_by          VARCHAR(30),
modified_date        TIMESTAMP(0),
modified_in_instance VARCHAR(6)
);
comment on column fs_fiadb.soils_sample_loc.cn
  is 'Unique Index';
comment on column fs_fiadb.soils_sample_loc.plt_cn
  is 'Foreign Key to NIMS_PLOT';
comment on column fs_fiadb.soils_sample_loc.invyr
  is 'NA';
comment on column fs_fiadb.soils_sample_loc.statecd
  is 'state code';
comment on column fs_fiadb.soils_sample_loc.countycd
  is 'County Code';
comment on column fs_fiadb.soils_sample_loc.plot
  is 'P2 Plot Number';
comment on column fs_fiadb.soils_sample_loc.smplnnbr
  is 'Sample Line Number';
comment on column fs_fiadb.soils_sample_loc.measyear
  is 'Measurement Year';
comment on column fs_fiadb.soils_sample_loc.forflthk
  is 'Forest Floor Thickness';
comment on column fs_fiadb.soils_sample_loc.ltrlrthk
  is 'Litter Layer Thickness';
comment on column fs_fiadb.soils_sample_loc.forflthkn
  is 'Forest Floor Thickness at the North Edge of the Sampling Frame';
comment on column fs_fiadb.soils_sample_loc.ltrlrthkn
  is 'Litter Layer Thickness at the North Edge of the Sampling Frame';
comment on column fs_fiadb.soils_sample_loc.forflthks
  is 'Forest Floor Thickness at the South Edge of the Sampling Frame';
comment on column fs_fiadb.soils_sample_loc.ltrlrthks
  is 'Litter Layer Thickness at the South Edge of the Sampling Frame';
comment on column fs_fiadb.soils_sample_loc.forflthke
  is 'Forest Floor Thickness at the East Edge of the Sampling Frame';
comment on column fs_fiadb.soils_sample_loc.ltrlrthke
  is 'Litter Layer Thickness at the East Edge of the Sampling Frame';
comment on column fs_fiadb.soils_sample_loc.forflthkw
  is 'Forest Floor Thickness at the West Edge of the Sampling Frame';
comment on column fs_fiadb.soils_sample_loc.ltrlrthkw
  is 'Litter Layer Thickness at the West Edge of the Sampling Frame';
comment on column fs_fiadb.soils_sample_loc.condid
  is 'Forest condition class nbr';
comment on column fs_fiadb.soils_sample_loc.vstnbr
  is 'Visit Number';
comment on column fs_fiadb.soils_sample_loc.txtrlyr1
  is 'Soil Texture Layer';
comment on column fs_fiadb.soils_sample_loc.txtrlyr2
  is 'Soil Texture Layer';
comment on column fs_fiadb.soils_sample_loc.dpthsbsl
  is 'Depth to a Restricted Layer';
comment on column fs_fiadb.soils_sample_loc.soils_statcd
  is 'Soil Sampling Status';
comment on column fs_fiadb.soils_sample_loc.created_by
  is 'Created by';
comment on column fs_fiadb.soils_sample_loc.created_date
  is 'Created Date';
comment on column fs_fiadb.soils_sample_loc.created_in_instance
  is 'Created in Instance';
comment on column fs_fiadb.soils_sample_loc.modified_by
  is 'Modified by';
comment on column fs_fiadb.soils_sample_loc.modified_date
  is 'Modified Date';
comment on column fs_fiadb.soils_sample_loc.modified_in_instance
  is 'Modified in Instance';
create index SSL_NAT_I on FS_FIADB.SOILS_SAMPLE_LOC (STATECD, INVYR, COUNTYCD, PLOT, SMPLNNBR);
alter table FS_FIADB.SOILS_SAMPLE_LOC add constraint SSL_PK primary key (CN);
alter table FS_FIADB.SOILS_SAMPLE_LOC add constraint SSL_UK unique (PLT_CN, SMPLNNBR);
alter table FS_FIADB.SOILS_SAMPLE_LOC add constraint SSL_PLT_FK foreign key (PLT_CN) references FS_FIADB.PLOT (CN);