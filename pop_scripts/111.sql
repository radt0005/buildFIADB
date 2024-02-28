SELECT peg.statecd,
       peg.eval_grp,
       111 attribute_nbr,
       sum((coalesce(cond_dwm_calc.fwd_lg_drybio_adj, 0) / 2000) * pop_stratum.expns) AS estimated_value
FROM fs_fiadb.pop_eval_grp peg
JOIN fs_fiadb.pop_eval_typ pet ON (pet.eval_grp_cn = peg.cn)
JOIN fs_fiadb.pop_eval pev ON (pev.cn = pet.eval_cn)
JOIN fs_fiadb.pop_estn_unit peu ON (pev.cn = peu.eval_cn)
JOIN fs_fiadb.pop_stratum pop_stratum ON (peu.cn = pop_stratum.estn_unit_cn)
JOIN fs_fiadb.pop_plot_stratum_assgn pop_plot_stratum_assgn ON (pop_plot_stratum_assgn.stratum_cn = pop_stratum.cn)
JOIN fs_fiadb.plot plot ON (pop_plot_stratum_assgn.plt_cn = plot.cn)
JOIN fs_fiadb.plotgeom plotgeom ON (plot.cn = plotgeom.cn)
JOIN fs_fiadb.cond cond ON (cond.plt_cn = plot.cn)
JOIN fs_fiadb.cond_dwm_calc ON (cond.plt_cn = cond_dwm_calc.plt_cn
                                AND cond.condid = cond_dwm_calc.condid
                                AND pop_stratum.cn = cond_dwm_calc.stratum_cn)
WHERE cond.cond_status_cd = 1
  AND cond.condprop_unadj IS NOT NULL
  AND pet.eval_typ = 'EXPDWM'
  AND peg.eval_grp IN (&eval_grp)
  AND 1=1
GROUP BY peg.statecd,
         peg.eval_grp
ORDER BY peg.statecd,
         peg.eval_grp