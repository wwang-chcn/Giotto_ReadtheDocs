=========================
combineCellProximityGenes
=========================

:Date: 1/19/23

https://github.com/drieslab/Giotto/tree/suite/R/spatial_interaction.R#L1917



   :format: latex
..

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
|                               | list(â€œ:raw-latex:`\n`â€, â€ â€œ,         |
|                               | list(list(list(â€icfObjectâ€)),        |
|                               | list(â€œICF (interaction changed feat) |
|                               | score objectâ€)), â€œ:raw-latex:`\n`â€,  |
|                               | â€ â€œ,                                 |
|                               | list(list(list(â€selected_intsâ€)),    |
|                               | list(â€œsubset of selected cell-cell   |
|                               | interactions (optional)â€)),          |
|                               | â€œ:raw-latex:`\n`â€, â€ â€œ,              |
|                               | list(list(list(â€selected_featsâ€)),   |
|                               | list(â€œsubset of selected Features    |
|                               | (optional)â€)), â€œ:raw-latex:`\n`â€, â€  |
|                               | â€œ,                                   |
|                               | list(list(list(â€specific_feats_1â€)), |
|                               | list(â€œspecific Featureset combo      |
|                               | (need to position match              |
|                               | specific_feats_2)â€)),                |
|                               | â€œ:raw-latex:`\n`â€, â€ â€œ,              |
|                               | list(list(list(â€specific_feats_2â€)), |
|                               | list(â€œspecific Featureset combo      |
|                               | (need to position match              |
|                               | specific_feats_1)â€)),                |
+-------------------------------+--------------------------------------+

::

   "\n", "    ", list(list(list("min_cells")), list("minimum number of target cell type")), "\n", "    ", list(list(list("min_int_cells")), list("minimum number of interacting cell type")), "\n", "    ", list(list(list("min_fdr")), list("minimum adjusted p-value")), "\n", "    ", list(list(list("min_spat_diff")), list("minimum absolute spatial expression difference")), "\n", "    ", list(list(list("min_log2_fc")), list("minimum absolute log2 fold-change")), "\n", "    ", list(list(list("do_parallel")), 
       list("run calculations in parallel with mclapply")), "\n", "    ", list(list(list("verbose")), list("verbose")), "\n", "  ")

Seealso
-------

```combineInteractionChangedFeats`` <#combineinteractionchangedfeats>`__
