SELECT peg.statecd,
       peg.eval_grp,
       101 attribute_nbr,
       sum((0.90718474 * cond.condprop_unadj * cond.carbon_litter * CASE cond.prop_basis
                                                                        WHEN 'MACR' THEN pop_stratum.adj_factor_macr
                                                                        ELSE pop_stratum.adj_factor_subp
                                                                    END) * pop_stratum.expns) AS estimated_value
FROM fs_fiadb.pop_eval_grp peg
JOIN fs_fiadb.pop_eval_typ pet ON (pet.eval_grp_cn = peg.cn)
JOIN fs_fiadb.pop_eval pev ON (pev.cn = pet.eval_cn)
JOIN fs_fiadb.pop_estn_unit peu ON (pev.cn = peu.eval_cn)
JOIN fs_fiadb.pop_stratum pop_stratum ON (peu.cn = pop_stratum.estn_unit_cn)
JOIN fs_fiadb.pop_plot_stratum_assgn pop_plot_stratum_assgn ON (pop_plot_stratum_assgn.stratum_cn = pop_stratum.cn)
JOIN fs_fiadb.plot plot ON (pop_plot_stratum_assgn.plt_cn = plot.cn)
JOIN fs_fiadb.plotgeom plotgeom ON (plot.cn = plotgeom.cn)
JOIN fs_fiadb.cond cond ON (cond.plt_cn = plot.cn)
WHERE cond.cond_status_cd = 1
  AND cond.condprop_unadj IS NOT NULL
  AND cond.carbon_litter IS NOT NULL
  AND pet.eval_typ = 'EXPCURR'
  AND peg.eval_grp IN (&eval_grp)
  AND 1=1
GROUP BY peg.statecd,
         peg.eval_grp
ORDER BY peg.statecd,
         peg.eval_grp