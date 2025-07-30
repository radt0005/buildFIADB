-- table names, column names, data types, comments
SELECT variable_info.*, variable_comments.comments
FROM
(SELECT owner,
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
 AND owner IN ('FS_FIADB', 'FS_FIA_REFERENCE')) variable_info
LEFT JOIN
(SELECT owner,
        table_name,
        column_name,
        comments
  FROM all_col_comments
  -- these are the table names in the datamart
 WHERE (table_name IN (SELECT table_name
                        FROM fs_fiadb.datamart_tables
                       WHERE table_type IN (1, 2, 4))
 OR table_name IN ('REF_DAMAGE_AGENT',
                   'REF_DAMAGE_AGENT_GROUP'))
 AND owner IN ('FS_FIADB', 'FS_FIA_REFERENCE')) variable_comments
 ON (variable_info.owner = variable_comments.owner AND
     variable_info.table_name = variable_comments.table_name AND
     variable_info.column_name = variable_comments.column_name)
WHERE
NOT (variable_info.owner = 'FS_FIADB' AND variable_info.table_name = 'REF_CITATION')