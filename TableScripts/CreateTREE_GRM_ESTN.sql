CREATE TABLE fs_fiadb.tree_grm_estn
(
cn               VARCHAR(34) NOT NULL,
statecd          DOUBLE PRECISION,
invyr            INTEGER NOT NULL,
plt_cn           VARCHAR(34) NOT NULL,
tre_cn           VARCHAR(34) NOT NULL,
land_basis       VARCHAR(10),
estimate         VARCHAR(20),
estn_type        VARCHAR(10),
estn_units       VARCHAR(3),
component        VARCHAR(15),
subptyp_grm      INTEGER,
remper           DECIMAL(3,1),
tpagrow_unadj    DECIMAL(11,6),
tparemv_unadj    DECIMAL(11,6),
tpamort_unadj    DECIMAL(11,6),
ann_net_growth   DECIMAL(13,6),
removals         DECIMAL(13,6),
mortality        DECIMAL(13,6),
est_begin        DECIMAL(13,6),
est_begin_recalc VARCHAR(1),
est_end          DECIMAL(13,6),
est_midpt        DECIMAL(13,6),
est_threshold    DECIMAL(13,6),
dia_begin        DECIMAL(5,2),
dia_begin_recalc VARCHAR(1),
dia_end          DECIMAL(5,2),
dia_midpt        DECIMAL(5,2),
dia_threshold    DECIMAL(5,2),
g_s              DECIMAL(13,6),
i                DECIMAL(13,6),
g_i              DECIMAL(13,6),
m                DECIMAL(13,6),
g_m              DECIMAL(13,6),
c                DECIMAL(13,6),
g_c              DECIMAL(13,6),
r                DECIMAL(13,6),
g_r              DECIMAL(13,6),
d                DECIMAL(13,6),
g_d              DECIMAL(13,6),
cd               DECIMAL(13,6),
g_cd             DECIMAL(13,6),
ci               DECIMAL(13,6),
g_ci             DECIMAL(13,6),
created_date     TIMESTAMP(0),
modified_date    TIMESTAMP(0)
);
create index TGE_TRE_FK_I on FS_FIADB.TREE_GRM_ESTN (TRE_CN);
create index TGE_PLT_FK_I on FS_FIADB.TREE_GRM_ESTN (PLT_CN);
create index TGE_STATECD_INVYR_I on FS_FIADB.TREE_GRM_ESTN (STATECD, INVYR);
alter table FS_FIADB.TREE_GRM_ESTN add constraint TGE_PK primary key (CN);
alter table FS_FIADB.TREE_GRM_ESTN add constraint TGE_UK unique (TRE_CN, LAND_BASIS, ESTIMATE, ESTN_TYPE, ESTN_UNITS);
alter table FS_FIADB.TREE_GRM_ESTN add constraint TGE_PLT_FK foreign key (PLT_CN) references FS_FIADB.PLOT (CN);
alter table FS_FIADB.TREE_GRM_ESTN add constraint TGE_TRE_FK foreign key (TRE_CN) references FS_FIADB.TREE (CN);