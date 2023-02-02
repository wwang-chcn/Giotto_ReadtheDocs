hyperGeometricEnrich
--------------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/spatial_enrichment.R#L1287
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Function to calculate gene signature enrichment scores per spatial
position using a hypergeometric test.

Usage
~~~~~

::

   hyperGeometricEnrich(...)

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``...``                           | Arguments passed on to            |
|                                   | ``runHyperGeometricEnrich``       |
|                                   |                                   |
|                                   | ``gobject``                       |
|                                   |    Giotto object                  |
|                                   |                                   |
|                                   | ``spat_unit``                     |
|                                   |    spatial unit                   |
|                                   |                                   |
|                                   | ``feat_type``                     |
|                                   |    feature type                   |
|                                   |                                   |
|                                   | ``sign_matrix``                   |
|                                   |    Matrix of signature genes for  |
|                                   |    each cell type / process       |
|                                   |                                   |
|                                   | ``expression_values``             |
|                                   |    expression values to use       |
|                                   |                                   |
|                                   | ``reverse_log_scale``             |
|                                   |    reverse expression values from |
|                                   |    log scale                      |
|                                   |                                   |
|                                   | ``logbase``                       |
|                                   |    log base to use if             |
|                                   |    reverse_log_scale = TRUE       |
|                                   |                                   |
|                                   | ``top_percentage``                |
|                                   |    percentage of cells that will  |
|                                   |    be considered to have gene     |
|                                   |    expression with matrix         |
|                                   |    binarization                   |
|                                   |                                   |
|                                   | ``output_enrichment``             |
|                                   |    how to return enrichment       |
|                                   |    output                         |
|                                   |                                   |
|                                   | ``p_value``                       |
|                                   |    calculate p-values (boolean,   |
|                                   |    default = FALSE)               |
|                                   |                                   |
|                                   | ``name``                          |
|                                   |    to give to spatial enrichment  |
|                                   |    results, default =             |
|                                   |    hypergeometric                 |
|                                   |                                   |
|                                   | ``return_gobject``                |
|                                   |    return giotto object           |
+-----------------------------------+-----------------------------------+

See Also
~~~~~~~~

``runHyperGeometricEnrich``
