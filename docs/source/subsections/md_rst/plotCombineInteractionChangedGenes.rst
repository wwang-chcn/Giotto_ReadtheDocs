==================================
plotCombineInteractionChangedGenes
==================================

:Date: 1/19/23

https://github.com/drieslab/Giotto/tree/suite/R/spatial_interaction_visuals.R#L1818



   :format: latex
..

``plotCombineInteractionChangedGenes``
======================================

plotCombineInteractionChangedGenes

Description
-----------

Create visualization for combined (pairwise) ICF scores

Usage
-----

.. code:: r

   plotCombineInteractionChangedGenes(...)

Arguments
---------

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``...``                       | Arguments passed on to               |
|                               | ```plotC                             |
|                               | ombineInteractionChangedFeats`` <#pl |
|                               | otcombineinteractionchangedfeats>`__ |
|                               | list(â€œ:raw-latex:`\n`â€, â€ â€œ,         |
|                               | list(list(list(â€gobjectâ€)),          |
|                               | list(â€œgiotto objectâ€)),              |
|                               | â€œ:raw-latex:`\n`â€, â€ â€œ,              |
|                               | list(list(list(â€combIcfObjectâ€)),    |
|                               | list(â€œICFscores, output from         |
|                               | combineInteractionChangedFeats()â€)), |
|                               | â€œ:raw-latex:`\n`â€, â€ â€œ,              |
|                               | list(                                |
|                               | list(list(â€selected_interactionsâ€)), |
|                               | list(â€œinteractions to showâ€)),       |
|                               | â€œ:raw-latex:`\n`â€, â€ â€œ,              |
|                               | list(                                |
|                               | list(list(â€selected_feat_to_featâ€)), |
|                               | list(â€œpairwise feature combinations  |
|                               | to showâ€)), â€œ:raw-latex:`\n`â€, â€ â€œ,  |
|                               | list(list(list(â€detail_plotâ€)),      |
|                               | list(â€œshow detailed info in both     |
|                               | interacting cell typesâ€)),           |
|                               | â€œ:raw-latex:`\n`â€, â€ â€œ, list(        |
+-------------------------------+--------------------------------------+

::

   list(list("simple_plot")), list("show a simplified plot")), "\n", "    ", list(list(list("simple_plot_facet")), list("facet on interactions or feats with simple plot")), "\n", "    ", list(list(list("facet_scales")), list("ggplot facet scales paramter")), "\n", "    ", list(list(list("facet_ncol")), list("ggplot facet ncol parameter")), "\n", "    ", list(list(list("facet_nrow")), list("ggplot facet nrow parameter")), "\n", "    ", list(list(list("colors")), list("vector with two colors to use")), 
   "\n", "    ", list(list(list("show_plot")), list("show plots")), "\n", "    ", list(list(list("return_plot")), list("return plotting object")), "\n", "    ", list(list(list("save_plot")), list("directly save the plot [boolean]")), "\n", "    ", list(list(list("save_param")), list("list of saving parameters from ", list(list("all_plots_save_function")))), "\n", "    ", list(list(list("default_save_name")), list("default save name for saving, don't change, change save_name in save_param")), "\n", 
   "  ")

Seealso
-------

```plotCombineInteractionChangedFeats`` <#plotcombineinteractionchangedfeats>`__
