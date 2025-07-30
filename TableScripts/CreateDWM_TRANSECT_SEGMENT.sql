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
comment on column fs_fiadb.dwm_transect_segment.cn
  is 'Unique Index';
comment on column fs_fiadb.dwm_transect_segment.plt_cn
  is 'Foreign Key to NIMS_PLOT';
comment on column fs_fiadb.dwm_transect_segment.invyr
  is 'NA';
comment on column fs_fiadb.dwm_transect_segment.statecd
  is 'state code';
comment on column fs_fiadb.dwm_transect_segment.countycd
  is 'County Code';
comment on column fs_fiadb.dwm_transect_segment.plot
  is 'P2 Plot Number';
comment on column fs_fiadb.dwm_transect_segment.subp
  is 'Subplot Number';
comment on column fs_fiadb.dwm_transect_segment.transect
  is 'Subplot Transect (deg)';
comment on column fs_fiadb.dwm_transect_segment.segmnt
  is 'Segment nbr';
comment on column fs_fiadb.dwm_transect_segment.measyear
  is 'Measurement Year';
comment on column fs_fiadb.dwm_transect_segment.condid
  is 'Segment cond class nbr';
comment on column fs_fiadb.dwm_transect_segment.slope_begndist
  is 'Slope distance from begining of transect to begining of segment';
comment on column fs_fiadb.dwm_transect_segment.slope_enddist
  is 'Slopte distance from begining of transect to end of segment';
comment on column fs_fiadb.dwm_transect_segment.slope
  is 'Segment slope (%)';
comment on column fs_fiadb.dwm_transect_segment.horiz_length
  is 'Segment horizontal length (ft)';
comment on column fs_fiadb.dwm_transect_segment.horiz_begndist
  is 'Horizontal distance from begining of transect to begining of segment';
comment on column fs_fiadb.dwm_transect_segment.horiz_enddist
  is 'Horizontal distance from begining of transect to end of segment';
comment on column fs_fiadb.dwm_transect_segment.created_date
  is 'Created Date';
comment on column fs_fiadb.dwm_transect_segment.modified_date
  is 'Modified Date';
comment on column fs_fiadb.dwm_transect_segment.segmnt_status_cd
  is 'Segment sample status code';
comment on column fs_fiadb.dwm_transect_segment.segmnt_nonsample_reasn_cd
  is 'Segment nonsample reason code';
comment on column fs_fiadb.dwm_transect_segment.transect_length
  is 'the target length of the full transect';
create index DTS_NAT_I on FS_FIADB.DWM_TRANSECT_SEGMENT (TRANSECT, COUNTYCD, INVYR, PLOT, STATECD, SUBP, SEGMNT);
alter table FS_FIADB.DWM_TRANSECT_SEGMENT add constraint DTS_PK primary key (CN);
alter table FS_FIADB.DWM_TRANSECT_SEGMENT add constraint DTS_UK unique (PLT_CN, TRANSECT, SUBP, SEGMNT);