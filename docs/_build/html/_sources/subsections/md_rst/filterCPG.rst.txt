
``filterCPG``
=================

filterCPG

Description
-----------

Filter Interaction Changed Gene scores.

Usage
-----

.. code-block:: r

   filterCPG(...)

Arguments
---------

.. list-table::
   :header-rows: 1

   * - Argument
     - Description
   * - ``...``
     - Arguments passed on to `\ ``filterICG`` <#filtericg>`_   list("\n", "    ", list(list(list("cpgObject")), list("ICG (interaction changed gene) score object")), "\n", "    ", list(list(list("min_cells")), list("minimum number of source cell type")), "\n", "    ", list(list(list("min_cells_expr")), list("minimum expression level for source cell type")), "\n", "    ", list(list(list("min_int_cells")), list("minimum number of interacting neighbor cell type")), "\n", "    ", list(list(list("min_int_cells_expr")), list("minimum expression level for interacting neighbor cell type")), 


.. code-block::

   "\n", "    ", list(list(list("min_fdr")), list("minimum adjusted p-value")), "\n", "    ", list(list(list("min_spat_diff")), list("minimum absolute spatial expression difference")), "\n", "    ", list(list(list("min_log2_fc")), list("minimum log2 fold-change")), "\n", "    ", list(list(list("min_zscore")), list("minimum z-score change")), "\n", "    ", list(list(list("zscores_column")), list("calculate z-scores over cell types or genes")), "\n", "    ", list(list(list("direction")), list("differential expression directions to keep")), 
   "\n", "  ")



Seealso
-------

`\ ``filterICG`` <#filtericg>`_
