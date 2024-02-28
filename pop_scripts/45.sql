SELECT peg.statecd,
       peg.eval_grp,
       45 attribute_nbr,
       sum((seedling.tpa_unadj * pop_stratum.adj_factor_micr) * pop_stratum.expns) AS estimated_value
FROM fs_fiadb.pop_eval_grp peg
JOIN fs_fiadb.pop_eval_typ pet ON (pet.eval_grp_cn = peg.cn)
JOIN fs_fiadb.pop_eval pev ON (pev.cn = pet.eval_cn)
JOIN fs_fiadb.pop_estn_unit peu ON (pev.cn = peu.eval_cn)
JOIN fs_fiadb.pop_stratum pop_stratum ON (peu.cn = pop_stratum.estn_unit_cn)
JOIN fs_fiadb.pop_plot_stratum_assgn pop_plot_stratum_assgn ON (pop_plot_stratum_assgn.stratum_cn = pop_stratum.cn)
JOIN fs_fiadb.plot ON (pop_plot_stratum_assgn.plt_cn = plot.cn)
JOIN fs_fiadb.plotgeom ON (plot.cn = plotgeom.cn)
JOIN fs_fiadb.cond ON (cond.plt_cn = plot.cn)
JOIN fs_fiadb.seedling ON (seedling.plt_cn = cond.plt_cn
                           AND seedling.condid = cond.condid)
WHERE cond.cond_status_cd = 1
  AND seedling.tpa_unadj IS NOT NULL
  AND pet.eval_typ = 'EXPVOL'
  AND peg.eval_grp IN (&eval_grp)
  AND 1=1
GROUP BY peg.statecd,
         peg.eval_grp
ORDER BY peg.statecd,
         peg.eval_grp