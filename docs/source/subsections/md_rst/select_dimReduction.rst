===================
select_dimReduction
===================

:Date: 1/19/23

.. role:: raw-latex(raw)
   :format: latex
..

``select_dimReduction``
=======================

select_dimReduction

Description
-----------

select_dimReduction

Usage
-----

.. code:: r

   select_dimReduction(...)

Arguments
---------

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``...``                       | Arguments passed on to               |
|                               | ```get_                              |
|                               | dimReduction`` <#getdimreduction>`__ |
|                               | list(“:raw-latex:`\n`”, ” “,         |
|                               | list(list(list(”reduction”)),        |
|                               | list(“reduction on cells or features |
|                               | (e.g. "cells", "feats")”)),          |
|                               | “:raw-latex:`\n`”, ” “,              |
|                               | list(list(list(”reduction_method”)), |
|                               | list(“reduction method (e.g. "pca",  |
|                               | "umap", "tsne")”)),                  |
|                               | “:raw-latex:`\n`”, ” “,              |
|                               | list(list(list(”name”)), list(“name  |
|                               | of reduction results”)),             |
|                               | “:raw-latex:`\n`”, ” “,              |
|                               | list(list(list(”output”)),           |
|                               | list(“object type to return as.      |
|                               | Either ‘dimObj’ (default) or         |
|                               | ’data.table:raw-latex:`\n`”, “of the |
|                               | embedding coordinates.”)),           |
|                               | “:raw-latex:`\n`”, ” “,              |
|                               | list(list(list(”gobject”)),          |
+-------------------------------+--------------------------------------+

::

   list("giotto object")), "\n", "    ", list(list(list("spat_unit")), list("spatial unit (e.g. \"cell\")")), "\n", "    ", list(list(list("feat_type")), list("feature type (e.g. \"rna\", \"dna\", \"protein\")")), "\n", "    ", list(list(list("set_defaults")), list("set default spat_unit and feat_type. Change to FALSE only when")), "\n", "  ")

Seealso
-------

```get_dimReduction`` <#getdimreduction>`__
