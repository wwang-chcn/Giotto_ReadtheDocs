
``do_spatial_knn_smoothing``
================================

do_spatial_knn_smoothing

Description
-----------

smooth gene expression over a kNN spatial network

Usage
-----

.. code-block:: r

   do_spatial_knn_smoothing(
     gobject,
     expression_values = c("normalized", "scaled", "custom"),
     subset_genes = NULL,
     spatial_network_name = "Delaunay_network",
     b = NULL
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
     - gene expression values to use
   * - ``subset_genes``
     - subset of genes to use
   * - ``spatial_network_name``
     - name of spatial network to use
   * - ``b``
     - smoothing factor beteen 0 and 1 (default: automatic)


Details
-------

This function will smoothen the gene expression values per cell according to
 its neighbors in the selected spatial network. list() 
 b is a smoothening factor that defaults to 1 - 1/k, where k is the median number of
 k-neighbors in the selected spatial network. Setting b = 0 means no smoothing and b = 1
 means no contribution from its own expression.

Value
-----

matrix with smoothened gene expression values based on kNN spatial network
