rankEnrich
----------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/spatial_enrichment.R#L1101
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Function to calculate gene signature enrichment scores per spatial
position using a rank based approach.

Usage
~~~~~

::

   rankEnrich(...)

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``...``                           | Arguments passed on to            |
|                                   | ``runRankEnrich``                 |
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
|                                   | ``output_enrichment``             |
|                                   |    how to return enrichment       |
|                                   |    output                         |
|                                   |                                   |
|                                   | ``ties_method``                   |
|                                   |    how to handle rank ties        |
|                                   |                                   |
|                                   | ``p_value``                       |
|                                   |    calculate p-values (boolean,   |
|                                   |    default = FALSE)               |
|                                   |                                   |
|                                   | ``n_times``                       |
|                                   |    number of permutations to      |
|                                   |    calculate for p_value          |
|                                   |                                   |
|                                   | ``rbp_p``                         |
|                                   |    fractional binarization        |
|                                   |    threshold (default = 0.99)     |
|                                   |                                   |
|                                   | ``num_agg``                       |
|                                   |    number of top genes to         |
|                                   |    aggregate (default = 100)      |
|                                   |                                   |
|                                   | ``name``                          |
|                                   |    to give to spatial enrichment  |
|                                   |    results, default = rank        |
|                                   |                                   |
|                                   | ``return_gobject``                |
|                                   |    return giotto object           |
+-----------------------------------+-----------------------------------+

See Also
~~~~~~~~

``runRankEnrich``
