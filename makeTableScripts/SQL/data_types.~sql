-- table names, column names, data types
SELECT owner,
       table_name,
       column_name,
       data_type,
       data_length,
       data_precision,
       data_scale,
       nullable,
       column_id
  FROM all_tab_columns
  -- these are the table names in the datamart
 WHERE (table_name IN (SELECT table_name
                        FROM fs_fiadb.datamart_tables
                       WHERE table_type IN (1, 2, 4))
 OR table_name IN ('REF_DAMAGE_AGENT',
                   'REF_DAMAGE_AGENT_GROUP'))
 AND owner IN ('FS_FIADB', 'FS_FIA_REFERENCE')
 ORDER BY owner, table_name, column_id;
