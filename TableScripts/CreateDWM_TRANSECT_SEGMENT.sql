CREATE TABLE fs_fiadb.dwm_transect_segment
(
cn                        VARCHAR(34) NOT NULL,
plt_cn                    VARCHAR(34) NOT NULL,
invyr                     INTEGER NOT NULL,
statecd                   INTEGER NOT NULL,
countycd                  INTEGER NOT NULL,
plot                      INTEGER NOT NULL,
subp                      INTEGER NOT NULL,
transect                  INTEGER NOT NULL,
segmnt                    INTEGER NOT NULL,
measyear                  INTEGER,
condid                    INTEGER,
slope_begndist            DOUBLE PRECISION,
slope_enddist             DOUBLE PRECISION,
slope                     INTEGER,
horiz_length              DOUBLE PRECISION,
horiz_begndist            DOUBLE PRECISION,
horiz_enddist             DOUBLE PRECISION,
created_date              TIMESTAMP(0),
modified_date             TIMESTAMP(0),
segmnt_status_cd          INTEGER,
segmnt_nonsample_reasn_cd INTEGER,
transect_length           DECIMAL(4,1)
);
create index DTS_NAT_I on FS_FIADB.DWM_TRANSECT_SEGMENT (STATECD, INVYR, COUNTYCD, PLOT, SUBP, TRANSECT, SEGMNT);
alter table FS_FIADB.DWM_TRANSECT_SEGMENT add constraint DTS_PK primary key (CN);
alter table FS_FIADB.DWM_TRANSECT_SEGMENT add constraint DTS_UK unique (PLT_CN, SUBP, TRANSECT, SEGMNT);