SELECT peg.eval_grp,
       ccm.prev_plt_cn,
       ccm.prevcond prev_cond,
       ccm.plt_cn,
       ccm.condid,
       CASE
           WHEN ccm.subptyp = 1 THEN pop_stratum.adj_factor_subp
           ELSE pop_stratum.adj_factor_macr
       END adj_factor,
       ccm.prop_chng,
       pop_stratum.expns
FROM fs_fiadb.pop_eval_grp peg
JOIN fs_fiadb.pop_eval_typ pet ON (pet.eval_grp_cn = peg.cn)
JOIN fs_fiadb.pop_eval pev ON (pev.cn = pet.eval_cn)
JOIN fs_fiadb.pop_estn_unit peu ON (pev.cn = peu.eval_cn)
JOIN fs_fiadb.pop_stratum pop_stratum ON (peu.cn = pop_stratum.estn_unit_cn)
JOIN fs_fiadb.pop_plot_stratum_assgn pop_plot_stratum_assgn ON (pop_plot_stratum_assgn.stratum_cn = pop_stratum.cn)
JOIN fs_fiadb.plot plot ON (pop_plot_stratum_assgn.plt_cn = plot.cn)
JOIN fs_fiadb.plot pplot ON (plot.prev_plt_cn = pplot.cn)
JOIN fs_fiadb.plotgeom plotgeom ON (plot.cn = plotgeom.cn)
JOIN fs_fiadb.cond cond ON (cond.plt_cn = plot.cn)
JOIN fs_fiadb.cond pcond ON (pcond.plt_cn = plot.prev_plt_cn)
JOIN
  (SELECT sccm.prev_plt_cn,
          sccm.plt_cn,
          sccm.prevcond,
          sccm.condid,
          sccm.subptyp,
          sum(sccm.subptyp_prop_chng / 4) prop_chng
   FROM fs_fiadb.subp_cond_chng_mtrx sccm
   JOIN fs_fiadb.cond ON (sccm.plt_cn= cond.plt_cn
                          AND sccm.condid = cond.condid)
   WHERE (sccm.subptyp = 3
          AND cond.prop_basis = 'MACR')
     OR (sccm.subptyp = 1
         AND cond.prop_basis = 'SUBP')
   GROUP BY sccm.prev_plt_cn,
            sccm.plt_cn,
            sccm.prevcond,
            sccm.condid,
            sccm.subptyp) ccm ON (ccm.plt_cn = cond.plt_cn
                                  AND ccm.prev_plt_cn = pcond.plt_cn
                                  AND ccm.condid = cond.condid
                                  AND ccm.prevcond = pcond.condid)
WHERE cond.condprop_unadj IS NOT NULL
  AND cond.cond_status_cd = 1
  AND pcond.cond_status_cd = 1
  AND coalesce(cond.cond_nonsample_reasn_cd, 0) = 0
  AND coalesce(pcond.cond_nonsample_reasn_cd, 0) = 0
  AND pet.eval_typ = 'EXPCHNG'
  AND peg.eval_grp IN (&EVAL_GRP)
  AND 1=1;