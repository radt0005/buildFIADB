-- Create table
create table FS_FIADB.SOILS_SAMPLE_LOC
(
  cn                   VARCHAR(34) not null,
  plt_cn               VARCHAR(34) not null,
  invyr                SMALLINT not null,
  statecd              SMALLINT not null,
  countycd             SMALLINT not null,
  plot                 INT not null,
  smplnnbr             SMALLINT not null,
  measyear             SMALLINT not null,
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
  condid               SMALLINT,
  vstnbr               SMALLINT not null,
  txtrlyr1             DOUBLE PRECISION,
  txtrlyr2             DOUBLE PRECISION,
  dpthsbsl             DOUBLE PRECISION,
  soils_statcd         SMALLINT not null,
  created_by           VARCHAR(30),
  created_date         TIMESTAMP(0),
  created_in_instance  VARCHAR(6),
  modified_by          VARCHAR(30),
  modified_date        TIMESTAMP(0),
  modified_in_instance VARCHAR(6)
);
-- Add comments to the table 
comment on table FS_FIADB.SOILS_SAMPLE_LOC
  is '6.0';
-- Add comments to the columns 
comment on column FS_FIADB.SOILS_SAMPLE_LOC.cn
  is 'Unique Index';
comment on column FS_FIADB.SOILS_SAMPLE_LOC.plt_cn
  is 'Foreign Key to NIMS_PLOT';
comment on column FS_FIADB.SOILS_SAMPLE_LOC.statecd
  is 'state code';
comment on column FS_FIADB.SOILS_SAMPLE_LOC.countycd
  is 'County Code';
comment on column FS_FIADB.SOILS_SAMPLE_LOC.plot
  is 'P2 Plot Number';
comment on column FS_FIADB.SOILS_SAMPLE_LOC.smplnnbr
  is 'Sample Line Number';
comment on column FS_FIADB.SOILS_SAMPLE_LOC.measyear
  is 'Measurement Year';
comment on column FS_FIADB.SOILS_SAMPLE_LOC.forflthk
  is 'Forest Floor Thickness';
comment on column FS_FIADB.SOILS_SAMPLE_LOC.ltrlrthk
  is 'Litter Layer Thickness';
comment on column FS_FIADB.SOILS_SAMPLE_LOC.forflthkn
  is 'Forest Floor Thickness at the North Edge of the Sampling Frame';
comment on column FS_FIADB.SOILS_SAMPLE_LOC.ltrlrthkn
  is 'Litter Layer Thickness at the North Edge of the Sampling Frame';
comment on column FS_FIADB.SOILS_SAMPLE_LOC.forflthks
  is 'Forest Floor Thickness at the South Edge of the Sampling Frame';
comment on column FS_FIADB.SOILS_SAMPLE_LOC.ltrlrthks
  is 'Litter Layer Thickness at the South Edge of the Sampling Frame';
comment on column FS_FIADB.SOILS_SAMPLE_LOC.forflthke
  is 'Forest Floor Thickness at the East Edge of the Sampling Frame';
comment on column FS_FIADB.SOILS_SAMPLE_LOC.ltrlrthke
  is 'Litter Layer Thickness at the East Edge of the Sampling Frame';
comment on column FS_FIADB.SOILS_SAMPLE_LOC.forflthkw
  is 'Forest Floor Thickness at the West Edge of the Sampling Frame';
comment on column FS_FIADB.SOILS_SAMPLE_LOC.ltrlrthkw
  is 'Litter Layer Thickness at the West Edge of the Sampling Frame';
comment on column FS_FIADB.SOILS_SAMPLE_LOC.condid
  is 'Forest condition class nbr';
comment on column FS_FIADB.SOILS_SAMPLE_LOC.vstnbr
  is 'Visit Number';
comment on column FS_FIADB.SOILS_SAMPLE_LOC.txtrlyr1
  is 'Soil Texture Layer';
comment on column FS_FIADB.SOILS_SAMPLE_LOC.txtrlyr2
  is 'Soil Texture Layer';
comment on column FS_FIADB.SOILS_SAMPLE_LOC.dpthsbsl
  is 'Depth to a Restricted Layer';
comment on column FS_FIADB.SOILS_SAMPLE_LOC.soils_statcd
  is 'Soil Sampling Status';
comment on column FS_FIADB.SOILS_SAMPLE_LOC.created_by
  is 'Created by';
comment on column FS_FIADB.SOILS_SAMPLE_LOC.created_date
  is 'Created Date';
comment on column FS_FIADB.SOILS_SAMPLE_LOC.created_in_instance
  is 'Created in Instance';
comment on column FS_FIADB.SOILS_SAMPLE_LOC.modified_by
  is 'Modified by';
comment on column FS_FIADB.SOILS_SAMPLE_LOC.modified_date
  is 'Modified Date';
comment on column FS_FIADB.SOILS_SAMPLE_LOC.modified_in_instance
  is 'Modified in Instance';
-- Create/Recreate indexes 
create index SSL_NAT_I on FS_FIADB.SOILS_SAMPLE_LOC (STATECD, INVYR, COUNTYCD, PLOT, SMPLNNBR);
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.SOILS_SAMPLE_LOC
  add constraint SSL_PK primary key (CN);
alter table FS_FIADB.SOILS_SAMPLE_LOC
  add constraint SSL_UK unique (PLT_CN, SMPLNNBR);
alter table FS_FIADB.SOILS_SAMPLE_LOC
  add constraint SSL_PLT_FK foreign key (PLT_CN)
  references FS_FIADB.PLOT (CN);