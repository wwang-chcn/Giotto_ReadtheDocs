=============================
filterInteractionChangedGenes
=============================

:Date: 2022-10-06

.. role:: raw-latex(raw)
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
|                               | list(“:raw-latex:`\n`”, ” “,         |
|                               | list(list(list(”icfObject”)),        |
|                               | list(“ICF (interaction changed       |
|                               | feature) score object”)),            |
|                               | “:raw-latex:`\n`”, ” “,              |
|                               | list(list(list(”min_cells”)),        |
|                               | list(“minimum number of source cell  |
|                               | type”)), “:raw-latex:`\n`”, ” “,     |
|                               | list(list(list(”min_cells_expr”)),   |
|                               | list(“minimum expression level for   |
|                               | source cell type”)),                 |
|                               | “:raw-latex:`\n`”, ” “,              |
|                               | list(list(list(”min_int_cells”)),    |
|                               | list(“minimum number of interacting  |
|                               | neighbor cell type”)),               |
|                               | “:raw-latex:`\n`”, ” “,              |
|                               | li                                   |
|                               | st(list(list(”min_int_cells_expr”)), |
|                               | list(“minimum expression level for   |
|                               | interacting neighbor cell type”)),   |
+-------------------------------+--------------------------------------+

::

   "\n", "    ", list(list(list("min_fdr")), list("minimum adjusted p-value")), "\n", "    ", list(list(list("min_spat_diff")), list("minimum absolute spatial expression difference")), "\n", "    ", list(list(list("min_log2_fc")), list("minimum log2 fold-change")), "\n", "    ", list(list(list("min_zscore")), list("minimum z-score change")), "\n", "    ", list(list(list("zscores_column")), list("calculate z-scores over cell types or genes")), "\n", "    ", list(list(list("direction")), list("differential expression directions to keep")), 
   "\n", "  ")

Seealso
=======

```filterInteractionChangedFeats`` <#filterinteractionchangedfeats>`__
