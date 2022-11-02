=============================
filterInteractionChangedGenes
=============================

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/spatial_interaction.R#L1382

   :format: latex
..

Description
===========

Filter Interaction Changed Feature scores.

Usage
=====

.. code:: r

   filterInteractionChangedGenes(...)

Arguments
=========

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``...``                       | Arguments passed on to               |
|                               | ```filterInteractionChangedFeats``   |
|                               |  <#filterinteractionchangedfeats>`__ |
|                               | list(â€œ:raw-latex:`\n`â€, â€ â€œ,         |
|                               | list(list(list(â€icfObjectâ€)),        |
|                               | list(â€œICF (interaction changed       |
|                               | feature) score objectâ€)),            |
|                               | â€œ:raw-latex:`\n`â€, â€ â€œ,              |
|                               | list(list(list(â€min_cellsâ€)),        |
|                               | list(â€œminimum number of source cell  |
|                               | typeâ€)), â€œ:raw-latex:`\n`â€, â€ â€œ,     |
|                               | list(list(list(â€min_cells_exprâ€)),   |
|                               | list(â€œminimum expression level for   |
|                               | source cell typeâ€)),                 |
|                               | â€œ:raw-latex:`\n`â€, â€ â€œ,              |
|                               | list(list(list(â€min_int_cellsâ€)),    |
|                               | list(â€œminimum number of interacting  |
|                               | neighbor cell typeâ€)),               |
|                               | â€œ:raw-latex:`\n`â€, â€ â€œ,              |
|                               | li                                   |
|                               | st(list(list(â€min_int_cells_exprâ€)), |
|                               | list(â€œminimum expression level for   |
|                               | interacting neighbor cell typeâ€)),   |
+-------------------------------+--------------------------------------+

::

   "\n", "    ", list(list(list("min_fdr")), list("minimum adjusted p-value")), "\n", "    ", list(list(list("min_spat_diff")), list("minimum absolute spatial expression difference")), "\n", "    ", list(list(list("min_log2_fc")), list("minimum log2 fold-change")), "\n", "    ", list(list(list("min_zscore")), list("minimum z-score change")), "\n", "    ", list(list(list("zscores_column")), list("calculate z-scores over cell types or genes")), "\n", "    ", list(list(list("direction")), list("differential expression directions to keep")), 
   "\n", "  ")

Seealso
=======

```filterInteractionChangedFeats`` <#filterinteractionchangedfeats>`__
