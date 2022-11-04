===================
select_dimReduction
===================

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/accessors.R#L435

   :format: latex
..

Description
===========

select_dimReduction

Usage
=====

.. code:: r

   select_dimReduction(...)

Arguments
=========

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``...``                       | Arguments passed on to               |
|                               | ```get_                              |
|                               | dimReduction`` <#getdimreduction>`__ |
|                               | list(â€œ:raw-latex:`\n`â€, â€ â€œ,         |
|                               | list(list(list(â€gobjectâ€)),          |
|                               | list(â€œgiotto objectâ€)),              |
|                               | â€œ:raw-latex:`\n`â€, â€ â€œ,              |
|                               | list(list(list(â€spat_unitâ€)),        |
|                               | list(â€œspatial unit (e.g.Â "cell")â€)), |
|                               | â€œ:raw-latex:`\n`â€, â€ â€œ,              |
|                               | list(list(list(â€feat_typeâ€)),        |
|                               | list(â€œfeature type (e.g.Â "rna",      |
|                               | "dna", "protein")â€)),                |
|                               | â€œ:raw-latex:`\n`â€, â€ â€œ,              |
|                               | list(list(list(â€reductionâ€)),        |
|                               | list(â€œreduction on cells or features |
|                               | (e.g.Â "cells", "feats")â€)),          |
|                               | â€œ:raw-latex:`\n`â€, â€ â€œ,              |
|                               | list(list(list(â€reduction_methodâ€)), |
|                               | list(â€œreduction method (e.g.Â "pca",  |
|                               | "umap", "tsne")â€)),                  |
|                               | â€œ:raw-latex:`\n`â€, â€ â€œ, list(        |
+-------------------------------+--------------------------------------+

::

   list(list("name")), list("name of reduction results")), "\n", "    ", list(list(list("return_dimObj")), list("return full dimension object result. Default = FALSE")), "\n", "  ")

Seealso
=======

```get_dimReduction`` <#getdimreduction>`__
