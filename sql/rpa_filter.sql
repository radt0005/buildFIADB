and not (16.4042 > coalesce((select avg(coalesce(atree.actualht, 0))
from FS_FIADB.tree atree
where atree.plt_cn = plot.cn
and atree.statuscd = 1
and atree.dia >= 5.0),0)
and (cond.fortypcd in (180, 182, 184, 185, 970, 971, 972, 973, 974, 975, 976)
and substr(trim(plot.ecosubcd), 1, 3) in
    ('311','313','315','321','322','331','332','341','342')
    and cond.siteclcd = 7))