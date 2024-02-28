SELECT peg.statecd,
       peg.eval_grp,
       574036 attribute_nbr,
       sum((grm.tpamort_unadj * (CASE
                                     WHEN coalesce(grm.subptyp_grm, 0) = 0 THEN (0)
                                     WHEN grm.subptyp_grm = 1 THEN pop_stratum.adj_factor_subp
                                     WHEN grm.subptyp_grm = 2 THEN pop_stratum.adj_factor_micr
                                     WHEN grm.subptyp_grm = 3 THEN pop_stratum.adj_factor_macr
                                     ELSE (0)
                                 END) * (CASE
                                             WHEN grm.component LIKE 'MORTALITY%' THEN ((tre_midpt.drybio_stump + tre_midpt.drybio_stump_bark) / 2000)
                                             ELSE (0)
                                         END)) * pop_stratum.expns) AS estimated_value
FROM fs_fiadb.pop_eval_grp peg
JOIN fs_fiadb.pop_eval_typ pet ON (pet.eval_grp_cn = peg.cn)
JOIN fs_fiadb.pop_eval pev ON (pev.cn = pet.eval_cn)
JOIN fs_fiadb.pop_estn_unit peu ON (pev.cn = peu.eval_cn)
JOIN fs_fiadb.pop_stratum pop_stratum ON (peu.cn = pop_stratum.estn_unit_cn)
JOIN fs_fiadb.pop_plot_stratum_assgn pop_plot_stratum_assgn ON (pop_stratum.cn = pop_plot_stratum_assgn.stratum_cn)
JOIN fs_fiadb.plot plot ON (pop_plot_stratum_assgn.plt_cn = plot.cn)
JOIN fs_fiadb.plotgeom plotgeom ON (plot.cn = plotgeom.cn)
JOIN fs_fiadb.cond cond ON (plot.cn = cond.plt_cn)
JOIN
  (SELECT p.prev_plt_cn,
          t.*
   FROM fs_fiadb.plot p
   JOIN fs_fiadb.tree t ON (p.cn = t.plt_cn)) tree ON ((tree.condid = cond.condid)
                                                       AND (tree.plt_cn = cond.plt_cn))
LEFT OUTER JOIN fs_fiadb.plot pplot ON (plot.prev_plt_cn = pplot.cn)
LEFT OUTER JOIN fs_fiadb.cond pcond ON ((tree.prevcond = pcond.condid)
                                        AND (tree.prev_plt_cn = pcond.plt_cn))
LEFT OUTER JOIN fs_fiadb.tree ptree ON (tree.prev_tre_cn = ptree.cn)
LEFT OUTER JOIN fs_fiadb.tree_grm_begin tre_begin ON (tree.cn = tre_begin.tre_cn)
LEFT OUTER JOIN fs_fiadb.tree_grm_midpt tre_midpt ON (tree.cn = tre_midpt.tre_cn)
LEFT OUTER JOIN
  (SELECT tre_cn,
          dia_begin,
          dia_midpt,
          dia_end,
          subp_component_al_timber AS component,
          subp_subptyp_grm_al_timber AS subptyp_grm,
          subp_tpamort_unadj_al_timber AS tpamort_unadj
   FROM fs_fiadb.tree_grm_component) grm ON (tree.cn = grm.tre_cn)
JOIN fs_fiadb.ref_species ON (tree.spcd = ref_species.spcd)
WHERE ref_species.woodland = 'N'
  AND 1=1
  AND pet.eval_typ = 'EXPMORT'
  AND peg.eval_grp IN (&eval_grp)
  AND 1=1
GROUP BY peg.statecd,
         peg.eval_grp
ORDER BY peg.statecd,
         peg.eval_grp