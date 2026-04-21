CREATE TABLE fs_fiadb.ref_species
(
spcd                         DOUBLE PRECISION,
common_name                  VARCHAR(100),
shared_common_name_ind       CHAR(1),
genus                        VARCHAR(400),
species                      VARCHAR(400),
variety                      VARCHAR(400),
subspecies                   VARCHAR(400),
scientific_name              VARCHAR(2842),
species_symbol               VARCHAR(10),
e_spgrpcd                    INTEGER,
w_spgrpcd                    INTEGER,
c_spgrpcd                    INTEGER,
p_spgrpcd                    INTEGER,
major_spgrpcd                INTEGER,
stocking_spgrpcd             INTEGER,
forest_type_spgrpcd          INTEGER,
jenkins_spgrpcd              INTEGER,
jenkins_sapling_adjustment   DOUBLE PRECISION,
sftwd_hrdwd                  VARCHAR(10),
woodland                     VARCHAR(10),
wood_spgr_greenvol_drywt     DOUBLE PRECISION,
wood_spgr_greenvol_drywt_cit DOUBLE PRECISION,
bark_spgr_greenvol_drywt     DOUBLE PRECISION,
bark_spgr_greenvol_drywt_cit DOUBLE PRECISION,
mc_pct_green_wood            DOUBLE PRECISION,
mc_pct_green_wood_cit        DOUBLE PRECISION,
mc_pct_green_bark            DOUBLE PRECISION,
mc_pct_green_bark_cit        DOUBLE PRECISION,
bark_vol_pct                 DOUBLE PRECISION,
bark_vol_pct_cit             DOUBLE PRECISION,
cwd_decay_ratio1             DOUBLE PRECISION,
cwd_decay_ratio2             DOUBLE PRECISION,
cwd_decay_ratio3             DOUBLE PRECISION,
cwd_decay_ratio4             DOUBLE PRECISION,
cwd_decay_ratio5             DOUBLE PRECISION,
dwm_carbon_ratio             DOUBLE PRECISION,
carbon_ratio_live            DOUBLE PRECISION,
drywt_to_greenwt_conversion  DOUBLE PRECISION,
created_date                 TIMESTAMP(0) NOT NULL,
modified_date                TIMESTAMP(0)
);
comment on column fs_fiadb.ref_species.spcd
  is 'The assigned Species Code Number';
comment on column fs_fiadb.ref_species.common_name
  is 'A Common Name associated with Taxa Name';
comment on column fs_fiadb.ref_species.shared_common_name_ind
  is 'A Y/N indicator which denotes whether a common name is shared by multiple species. N indicates that the common name is unique to the species.';
comment on column fs_fiadb.ref_species.genus
  is 'The Genus of the species';
comment on column fs_fiadb.ref_species.species
  is 'The specific species within the genus';
comment on column fs_fiadb.ref_species.variety
  is 'A specific subdivision of a species typically associated with a locality with distinct characteristics that are retained through breeding';
comment on column fs_fiadb.ref_species.subspecies
  is 'A specific subdivision of a species typically associated with a locality with distinct charactgeristics that are retained through breeding';
comment on column fs_fiadb.ref_species.scientific_name
  is 'The scientific name (starting with genus) for the taxa';
comment on column fs_fiadb.ref_species.species_symbol
  is 'A symbol usied to identify the species. This symbol originated from the PLANTS database at the time the species was adopted by FIA. FIA has held these symbols constant over time for trees and has not updated updated these sybols as the PLANTS database has. FIA does update species symbols for non-tree species.';
comment on column fs_fiadb.ref_species.e_spgrpcd
  is 'A grouping code used for reporting in the eastern United States consisting of AL, AR, CT, DC, DE, FL, GA, IA, IL, IN, KS, KY, LA, MA, MD, ME, MI, MN, MO, MS, NC, ND, NE, NH, NJ, NY, OH, OK, PA, RI, SC, SD, TN, TX, VA, VT, WI, WV';
comment on column fs_fiadb.ref_species.w_spgrpcd
  is 'A grouping code used for reporting in the western United States consisting of AK, AZ, CA, CO, HI, ID, MT, NM, NV, OR, UT, WA, WY';
comment on column fs_fiadb.ref_species.c_spgrpcd
  is 'A grouping code used for reporting in the caribbean consisting of PR, VI';
comment on column fs_fiadb.ref_species.p_spgrpcd
  is 'A grouping code used for reporting in the Pacific islands consisting of AS, FM, GU, MH, MP, PW';
comment on column fs_fiadb.ref_species.major_spgrpcd
  is 'A grouping code used for reporting that collects species into high-level groups of species';
