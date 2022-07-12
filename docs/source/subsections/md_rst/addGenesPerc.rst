
``addGenesPerc``
====================

addGenesPerc

Description
-----------

calculates the total percentage of (normalized) counts for a subset of selected genes

Usage
-----

.. code-block:: r

   addGenesPerc(
     gobject,
     expression_values = c("normalized", "scaled", "custom"),
     genes = NULL,
     vector_name = "gene_perc",
     return_gobject = TRUE
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
     - vector of selected genes
   * - ``vector_name``
     - column name as seen in pDataDT()
   * - ``return_gobject``
     - boolean: return giotto object (default = TRUE)


Value
-----

giotto object if return_gobject = TRUE, else a vector with % results

Examples
--------

.. code-block:: r

   data(mini_giotto_single_cell)

   # select genes (e.g. Rpl or mitochondrial)
   random_genes = sample(slot(mini_giotto_single_cell, 'gene_ID'), 5)

   # calculate percentage of those selected genes per cells/spot
   updated_giotto_object = addGenesPerc(mini_giotto_single_cell,
   genes = random_genes,
   vector_name = 'random_gene_perc')

   # visualize result in data.table format
   pDataDT(updated_giotto_object)
