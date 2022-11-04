====================
heatmSpatialCorGenes
====================

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/spatial_genes.R#L3781

   :format: latex
..

Description
===========

Create heatmap of spatially correlated genes

Usage
=====

.. code:: r

   heatmSpatialCorGenes(...)

Arguments
=========

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``...``                       | Arguments passed on to               |
|                               | ```heatmSpatialC                     |
|                               | orFeats`` <#heatmspatialcorfeats>`__ |
|                               | list(â€œ:raw-latex:`\n`â€, â€ â€œ,         |
|                               | list(list(list(â€gobjectâ€)),          |
|                               | list(â€œgiotto objectâ€)),              |
|                               | â€œ:raw-latex:`\n`â€, â€ â€œ,              |
|                               | list(list(list(â€spatCorObjectâ€)),    |
|                               | list(â€œspatial correlation objectâ€)), |
|                               | â€œ:raw-latex:`\n`â€, â€ â€œ,              |
|                               | list(list(list(â€use_clus_nameâ€)),    |
|                               | list(â€œname of clusters to visualize  |
|                               | (from clusterSpatialCorFeats())â€)),  |
|                               | â€œ:raw-latex:`\n`â€, â€ â€œ,              |
|                               | li                                   |
|                               | st(list(list(â€show_cluster_annotâ€)), |
|                               | list(â€œshow cluster annotation on top |
|                               | of heatmapâ€)), â€œ:raw-latex:`\n`â€, â€  |
|                               | â€œ, list(list(list(â€show_row_dendâ€)), |
|                               | list(â€œshow row dendrogramâ€)),        |
|                               | â€œ:raw-latex:`\n`â€, â€ â€œ,              |
|                               | list(list(list(â€show_column_dendâ€)), |
+-------------------------------+--------------------------------------+

::

   list("show column dendrogram")), "\n", "    ", list(list(list("show_row_names")), list("show row names")), "\n", "    ", list(list(list("show_column_names")), list("show column names")), "\n", "    ", list(list(list("show_plot")), list("show plot")), "\n", "    ", list(list(list("return_plot")), list("return ggplot object")), "\n", "    ", list(list(list("save_plot")), list("directly save the plot [boolean]")), "\n", "    ", list(list(list("save_param")), list("list of saving parameters, see ", 
   list(list("showSaveParameters")))), "\n", "    ", list(list(list("default_save_name")), list("default save name for saving, don't change, change save_name in save_param")), "\n", "  ")

Seealso
=======

```heatmSpatialCorFeats`` <#heatmspatialcorfeats>`__
