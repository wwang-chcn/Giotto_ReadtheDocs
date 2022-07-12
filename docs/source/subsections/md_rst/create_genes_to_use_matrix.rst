
``create_genes_to_use_matrix``
==================================

create_genes_to_use_matrix

Description
-----------

subsets matrix based on vector of genes or hvg column

Usage
-----

.. code-block:: r

   create_genes_to_use_matrix(gobject, sel_matrix, genes_to_use, verbose = TRUE)

Arguments
---------

.. list-table::
   :header-rows: 1

   * - Argument
     - Description
   * - ``gobject``
     - giotto object
   * - ``sel_matrix``
     - selected expression matrix
   * - ``genes_to_use``
     - genes to use, character or vector of genes
   * - ``verbose``
     - verbosity


Value
-----

subsetted matrix based on selected genes
