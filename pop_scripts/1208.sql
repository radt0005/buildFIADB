SELECT peg.statecd,
       peg.eval_grp,
       1208 attribute_nbr,
       sum((grm.tpagrow_unadj * (CASE
                                     WHEN coalesce(grm.subptyp_grm, 0) = 0 THEN (0)
                                     WHEN grm.subptyp_grm = 1 THEN pop_stratum.adj_factor_subp
                                     WHEN grm.subptyp_grm = 2 THEN pop_stratum.adj_factor_micr
                                     WHEN grm.subptyp_grm = 3 THEN pop_stratum.adj_factor_macr
                                     ELSE (0)
                                 END) * (CASE
                                             WHEN be.oneortwo = 2 THEN (CASE
                                                                            WHEN (grm.component = 'SURVIVOR'
                                                                                  OR grm.component = 'INGROWTH'
                                                                                  OR grm.component LIKE 'REVERSION%') THEN (tree.volcfnet / plot.remper)
                                                                            WHEN (grm.component LIKE 'CUT%'
                                                                                  OR grm.component LIKE 'DIVERSION%'
                                                                                  OR grm.component LIKE 'MORTALITY%') THEN (tre_midpt.volcfnet / plot.remper)
                                                                            ELSE (0)
                                                                        END)
                                             ELSE (CASE
                                                       WHEN (grm.component = 'SURVIVOR'
                                                             OR grm.component = 'CUT1'
                                                             OR grm.component = 'DIVERSION1'
                                                             OR grm.component = 'MORTALITY1') THEN CASE
                                                                                                       WHEN tre_begin.tre_cn IS NOT NULL THEN - (tre_begin.volcfnet / plot.remper)
                                                                                                       ELSE - (ptree.volcfnet / plot.remper)
                                                                                                   END
                                                       ELSE (0)
                                                   END)
                                         END)) * pop_stratum.expns) AS estimated_value
FROM fs_fiadb.beginend be,
     fs_fiadb.pop_eval_grp peg
JOIN fs_fiadb.pop_eval_typ pet ON (pet.eval_grp_cn = peg.cn)
JOIN fs_fiadb.pop_eval pev ON (pev.cn = pet.eval_cn)
JOIN fs_fiadb.pop_estn_unit peu ON (pev.cn = peu.eval_cn)
JOIN fs_fiadb.pop_stratum pop_stratum ON (peu.cn = pop_stratum.estn_unit_cn)
JOIN fs_fiadb.pop_plot_stratum_assgn pop_plot_stratum_assgn ON (pop_stratum.cn = pop_plot_stratum_assgn.stratum_cn)
JOIN fs_fiadb.plot plot ON (pop_plot_stratum_assgn.plt_cn = plot.cn)
JOIN fs_fiadb.plotgeom plotgeom ON (plot.cn = plotgeom.cn)
JOIN fs_fiadb.plot pplot ON (plot.prev_plt_cn = pplot.cn)
JOIN fs_fiadb.cond pcond ON (plot.prev_plt_cn = pcond.plt_cn)
JOIN fs_fiadb.cond cond ON (plot.cn = cond.plt_cn)
JOIN fs_fiadb.tree tree ON (tree.condid = cond.condid
                            AND tree.plt_cn = plot.cn
                            AND tree.prevcond = pcond.condid)
LEFT OUTER JOIN fs_fiadb.tree ptree ON (tree.prev_tre_cn = ptree.cn)
LEFT OUTER JOIN fs_fiadb.tree_grm_begin tre_begin ON (tree.cn = tre_begin.tre_cn)
LEFT OUTER JOIN fs_fiadb.tree_grm_midpt tre_midpt ON (tree.cn = tre_midpt.tre_cn)
LEFT OUTER JOIN
  (SELECT tre_cn,
          dia_begin,
          dia_midpt,
          dia_end,
          subp_component_gs_timber AS component,
          subp_subptyp_grm_gs_timber AS subptyp_grm,
          subp_tpagrow_unadj_gs_timber AS tpagrow_unadj
   FROM fs_fiadb.tree_grm_component) grm ON (tree.cn = grm.tre_cn)
WHERE 1=1
  AND pet.eval_typ = 'EXPGROW'
  AND peg.eval_grp IN (&eval_grp)
  AND 1=1
GROUP BY peg.statecd,
         peg.eval_grp
ORDER BY peg.statecd,
         peg.eval_grp