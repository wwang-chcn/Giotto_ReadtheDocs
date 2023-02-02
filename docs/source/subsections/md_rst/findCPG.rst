findCPG
-------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/spatial_interaction.R#L1302
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Identifies cell-to-cell Interaction Changed Features (ICF), i.e. genes
that are differentially expressed due to proximity to other cell types.

Usage
~~~~~

::

   findCPG(...)

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``...``                           | Arguments passed on to            |
|                                   | ``findICF``                       |
|                                   |                                   |
|                                   | ``gobject``                       |
|                                   |    giotto object                  |
|                                   |                                   |
|                                   | ``feat_type``                     |
|                                   |    feature type                   |
|                                   |                                   |
|                                   | ``spat_unit``                     |
|                                   |    spatial unit                   |
|                                   |                                   |
|                                   | ``expression_values``             |
|                                   |    expression values to use       |
|                                   |                                   |
|                                   | ``selected_feats``                |
|                                   |    subset of selected features    |
|                                   |    (optional)                     |
|                                   |                                   |
|                                   | ``cluster_column``                |
|                                   |    name of column to use for cell |
|                                   |    types                          |
|                                   |                                   |
|                                   | ``spatial_network_name``          |
|                                   |    name of spatial network to use |
|                                   |                                   |
|                                   | ``minimum_unique_cells``          |
|                                   |    minimum number of target cells |
|                                   |    required                       |
|                                   |                                   |
|                                   | ``minimum_unique_int_cells``      |
|                                   |    minimum number of interacting  |
|                                   |    cells required                 |
|                                   |                                   |
|                                   | ``diff_test``                     |
|                                   |    which differential expression  |
|                                   |    test                           |
|                                   |                                   |
|                                   | ``mean_method``                   |
|                                   |    method to use to calculate the |
|                                   |    mean                           |
|                                   |                                   |
|                                   | ``offset``                        |
|                                   |    offset value to use when       |
|                                   |    calculating log2 ratio         |
|                                   |                                   |
|                                   | ``adjust_method``                 |
|                                   |    which method to adjust         |
|                                   |    p-values                       |
|                                   |                                   |
|                                   | ``nr_permutations``               |
|                                   |    number of permutations if      |
|                                   |    diff_test = permutation        |
|                                   |                                   |
|                                   | ``exclude_selected_cells_from_tes |
|                                   | t``                               |
|                                   |                                   |
|                                   | : exclude interacting cells other |
|                                   | cells                             |
|                                   |                                   |
|                                   | ``do_parallel``                   |
|                                   |    run calculations in parallel   |
|                                   |    with mclapply                  |
|                                   |                                   |
|                                   | ``set_seed``                      |
|                                   |    set a seed for reproducibility |
|                                   |                                   |
|                                   | ``seed_number``                   |
|                                   |    seed number                    |
+-----------------------------------+-----------------------------------+

See Also
~~~~~~~~

``findICF``
