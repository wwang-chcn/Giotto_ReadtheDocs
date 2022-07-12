
``showClusterHeatmap``
==========================

showClusterHeatmap

Description
-----------

Creates heatmap based on identified clusters

Usage
-----

.. code-block:: r

   showClusterHeatmap(
     gobject,
     expression_values = c("normalized", "scaled", "custom"),
     genes = "all",
     cluster_column,
     cor = c("pearson", "spearman"),
     distance = "ward.D",
     show_plot = NA,
     return_plot = NA,
     save_plot = NA,
     save_param = list(),
     default_save_name = "showClusterHeatmap",
     ...
   )

Arguments
---------

.. list-table::
   :header-rows: 1

   * - Argument
     - Description
   * - ``gobject``
     - giotto object
   * - ``expression_values``
     - expression values to use
   * - ``genes``
     - vector of genes to use, default to 'all'
   * - ``cluster_column``
     - name of column to use for clusters
   * - ``cor``
     - correlation score to calculate distance
   * - ``distance``
     - distance method to use for hierarchical clustering
   * - ``show_plot``
     - show plot
   * - ``return_plot``
     - return ggplot object
   * - ``save_plot``
     - directly save the plot [boolean]
   * - ``save_param``
     - list of saving parameters, see `\ ``showSaveParameters`` <#showsaveparameters>`_
   * - ``default_save_name``
     - default save name for saving, don't change, change save_name in save_param
   * - ``...``
     - additional parameters for the Heatmap function from ComplexHeatmap


Details
-------

Correlation heatmap of selected clusters.

Value
-----

ggplot

Examples
--------

.. code-block:: r

   data(mini_giotto_single_cell)

   # cell metadata
   cell_metadata = pDataDT(mini_giotto_single_cell)

   # create heatmap
   showClusterHeatmap(mini_giotto_single_cell,
   cluster_column = 'cell_types')
