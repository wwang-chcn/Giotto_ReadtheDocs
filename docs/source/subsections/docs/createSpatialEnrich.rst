createSpatialEnrich
-------------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/spatial_enrichment.R#L1412
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Function to calculate gene signature enrichment scores per spatial
position using an enrichment test.

Usage
~~~~~

::

   createSpatialEnrich(...)

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``...``                           | Arguments passed on to            |
|                                   | ``runSpatialEnrich``              |
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
|                                   | ``enrich_method``                 |
|                                   |    method for gene signature      |
|                                   |    enrichment calculation         |
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
|                                   | ``min_overlap_genes``             |
|                                   |    minimum number of overlapping  |
|                                   |    genes in sign_matrix required  |
|                                   |    to calculate enrichment (PAGE) |
|                                   |                                   |
|                                   | ``logbase``                       |
|                                   |    log base to use if             |
|                                   |    reverse_log_scale = TRUE       |
|                                   |                                   |
|                                   | ``p_value``                       |
|                                   |    calculate p-value (default =   |
|                                   |    FALSE)                         |
|                                   |                                   |
|                                   | ``n_times``                       |
|                                   |    (page/rank) number of          |
|                                   |    permutation iterations to      |
|                                   |    calculate p-value              |
|                                   |                                   |
|                                   | ``rbp_p``                         |
|                                   |    (rank) fractional binarization |
|                                   |    threshold (default = 0.99)     |
|                                   |                                   |
|                                   | ``num_agg``                       |
|                                   |    (rank) number of top genes to  |
|                                   |    aggregate (default = 100)      |
|                                   |                                   |
|                                   | ``max_block``                     |
|                                   |    number of lines to process     |
|                                   |    together (default = 20e6)      |
|                                   |                                   |
|                                   | ``top_percentage``                |
|                                   |    (hyper) percentage of cells    |
|                                   |    that will be considered to     |
|                                   |    have gene expression with      |
|                                   |    matrix binarization            |
|                                   |                                   |
|                                   | ``output_enrichment``             |
|                                   |    how to return enrichment       |
|                                   |    output                         |
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

``runSpatialEnrich``
