SELECT peg.statecd,
       peg.eval_grp,
       137 attribute_nbr,
       sum((coalesce(sccm.subptyp_prop_chng / 4 * CASE cond.prop_basis
                                                      WHEN 'MACR' THEN pop_stratum.adj_factor_macr
                                                      ELSE pop_stratum.adj_factor_subp
                                                  END, 0) / plot.remper) * pop_stratum.expns) AS estimated_value
FROM fs_fiadb.pop_eval_grp peg
JOIN fs_fiadb.pop_eval_typ pet ON (pet.eval_grp_cn = peg.cn)
JOIN fs_fiadb.pop_eval pev ON (pev.cn = pet.eval_cn)
JOIN fs_fiadb.pop_estn_unit peu ON (pev.cn = peu.eval_cn)
JOIN fs_fiadb.pop_stratum pop_stratum ON (peu.cn = pop_stratum.estn_unit_cn)
JOIN fs_fiadb.pop_plot_stratum_assgn pop_plot_stratum_assgn ON (pop_plot_stratum_assgn.stratum_cn = pop_stratum.cn)
JOIN fs_fiadb.plot plot ON (pop_plot_stratum_assgn.plt_cn = plot.cn)
JOIN fs_fiadb.plotgeom plotgeom ON (plot.cn = plotgeom.cn)
JOIN fs_fiadb.cond cond ON (cond.plt_cn = plot.cn)
JOIN fs_fiadb.cond pcond ON (pcond.plt_cn = plot.prev_plt_cn)
JOIN fs_fiadb.subp_cond_chng_mtrx sccm ON (sccm.plt_cn = cond.plt_cn
                                           AND sccm.prev_plt_cn = pcond.plt_cn
                                           AND sccm.condid = cond.condid
                                           AND sccm.prevcond = pcond.condid)
WHERE cond.condprop_unadj IS NOT NULL
  AND ((sccm.subptyp = 3
        AND cond.prop_basis = 'MACR')
       OR (sccm.subptyp = 1
           AND cond.prop_basis = 'SUBP'))
  AND coalesce(cond.cond_nonsample_reasn_cd, 0) = 0
  AND coalesce(pcond.cond_nonsample_reasn_cd, 0) = 0
  AND (cond.cond_status_cd = 1
       OR pcond.cond_status_cd = 1)
  AND pet.eval_typ = 'EXPCHNG'
  AND peg.eval_grp IN (&eval_grp)
  AND 1=1
GROUP BY peg.statecd,
         peg.eval_grp
ORDER BY peg.statecd,
         peg.eval_grp