trendSceek
----------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/spatial_genes.R#L2163
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Compute spatial variable genes with trendsceek method

Usage
~~~~~

::

   trendSceek(
     gobject,
     feat_type = NULL,
     spat_unit = NULL,
     spat_loc_name = "raw",
     expression_values = c("normalized", "raw"),
     subset_genes = NULL,
     nrand = 100,
     ncores = 8,
     ...
   )

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``gobject``                       | Giotto object                     |
+-----------------------------------+-----------------------------------+
| ``feat_type``                     | feature type                      |
+-----------------------------------+-----------------------------------+
| ``spat_unit``                     | spatial unit                      |
+-----------------------------------+-----------------------------------+
| ``spat_loc_name``                 | name for spatial locations        |
+-----------------------------------+-----------------------------------+
| ``expression_values``             | gene expression values to use     |
+-----------------------------------+-----------------------------------+
| ``subset_genes``                  | subset of genes to run trendsceek |
|                                   | on                                |
+-----------------------------------+-----------------------------------+
| ``nrand``                         | An integer specifying the number  |
|                                   | of random resamplings of the mark |
|                                   | distribution as to create the     |
|                                   | null-distribution.                |
+-----------------------------------+-----------------------------------+
| ``ncores``                        | An integer specifying the number  |
|                                   | of cores to be used by            |
|                                   | BiocParallel                      |
+-----------------------------------+-----------------------------------+
| ``...``                           | Additional parameters to the      |
|                                   | ``trendsceek_test`` function      |
+-----------------------------------+-----------------------------------+

Details
~~~~~~~

This function is a wrapper for the trendsceek_test method implemented in
the trendsceek package Publication:
`doi:10.1038/nmeth.4634 <https://doi.org/10.1038/nmeth.4634>`__

Value
~~~~~

data.frame with trendsceek spatial genes results
