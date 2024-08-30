CREATE TABLE fs_fiadb.soils_sample_loc
(
cn            VARCHAR(34) NOT NULL,
plt_cn        VARCHAR(34) NOT NULL,
invyr         INTEGER NOT NULL,
statecd       INTEGER NOT NULL,
countycd      INTEGER NOT NULL,
plot          INTEGER NOT NULL,
smplnnbr      INTEGER NOT NULL,
measyear      INTEGER NOT NULL,
forflthk      DOUBLE PRECISION,
ltrlrthk      DOUBLE PRECISION,
forflthkn     DOUBLE PRECISION,
ltrlrthkn     DOUBLE PRECISION,
forflthks     DOUBLE PRECISION,
ltrlrthks     DOUBLE PRECISION,
forflthke     DOUBLE PRECISION,
ltrlrthke     DOUBLE PRECISION,
forflthkw     DOUBLE PRECISION,
ltrlrthkw     DOUBLE PRECISION,
condid        INTEGER,
vstnbr        INTEGER NOT NULL,
txtrlyr1      DOUBLE PRECISION,
txtrlyr2      DOUBLE PRECISION,
dpthsbsl      DOUBLE PRECISION,
soils_statcd  INTEGER NOT NULL,
created_date  TIMESTAMP(0),
modified_date TIMESTAMP(0)
);
create index SSL_NAT_I on FS_FIADB.SOILS_SAMPLE_LOC (STATECD, INVYR, COUNTYCD, PLOT, SMPLNNBR);
alter table FS_FIADB.SOILS_SAMPLE_LOC add constraint SSL_PK primary key (CN);
alter table FS_FIADB.SOILS_SAMPLE_LOC add constraint SSL_UK unique (PLT_CN, SMPLNNBR);
alter table FS_FIADB.SOILS_SAMPLE_LOC add constraint SSL_PLT_FK foreign key (PLT_CN) references FS_FIADB.PLOT (CN);