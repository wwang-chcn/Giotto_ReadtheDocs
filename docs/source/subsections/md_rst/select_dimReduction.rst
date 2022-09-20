===================
select_dimReduction
===================

:Date: 2022-09-20

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
|                               | list(list(list(”gobject”)),          |
|                               | list(“giotto object”)),              |
|                               | “:raw-latex:`\n`”, ” “,              |
|                               | list(list(list(”spat_unit”)),        |
|                               | list(“spatial unit (e.g. "cell")”)), |
|                               | “:raw-latex:`\n`”, ” “,              |
|                               | list(list(list(”feat_type”)),        |
|                               | list(“feature type (e.g. "rna",      |
|                               | "dna", "protein")”)),                |
|                               | “:raw-latex:`\n`”, ” “,              |
|                               | list(list(list(”reduction”)),        |
|                               | list(“reduction on cells or features |
|                               | (e.g. "cells", "feats")”)),          |
|                               | “:raw-latex:`\n`”, ” “,              |
|                               | list(list(list(”reduction_method”)), |
|                               | list(“reduction method (e.g. "pca",  |
|                               | "umap", "tsne")”)),                  |
|                               | “:raw-latex:`\n`”, ” “, list(        |
+-------------------------------+--------------------------------------+

::

   list(list("name")), list("name of reduction results")), "\n", "    ", list(list(list("return_dimObj")), list("return full dimension object result. Default = FALSE")), "\n", "  ")

Seealso
-------

```get_dimReduction`` <#getdimreduction>`__
