
``processGiotto``
=====================

processGiotto

Description
-----------

Wrapper for the different Giotto object processing functions

Usage
-----

.. code-block:: r

   processGiotto(
     gobject,
     filter_params = list(),
     norm_params = list(),
     stat_params = list(),
     adjust_params = list(),
     verbose = TRUE
   )

Arguments
---------

.. list-table::
   :header-rows: 1

   * - Argument
     - Description
   * - ``gobject``
     - giotto object
   * - ``filter_params``
     - additional parameters to filterGiotto
   * - ``norm_params``
     - additional parameters to normalizeGiotto
   * - ``stat_params``
     - additional parameters to addStatistics
   * - ``adjust_params``
     - additional parameters to adjustGiottoMatrix
   * - ``verbose``
     - be verbose (default is TRUE)


Details
-------

See `\ ``filterGiotto`` <#filtergiotto>`_ , `\ ``normalizeGiotto`` <#normalizegiotto>`_ ,
 `\ ``addStatistics`` <#addstatistics>`_ and `\ ``adjustGiottoMatrix`` <#adjustgiottomatrix>`_ for more
 information about the different parameters in each step. If you do not provide
 them it will use the default values.

Value
-----

giotto object

Examples
--------

.. code-block:: r

   data(mini_giotto_single_cell)

   processed_object = processGiotto(mini_giotto_single_cell,
   filter_params = list(gene_det_in_min_cells = 10,
   min_det_genes_per_cell = 10))
