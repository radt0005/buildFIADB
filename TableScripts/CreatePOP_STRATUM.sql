CREATE TABLE fs_fiadb.pop_stratum
(
cn                           VARCHAR(34) NOT NULL,
estn_unit_cn                 VARCHAR(34) NOT NULL,
rscd                         INTEGER NOT NULL,
evalid                       INTEGER NOT NULL,
estn_unit                    INTEGER NOT NULL,
stratumcd                    INTEGER NOT NULL,
stratum_descr                VARCHAR(255) NOT NULL,
statecd                      INTEGER NOT NULL,
p1pointcnt                   BIGINT,
p2pointcnt                   BIGINT,
expns                        DOUBLE PRECISION,
adj_factor_macr              DOUBLE PRECISION,
adj_factor_subp              DOUBLE PRECISION,
adj_factor_micr              DOUBLE PRECISION,
adj_factor_cwd               DOUBLE PRECISION,
adj_factor_fwd_sm            DOUBLE PRECISION,
adj_factor_fwd_lg            DOUBLE PRECISION,
adj_factor_duff              DOUBLE PRECISION,
created_date                 TIMESTAMP(0),
modified_date                TIMESTAMP(0),
adj_factor_pile              DOUBLE PRECISION,
adj_factor_regen_micr        DOUBLE PRECISION,
adj_factor_inv_subp          DOUBLE PRECISION,
adj_factor_p2veg_subp        DOUBLE PRECISION,
adj_factor_grndlyr_microquad DOUBLE PRECISION,
adj_factor_soil              DOUBLE PRECISION
);
create index PSM_PEU_FK_I on FS_FIADB.POP_STRATUM (ESTN_UNIT_CN);
alter table FS_FIADB.POP_STRATUM add constraint PSM_PK primary key (CN);
alter table FS_FIADB.POP_STRATUM add constraint PSM_UK unique (RSCD, EVALID, ESTN_UNIT, STRATUMCD);
alter table FS_FIADB.POP_STRATUM add constraint PSM_PEU_FK foreign key (ESTN_UNIT_CN) references FS_FIADB.POP_ESTN_UNIT (CN);