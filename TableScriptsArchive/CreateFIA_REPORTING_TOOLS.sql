-- Create table
create table FS_FIADB.FIA_REPORTING_TOOLS
(
  toolname     VARCHAR(32) not null,
  enabled      CHAR(1),
  announcement VARCHAR(4000)
  );
-- Add comments to the table 
comment on table FS_FIADB.FIA_REPORTING_TOOLS
  is '6.0';
-- Add comments to the columns 
comment on column FS_FIADB.FIA_REPORTING_TOOLS.toolname
  is 'EVALIDATOR or FIDO or TPO or NWOS or...';
comment on column FS_FIADB.FIA_REPORTING_TOOLS.enabled
  is 'Y or N';
comment on column FS_FIADB.FIA_REPORTING_TOOLS.announcement
  is 'This will be html for the EVALIDATOR';