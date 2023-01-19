=========================
combineCellProximityGenes
=========================

:Date: 1/19/23

https://github.com/drieslab/Giotto/tree/suite/R/spatial_interaction.R#L1917


``combineCellProximityGenes``
=============================

combineCellProximityGenes

Description
-----------

Combine ICF scores in a pairwise manner.

Usage
-----

.. code:: r

   combineCellProximityGenes(...)

Arguments
---------

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``...``                       | Arguments passed on to               |
|                               | ```combineInteractionChangedFeats``  |
|                               | <#combineinteractionchangedfeats>`__ |
|                               | list(“:raw-latex:`\n`�, � “,         |
|                               | list(list(list(�icfObject�)),        |
|                               | list(“ICF (interaction changed feat) |
|                               | score object�)), “:raw-latex:`\n`�,  |
|                               | � “,                                 |
|                               | list(list(list(�selected_ints�)),    |
|                               | list(“subset of selected cell-cell   |
|                               | interactions (optional)�)),          |
|                               | “:raw-latex:`\n`�, � “,              |
|                               | list(list(list(�selected_feats�)),   |
|                               | list(“subset of selected Features    |
|                               | (optional)�)), “:raw-latex:`\n`�, �  |
|                               | “,                                   |
|                               | list(list(list(�specific_feats_1�)), |
|                               | list(“specific Featureset combo      |
|                               | (need to position match              |
|                               | specific_feats_2)�)),                |
|                               | “:raw-latex:`\n`�, � “,              |
|                               | list(list(list(�specific_feats_2�)), |
|                               | list(“specific Featureset combo      |
|                               | (need to position match              |
|                               | specific_feats_1)�)),                |
+-------------------------------+--------------------------------------+

::

   "\n", "    ", list(list(list("min_cells")), list("minimum number of target cell type")), "\n", "    ", list(list(list("min_int_cells")), list("minimum number of interacting cell type")), "\n", "    ", list(list(list("min_fdr")), list("minimum adjusted p-value")), "\n", "    ", list(list(list("min_spat_diff")), list("minimum absolute spatial expression difference")), "\n", "    ", list(list(list("min_log2_fc")), list("minimum absolute log2 fold-change")), "\n", "    ", list(list(list("do_parallel")), 
       list("run calculations in parallel with mclapply")), "\n", "    ", list(list(list("verbose")), list("verbose")), "\n", "  ")

Seealso
-------

```combineInteractionChangedFeats`` <#combineinteractionchangedfeats>`__
