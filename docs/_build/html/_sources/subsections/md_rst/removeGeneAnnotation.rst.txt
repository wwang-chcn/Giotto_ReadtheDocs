
``removeGeneAnnotation``
============================

removeGeneAnnotation

Description
-----------

removes gene annotation of giotto object

Usage
-----

.. code-block:: r

   removeGeneAnnotation(gobject, columns = NULL, return_gobject = TRUE)

Arguments
---------

.. list-table::
   :header-rows: 1

   * - Argument
     - Description
   * - ``gobject``
     - giotto object
   * - ``columns``
     - names of columns to remove
   * - ``return_gobject``
     - boolean: return giotto object (default = TRUE)


Details
-------

if return_gobject = FALSE, it will return the gene metadata

Value
-----

giotto object

Examples
--------

.. code-block:: r

   data(mini_giotto_single_cell) # load full mini giotto object

   # show gene metadata
   fDataDT(mini_giotto_single_cell)

   # remove nr_cells column
   mini_giotto_single_cell = removeGeneAnnotation(mini_giotto_single_cell,
   columns = 'nr_cells')
