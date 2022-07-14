
``calculateMetaTable``
==========================

calculateMetaTable

Description
-----------

calculates the average gene expression for one or more (combined) annotation columns.

Usage
-----

.. code-block:: r

   calculateMetaTable(
     gobject,
     expression_values = c("normalized", "scaled", "custom"),
     metadata_cols = NULL,
     selected_genes = NULL
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
   * - ``metadata_cols``
     - annotation columns found in pDataDT(gobject)
   * - ``selected_genes``
     - subset of genes to use


Value
-----

data.table with average expression values for each gene per (combined) annotation

Examples
--------

.. code-block:: r

   data(mini_giotto_single_cell)

   # show cell metadata
   pDataDT(mini_giotto_single_cell)

   # show average gene expression per annotated cell type
   calculateMetaTable(mini_giotto_single_cell,
   metadata_cols = 'cell_types')
