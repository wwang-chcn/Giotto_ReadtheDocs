.. role:: raw-html-m2r(raw)
   :format: html


``runPCA``
==============

runPCA

Description
-----------

runs a Principal Component Analysis

Usage
-----

.. code-block:: r

   runPCA(
     gobject,
     expression_values = c("normalized", "scaled", "custom"),
     reduction = c("cells", "genes"),
     name = "pca",
     genes_to_use = "hvg",
     return_gobject = TRUE,
     center = TRUE,
     scale_unit = TRUE,
     ncp = 100,
     method = c("irlba", "factominer"),
     rev = FALSE,
     set_seed = TRUE,
     seed_number = 1234,
     verbose = TRUE,
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
   * - ``reduction``
     - cells or genes
   * - ``name``
     - arbitrary name for PCA run
   * - ``genes_to_use``
     - subset of genes to use for PCA
   * - ``return_gobject``
     - boolean: return giotto object (default = TRUE)
   * - ``center``
     - center data first (default = TRUE)
   * - ``scale_unit``
     - scale features before PCA (default = TRUE)
   * - ``ncp``
     - number of principal components to calculate
   * - ``method``
     - which implementation to use
   * - ``rev``
     - do a reverse PCA
   * - ``set_seed``
     - use of seed
   * - ``seed_number``
     - seed number to use
   * - ``verbose``
     - verbosity of the function
   * - ``...``
     - additional parameters for PCA (see details)


Details
-------

See `\ ``prcomp_irlba`` <#prcompirlba>`_ and `\ ``PCA`` <#pca>`_ for more information about other parameters.


* 
  genes_to_use = NULL: will use all genes from the selected matrix  

* 
  genes_to_use = :raw-html-m2r:`<hvg name>`\ : can be used to select a column name of highly variable genes, created by (see `\ ``calculateHVG`` <#calculatehvg>`_ )  

* 
  genes_to_use = c('geneA', 'geneB', ...): will use all manually provided genes

Value
-----

giotto object with updated PCA dimension recuction

Examples
--------

.. code-block:: r

   data(mini_giotto_single_cell)

   # run PCA
   mini_giotto_single_cell <- runPCA(gobject = mini_giotto_single_cell,
   center = TRUE, scale_unit = TRUE)

   # plot PCA results
   plotPCA(mini_giotto_single_cell)
