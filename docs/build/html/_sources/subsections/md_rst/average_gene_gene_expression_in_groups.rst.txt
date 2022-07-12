
``average_gene_gene_expression_in_groups``
==============================================

average_gene_gene_expression_in_groups

Description
-----------

calculate average expression per cluster

Usage
-----

.. code-block:: r

   average_gene_gene_expression_in_groups(
     gobject,
     cluster_column = "cell_types",
     gene_set_1,
     gene_set_2
   )

Arguments
---------

.. list-table::
   :header-rows: 1

   * - Argument
     - Description
   * - ``gobject``
     - giotto object to use
   * - ``cluster_column``
     - cluster column with cell type information
   * - ``gene_set_1``
     - first specific gene set from gene pairs
   * - ``gene_set_2``
     - second specific gene set from gene pairs


Value
-----

data.table with average expression scores for each cluster
