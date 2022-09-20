==========
combineCPG
==========

:Date: ymd

.. role:: raw-latex(raw)
   :format: latex
..

``combineCPG``
==============

combineCPG

Description
-----------

Combine ICG scores in a pairwise manner.

Usage
-----

.. code:: r

   combineCPG(...)

Arguments
---------

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``...``                       | Arguments passed on to               |
|                               | ```combineICG`` <#combineicg>`__     |
|                               | list(“:raw-latex:`\n`”, ” “,         |
|                               | list(list(list(”cpgObject”)),        |
|                               | list(“ICG (interaction changed gene) |
|                               | score object”)), “:raw-latex:`\n`”,  |
|                               | ” “,                                 |
|                               | list(list(list(”selected_ints”)),    |
|                               | list(“subset of selected cell-cell   |
|                               | interactions (optional)”)),          |
|                               | “:raw-latex:`\n`”, ” “,              |
|                               | list(list(list(”selected_genes”)),   |
|                               | list(“subset of selected genes       |
|                               | (optional)”)), “:raw-latex:`\n`”, ”  |
|                               | “,                                   |
|                               | list(list(list(”specific_genes_1”)), |
|                               | list(“specific geneset combo (need   |
|                               | to position match                    |
|                               | specific_genes_2)”)),                |
|                               | “:raw-latex:`\n`”, ” “,              |
|                               | list(list(list(”specific_genes_2”)), |
|                               | list(“specific geneset combo (need   |
|                               | to position match                    |
|                               | specific_genes_1)”)),                |
+-------------------------------+--------------------------------------+

::

   "\n", "    ", list(list(list("min_cells")), list("minimum number of target cell type")), "\n", "    ", list(list(list("min_int_cells")), list("minimum number of interacting cell type")), "\n", "    ", list(list(list("min_fdr")), list("minimum adjusted p-value")), "\n", "    ", list(list(list("min_spat_diff")), list("minimum absolute spatial expression difference")), "\n", "    ", list(list(list("min_log2_fc")), list("minimum absolute log2 fold-change")), "\n", "    ", list(list(list("do_parallel")), 
       list("run calculations in parallel with mclapply")), "\n", "    ", list(list(list("verbose")), list("verbose")), "\n", "  ")

Seealso
-------

```combineICG`` <#combineicg>`__
