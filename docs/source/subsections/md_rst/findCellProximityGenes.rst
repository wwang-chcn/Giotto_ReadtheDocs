======================
findCellProximityGenes
======================

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/spatial_interaction.R#L1164

   :format: latex
..

Description
===========

Identifies cell-to-cell Interaction Changed Features (ICF), i.e.Â genes
that are differentially expressed due to proximity to other cell types.

Usage
=====

.. code:: r

   findCellProximityGenes(...)

Arguments
=========

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``...``                       | Arguments passed on to               |
|                               | ```findInteractionChangedFeats       |
|                               | `` <#findinteractionchangedfeats>`__ |
|                               | list(â€œ:raw-latex:`\n`â€, â€ â€œ,         |
|                               | list(list(list(â€gobjectâ€)),          |
|                               | list(â€œgiotto objectâ€)),              |
|                               | â€œ:raw-latex:`\n`â€, â€ â€œ,              |
|                               | list(list(list(â€feat_typeâ€)),        |
|                               | list(â€œfeature typeâ€)),               |
|                               | â€œ:raw-latex:`\n`â€, â€ â€œ,              |
|                               | list(list(list(â€spat_unitâ€)),        |
|                               | list(â€œspatial unitâ€)),               |
|                               | â€œ:raw-latex:`\n`â€, â€ â€œ,              |
|                               | l                                    |
|                               | ist(list(list(â€expression_valuesâ€)), |
|                               | list(â€œexpression values to useâ€)),   |
|                               | â€œ:raw-latex:`\n`â€, â€ â€œ,              |
|                               | list(list(list(â€selected_featsâ€)),   |
|                               | list(â€œsubset of selected features    |
|                               | (optional)â€)), â€œ:raw-latex:`\n`â€, â€  |
|                               | â€œ,                                   |
|                               | list(list(list(â€cluster_columnâ€)),   |
|                               | list(â€œname of column to use for cell |
|                               | typesâ€)), â€œ:raw-latex:`\n`â€, â€ â€œ,    |
|                               | list(                                |
+-------------------------------+--------------------------------------+

::

   list(list("spatial_network_name")), list("name of spatial network to use")), "\n", "    ", list(list(list("minimum_unique_cells")), list("minimum number of target cells required")), "\n", "    ", list(list(list("minimum_unique_int_cells")), list("minimum number of interacting cells required")), "\n", "    ", list(list(list("diff_test")), list("which differential expression test")), "\n", "    ", list(list(list("mean_method")), list("method to use to calculate the mean")), "\n", "    ", list(list(
   list("offset")), list("offset value to use when calculating log2 ratio")), "\n", "    ", list(list(list("adjust_method")), list("which method to adjust p-values")), "\n", "    ", list(list(list("nr_permutations")), list("number of permutations if diff_test = permutation")), "\n", "    ", list(list(list("exclude_selected_cells_from_test")), list("exclude interacting cells other cells")), "\n", "    ", list(list(list("do_parallel")), list("run calculations in parallel with mclapply")), "\n", "    ", 
   list(list(list("set_seed")), list("set a seed for reproducibility")), "\n", "    ", list(list(list("seed_number")), list("seed number")), "\n", "  ")

Seealso
=======

```findInteractionChangedFeats`` <#findinteractionchangedfeats>`__
