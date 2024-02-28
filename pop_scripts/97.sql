SELECT peg.statecd,
       peg.eval_grp,
       97 attribute_nbr,
       sum((cond.condprop_unadj * (coalesce(cond.carbon_down_dead, 0) + coalesce(cond.carbon_litter, 0) + coalesce(cond.carbon_soil_org, 0) + coalesce(cond.carbon_understory_ag, 0) + coalesce(cond.carbon_understory_bg, 0)) * CASE cond.prop_basis
                                                                                                                                                                                                                                     WHEN 'MACR' THEN pop_stratum.adj_factor_macr
                                                                                                                                                                                                                                     ELSE pop_stratum.adj_factor_subp
                                                                                                                                                                                                                                 END + coalesce((
                                                                                                                                                                                                                                                   (SELECT sum(CASE
                                                                                                                                                                                                                                                                   WHEN treesq.statuscd = 1 THEN 1
                                                                                                                                                                                                                                                                   WHEN treesq.statuscd = 2
                                                                                                                                                                                                                                                                        AND treesq.standing_dead_cd = 1 THEN 1
                                                                                                                                                                                                                                                                   ELSE 0
                                                                                                                                                                                                                                                               END * treesq.tpa_unadj * (coalesce(treesq.carbon_ag, 0) + coalesce(treesq.carbon_bg, 0)) / 2000 * CASE
                                                                                                                                                                                                                                                                                                                                                                     WHEN treesq.dia IS NULL THEN pop_stratum.adj_factor_subp
                                                                                                                                                                                                                                                                                                                                                                     ELSE CASE least(treesq.dia, 5 - 0.001)
                                                                                                                                                                                                                                                                                                                                                                              WHEN treesq.dia THEN pop_stratum.adj_factor_micr
                                                                                                                                                                                                                                                                                                                                                                              ELSE CASE least(treesq.dia, coalesce(plot.macro_breakpoint_dia, 9999) - 0.001)
                                                                                                                                                                                                                                                                                                                                                                                       WHEN treesq.dia THEN pop_stratum.adj_factor_subp
                                                                                                                                                                                                                                                                                                                                                                                       ELSE pop_stratum.adj_factor_macr
                                                                                                                                                                                                                                                                                                                                                                                   END
                                                                                                                                                                                                                                                                                                                                                                          END
                                                                                                                                                                                                                                                                                                                                                                 END)
                                                                                                                                                                                                                                                    FROM fs_fiadb.cond condsq
                                                                                                                                                                                                                                                    LEFT OUTER JOIN fs_fiadb.tree treesq ON (condsq.plt_cn = treesq.plt_cn
                                                                                                                                                                                                                                                                                             AND condsq.condid = treesq.condid)
                                                                                                                                                                                                                                                    WHERE condsq.plt_cn = cond.plt_cn
                                                                                                                                                                                                                                                      AND condsq.condid = cond.condid)), 0)) * pop_stratum.expns) AS estimated_value
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
  AND pet.eval_typ = 'EXPCURR'
  AND peg.eval_grp IN (&eval_grp)
  AND 1=1
GROUP BY peg.statecd,
         peg.eval_grp
ORDER BY peg.statecd,
         peg.eval_grp