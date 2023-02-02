PAGEEnrich
----------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/spatial_enrichment.R#L848
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Function to calculate gene signature enrichment scores per spatial
position using PAGE.

Usage
~~~~~

::

   PAGEEnrich(...)

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``...``                           | Arguments passed on to            |
|                                   | ``runPAGEEnrich``                 |
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
|                                   | ``min_overlap_genes``             |
|                                   |    minimum number of overlapping  |
|                                   |    genes in sign_matrix required  |
|                                   |    to calculate enrichment        |
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
|                                   | ``p_value``                       |
|                                   |    calculate p-values (boolean,   |
|                                   |    default = FALSE)               |
|                                   |                                   |
|                                   | ``include_depletion``             |
|                                   |    calculate both enrichment and  |
|                                   |    depletion                      |
|                                   |                                   |
|                                   | ``n_times``                       |
|                                   |    number of permutations to      |
|                                   |    calculate for p_value          |
|                                   |                                   |
|                                   | ``max_block``                     |
|                                   |    number of lines to process     |
|                                   |    together (default = 20e6)      |
|                                   |                                   |
|                                   | ``name``                          |
|                                   |    to give to spatial enrichment  |
|                                   |    results, default = PAGE        |
|                                   |                                   |
|                                   | ``verbose``                       |
|                                   |    be verbose                     |
|                                   |                                   |
|                                   | ``return_gobject``                |
|                                   |    return giotto object           |
+-----------------------------------+-----------------------------------+

See Also
~~~~~~~~

``runPAGEEnrich``
