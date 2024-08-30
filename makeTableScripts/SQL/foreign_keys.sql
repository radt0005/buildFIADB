select 
b.table_name,
a.constraint_name,
b.column_name,
c.table_name r_table_name,
c.column_name foreign_col
    from all_cons_columns b,
         all_cons_columns c,
         all_constraints a
   where b.constraint_name = a.constraint_name
     and a.owner           = b.owner
     and b.position        = c.position
     and c.constraint_name = a.r_constraint_name
     and c.owner           = a.r_owner
     and a.constraint_type = 'R'
     and c.owner IN ('FS_FIADB', 'FS_FIA_REFERENCE');