comment on column fs_fiadb.ref_species.stocking_spgrpcd
  is 'A grouping code used for stocking equations.';
comment on column fs_fiadb.ref_species.forest_type_spgrpcd
  is 'A grouping code used for forest typing.';
comment on column fs_fiadb.ref_species.jenkins_spgrpcd
  is 'A grouping code used for reporting the Jenkins species group.';
comment on column fs_fiadb.ref_species.jenkins_sapling_adjustment
  is 'Jenkins sapling adjusment factor for estimation of sapling biomass (Heath et al. 2009)';
comment on column fs_fiadb.ref_species.sftwd_hrdwd
  is 'A high-level classification of a species as either hardwood (angiosperm) or softwood (gynmosperm)';
comment on column fs_fiadb.ref_species.woodland
  is 'A Y/N flag indicating if the species is classifed as a woodland species or not under the FIA program. Woodland species are considered to be a mult-stem organism and the diameters are measured at the root collar. Non-woodland species are cosidered single-stem species and diameters are taken at DBH';
comment on column fs_fiadb.ref_species.wood_spgr_greenvol_drywt
  is 'Green specific gravity wood (green volume and oven-dry weight)';
comment on column fs_fiadb.ref_species.wood_spgr_greenvol_drywt_cit
  is 'Green specific gravity wood citation';
comment on column fs_fiadb.ref_species.bark_spgr_greenvol_drywt
  is 'Green specific gravity bark (green volume and oven-dry weight)';
comment on column fs_fiadb.ref_species.bark_spgr_greenvol_drywt_cit
  is 'Green specific gravity bark citation';
comment on column fs_fiadb.ref_species.mc_pct_green_wood
  is 'Moisture content of green wood as a percent of oven-dry weight. Wood and bark is often sold based on green weight. The user is cautioned that green weights can be extremely variable geographically, seasonally, within species and across various portions of individual trees.';
comment on column fs_fiadb.ref_species.mc_pct_green_wood_cit
  is 'Citation for MC_PCT_GREEN_WOOD. The value of this variable can be linked to the corresponding value in the CITATION_NBR variable in the REF_CITATION table to find the source of the MC_PCT_GREEN_WOOD variable.';
comment on column fs_fiadb.ref_species.mc_pct_green_bark
  is 'Moisture content of green bark as a percent of oven-dry weight. Wood and bark is often sold based on green weight. The user is cautioned that green weights can be extremely variable geographically, seasonally, within species and across various portions of individual trees.';
comment on column fs_fiadb.ref_species.mc_pct_green_bark_cit
  is 'Citation for MC_PCT GREEN_BARK . The value of this variable can be linked to the corresponding value in the CITATION_NBR variable in the REF_CITATION table to find the source of the MC_PCT GREEN_BARK variable.';
comment on column fs_fiadb.ref_species.bark_vol_pct
  is 'Bark volume as a percent of  wood volume';
comment on column fs_fiadb.ref_species.bark_vol_pct_cit
  is 'Bark volume as a percent of  wood volume citation';
comment on column fs_fiadb.ref_species.cwd_decay_ratio1
  is 'Ratio of decayed to sound wood weight of CWD indicated by decay class 1';
comment on column fs_fiadb.ref_species.cwd_decay_ratio2
  is 'Ratio of decayed to sound wood weight of CWD indicated by decay class 2';
comment on column fs_fiadb.ref_species.cwd_decay_ratio3
  is 'Ratio of decayed to sound wood weight of CWD indicated by decay class 3';
comment on column fs_fiadb.ref_species.cwd_decay_ratio4
  is 'Ratio of decayed to sound wood weight of CWD indicated by decay class 4';
comment on column fs_fiadb.ref_species.cwd_decay_ratio5
  is 'Ratio of decayed to sound wood weight of CWD indicated by decay class 5';
comment on column fs_fiadb.ref_species.dwm_carbon_ratio
  is 'Ratio of carbon to dry wood weight';
comment on column fs_fiadb.ref_species.carbon_ratio_live
  is 'The Biomass to Carbon ration for a live tree.';
comment on column fs_fiadb.ref_species.drywt_to_greenwt_conversion
  is 'A coefficient used to convert oven-dry weight to green weight';
comment on column fs_fiadb.ref_species.created_date
  is 'The date on which the TAXA record was originally created.';
comment on column fs_fiadb.ref_species.modified_date
  is 'The date on which the TAXA record was last modified.';
create index RS_SPCD on FS_FIADB.REF_SPECIES (SPCD);