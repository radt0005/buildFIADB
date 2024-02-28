SELECT peg.eval_grp,
       cond.plt_cn,
       cond.condid,
       cond.condprop_unadj,
       cond.prop_basis,
       pop_stratum.adj_factor_macr,
       pop_stratum.adj_factor_subp,
       pop_stratum.adj_factor_micr,
       pop_stratum.expns,
       coalesce(tree_agg.live_vol, 0) live_vol,
       coalesce(tree_agg.live_micr_n, 0) live_micr_n,
       coalesce(tree_agg.live_subp_n, 0) live_subp_n,
       coalesce(tree_agg.live_macr_n, 0) live_macr_n
FROM fs_fiadb.pop_eval_grp peg
JOIN fs_fiadb.pop_eval_typ pet ON (pet.eval_grp_cn = peg.cn)
JOIN fs_fiadb.pop_eval pev ON (pev.cn = pet.eval_cn)
JOIN fs_fiadb.pop_estn_unit peu ON (pev.cn = peu.eval_cn)
JOIN fs_fiadb.pop_stratum pop_stratum ON (peu.cn = pop_stratum.estn_unit_cn)
JOIN fs_fiadb.pop_plot_stratum_assgn pop_plot_stratum_assgn ON (pop_plot_stratum_assgn.stratum_cn = pop_stratum.cn)
JOIN fs_fiadb.plot ON (pop_plot_stratum_assgn.plt_cn = plot.cn)
JOIN fs_fiadb.plotgeom ON (plot.cn = plotgeom.cn)
JOIN fs_fiadb.cond ON (cond.plt_cn = plot.cn)
LEFT JOIN
  (SELECT tree.plt_cn,
          tree.condid,
          sum(tree.volcfnet * tree.tpa_unadj) live_vol, --adjustment factors are set based on diameter
 --if calculating a lot of variables probably easier to group by plot size
 --see script tree_cond_long.sql
 sum(tree.tpa_unadj * CASE
                          WHEN tree.dia < 5 THEN 1
                          ELSE 0
                      END) live_micr_n,
 sum(tree.tpa_unadj * CASE
                          WHEN tree.dia >= 5
                               AND tree.dia < coalesce(plot.macro_breakpoint_dia, 9999) THEN 1
                          ELSE 0
                      END) live_subp_n,
 sum(tree.tpa_unadj * CASE
                          WHEN tree.dia >= coalesce(plot.macro_breakpoint_dia, 9999) THEN 1
                          ELSE 0
                      END) live_macr_n
   FROM fs_fiadb.tree
   JOIN fs_fiadb.plot ON (tree.plt_cn = plot.cn)
   WHERE tree.statuscd = 1
   GROUP BY tree.plt_cn,
            tree.condid) tree_agg ON (cond.plt_cn = tree_agg.plt_cn
                                      AND cond.condid = tree_agg.condid)
WHERE cond.cond_status_cd = 1
  AND cond.condprop_unadj IS NOT NULL
  AND pet.eval_typ = 'EXPCURR'
  AND peg.eval_grp IN (&eval_grp)
  AND 1=1