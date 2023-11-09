-- Create table
create table FS_FIADB.DWM_TRANSECT_SEGMENT
(
  cn                        VARCHAR(34) not null,
  plt_cn                    VARCHAR(34) not null,
  invyr                     SMALLINT not null,
  statecd                   SMALLINT not null,
  countycd                  SMALLINT not null,
  plot                      INT not null,
  subp                      SMALLINT not null,
  transect                  SMALLINT not null,
  segmnt                    SMALLINT not null,
  measyear                  SMALLINT,
  condid                    SMALLINT,
  slope_begndist            DOUBLE PRECISION,
  slope_enddist             DOUBLE PRECISION,
  slope                     SMALLINT,
  horiz_length              DOUBLE PRECISION,
  horiz_begndist            DOUBLE PRECISION,
  horiz_enddist             DOUBLE PRECISION,
  created_by                VARCHAR(30),
  created_date              TIMESTAMP(0),
  created_in_instance       VARCHAR(6),
  modified_by               VARCHAR(30),
  modified_in_instance      VARCHAR(6),
  modified_date             TIMESTAMP(0),
  segmnt_status_cd          SMALLINT,
  segmnt_nonsample_reasn_cd SMALLINT,
  transect_length           DECIMAL(4,1)
);
-- Add comments to the table 
comment on table FS_FIADB.DWM_TRANSECT_SEGMENT
  is '6.0';
-- Add comments to the columns 
comment on column FS_FIADB.DWM_TRANSECT_SEGMENT.cn
  is 'Unique Index';
comment on column FS_FIADB.DWM_TRANSECT_SEGMENT.plt_cn
  is 'Foreign Key to NIMS_PLOT';
comment on column FS_FIADB.DWM_TRANSECT_SEGMENT.statecd
  is 'state code';
comment on column FS_FIADB.DWM_TRANSECT_SEGMENT.countycd
  is 'County Code';
comment on column FS_FIADB.DWM_TRANSECT_SEGMENT.plot
  is 'P2 Plot Number';
comment on column FS_FIADB.DWM_TRANSECT_SEGMENT.subp
  is 'Subplot Number';
comment on column FS_FIADB.DWM_TRANSECT_SEGMENT.transect
  is 'Subplot Transect (deg)';
comment on column FS_FIADB.DWM_TRANSECT_SEGMENT.segmnt
  is 'Segment nbr';
comment on column FS_FIADB.DWM_TRANSECT_SEGMENT.measyear
  is 'Measurement Year';
comment on column FS_FIADB.DWM_TRANSECT_SEGMENT.condid
  is 'Segment cond class nbr';
comment on column FS_FIADB.DWM_TRANSECT_SEGMENT.slope_begndist
  is 'Slope distance from begining of transect to begining of segment';
comment on column FS_FIADB.DWM_TRANSECT_SEGMENT.slope_enddist
  is 'Slopte distance from begining of transect to end of segment';
comment on column FS_FIADB.DWM_TRANSECT_SEGMENT.slope
  is 'Segment slope (%)';
comment on column FS_FIADB.DWM_TRANSECT_SEGMENT.horiz_length
  is 'Segment horizontal length (ft)';
comment on column FS_FIADB.DWM_TRANSECT_SEGMENT.horiz_begndist
  is 'Horizontal distance from begining of transect to begining of segment';
comment on column FS_FIADB.DWM_TRANSECT_SEGMENT.horiz_enddist
  is 'Horizontal distance from begining of transect to end of segment';
comment on column FS_FIADB.DWM_TRANSECT_SEGMENT.created_by
  is 'Created by';
comment on column FS_FIADB.DWM_TRANSECT_SEGMENT.created_date
  is 'Created Date';
comment on column FS_FIADB.DWM_TRANSECT_SEGMENT.created_in_instance
  is 'Created in Instance';
comment on column FS_FIADB.DWM_TRANSECT_SEGMENT.modified_by
  is 'Modified by';
comment on column FS_FIADB.DWM_TRANSECT_SEGMENT.modified_in_instance
  is 'Modified in Instance';
comment on column FS_FIADB.DWM_TRANSECT_SEGMENT.modified_date
  is 'Modified Date';
comment on column FS_FIADB.DWM_TRANSECT_SEGMENT.segmnt_status_cd
  is 'Segment sample status code';
comment on column FS_FIADB.DWM_TRANSECT_SEGMENT.segmnt_nonsample_reasn_cd
  is 'Segment nonsample reason code';
comment on column FS_FIADB.DWM_TRANSECT_SEGMENT.transect_length
  is 'the target length of the full transect';
-- Create/Recreate indexes 
create index DTS_NAT_I on FS_FIADB.DWM_TRANSECT_SEGMENT (STATECD, INVYR, COUNTYCD, PLOT, SUBP, TRANSECT, SEGMNT);
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.DWM_TRANSECT_SEGMENT
  add constraint DTS_PK primary key (CN);
alter table FS_FIADB.DWM_TRANSECT_SEGMENT
  add constraint DTS_UK unique (PLT_CN, SUBP, TRANSECT, SEGMNT);