SELECT peg.eval_grp,
       cond.plt_cn,
       cond.condid,
       cond.condprop_unadj,
       CASE cond.prop_basis
           WHEN 'MACR' THEN pop_stratum.adj_factor_macr
           ELSE pop_stratum.adj_factor_subp
       END adj_factor,
       pop_stratum.expns
FROM fs_fiadb.pop_eval_grp peg
JOIN fs_fiadb.pop_eval_typ pet ON (pet.eval_grp_cn = peg.cn)
JOIN fs_fiadb.pop_eval pev ON (pev.cn = pet.eval_cn)
JOIN fs_fiadb.pop_estn_unit peu ON (pev.cn = peu.eval_cn)
JOIN fs_fiadb.pop_stratum pop_stratum ON (peu.cn = pop_stratum.estn_unit_cn)
JOIN fs_fiadb.pop_plot_stratum_assgn pop_plot_stratum_assgn ON (pop_plot_stratum_assgn.stratum_cn = pop_stratum.cn)
JOIN fs_fiadb.plot ON (pop_plot_stratum_assgn.plt_cn = plot.cn)
JOIN fs_fiadb.plotgeom ON (plot.cn = plotgeom.cn)
JOIN fs_fiadb.cond ON (cond.plt_cn = plot.cn)
WHERE cond.cond_status_cd = 1
  AND cond.condprop_unadj IS NOT NULL
  AND pet.eval_typ = 'EXPCURR'
  AND peg.eval_grp IN (&EVAL_GRP)
  AND 1=1
