heatmSpatialCorGenes
--------------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/spatial_genes.R#L3800
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Create heatmap of spatially correlated genes

Usage
~~~~~

::

   heatmSpatialCorGenes(...)

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``...``                           | Arguments passed on to            |
|                                   | ``heatmSpatialCorFeats``          |
|                                   |                                   |
|                                   | ``gobject``                       |
|                                   |    giotto object                  |
|                                   |                                   |
|                                   | ``spatCorObject``                 |
|                                   |    spatial correlation object     |
|                                   |                                   |
|                                   | ``use_clus_name``                 |
|                                   |    name of clusters to visualize  |
|                                   |    (from                          |
|                                   |    clusterSpatialCorFeats())      |
|                                   |                                   |
|                                   | ``show_cluster_annot``            |
|                                   |    show cluster annotation on top |
|                                   |    of heatmap                     |
|                                   |                                   |
|                                   | ``show_row_dend``                 |
|                                   |    show row dendrogram            |
|                                   |                                   |
|                                   | ``show_column_dend``              |
|                                   |    show column dendrogram         |
|                                   |                                   |
|                                   | ``show_row_names``                |
|                                   |    show row names                 |
|                                   |                                   |
|                                   | ``show_column_names``             |
|                                   |    show column names              |
|                                   |                                   |
|                                   | ``show_plot``                     |
|                                   |    show plot                      |
|                                   |                                   |
|                                   | ``return_plot``                   |
|                                   |    return ggplot object           |
|                                   |                                   |
|                                   | ``save_plot``                     |
|                                   |    directly save the plot         |
|                                   |    [boolean]                      |
|                                   |                                   |
|                                   | ``save_param``                    |
|                                   |    list of saving parameters, see |
|                                   |    ``showSaveParameters``         |
|                                   |                                   |
|                                   | ``default_save_name``             |
|                                   |    default save name for saving,  |
|                                   |    don't change, change save_name |
|                                   |    in save_param                  |
+-----------------------------------+-----------------------------------+

See Also
~~~~~~~~

``heatmSpatialCorFeats``
