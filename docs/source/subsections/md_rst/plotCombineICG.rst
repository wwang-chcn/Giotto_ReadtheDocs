==============
plotCombineICG
==============

:Date: 2022-10-06

.. role:: raw-latex(raw)
   :format: latex
..

Description
===========

Create visualization for combined (pairwise) ICF scores

Usage
=====

.. code:: r

   plotCombineICG(...)

Arguments
=========

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``...``                       | Arguments passed on to               |
|                               | ```p                                 |
|                               | lotCombineICF`` <#plotcombineicf>`__ |
|                               | list(“:raw-latex:`\n`”, ” “,         |
|                               | list(list(list(”gobject”)),          |
|                               | list(“giotto object”)),              |
|                               | “:raw-latex:`\n`”, ” “,              |
|                               | list(list(list(”combIcfObject”)),    |
|                               | list(“ICFscores, output from         |
|                               | combineInteractionChangedFeats()”)), |
|                               | “:raw-latex:`\n`”, ” “,              |
|                               | list(                                |
|                               | list(list(”selected_interactions”)), |
|                               | list(“interactions to show”)),       |
|                               | “:raw-latex:`\n`”, ” “,              |
|                               | list(                                |
|                               | list(list(”selected_feat_to_feat”)), |
|                               | list(“pairwise feature combinations  |
|                               | to show”)), “:raw-latex:`\n`”, ” “,  |
|                               | list(list(list(”detail_plot”)),      |
|                               | list(“show detailed info in both     |
|                               | interacting cell types”)),           |
|                               | “:raw-latex:`\n`”, ” “, list(        |
+-------------------------------+--------------------------------------+

::

   list(list("simple_plot")), list("show a simplified plot")), "\n", "    ", list(list(list("simple_plot_facet")), list("facet on interactions or feats with simple plot")), "\n", "    ", list(list(list("facet_scales")), list("ggplot facet scales paramter")), "\n", "    ", list(list(list("facet_ncol")), list("ggplot facet ncol parameter")), "\n", "    ", list(list(list("facet_nrow")), list("ggplot facet nrow parameter")), "\n", "    ", list(list(list("colors")), list("vector with two colors to use")), 
   "\n", "    ", list(list(list("show_plot")), list("show plots")), "\n", "    ", list(list(list("return_plot")), list("return plotting object")), "\n", "    ", list(list(list("save_plot")), list("directly save the plot [boolean]")), "\n", "    ", list(list(list("save_param")), list("list of saving parameters from ", list(list("all_plots_save_function")))), "\n", "    ", list(list(list("default_save_name")), list("default save name for saving, don't change, change save_name in save_param")), "\n", 
   "  ")

Seealso
=======

```plotCombineICF`` <#plotcombineicf>`__
