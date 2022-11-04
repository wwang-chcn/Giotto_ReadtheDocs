===========
flex_lapply
===========

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/utilities.R#L204

   :format: latex
..

Description
===========

flex_lapply

Usage
=====

.. code:: r

   flex_lapply(X, FUN, cores = NA, fun = NULL, ...)

Arguments
=========

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``...``                       | Arguments passed on to               |
|                               | ```lapply_flex`` <#lapplyflex>`__    |
|                               | list(â€œ:raw-latex:`\n`â€, â€ â€œ,         |
|                               | list(list(list(â€Xâ€)), list(â€œlist to  |
|                               | useâ€)), â€œ:raw-latex:`\n`â€, â€ â€œ,      |
|                               | list(list(list(â€FUNâ€)),              |
|                               | list(â€œfunction to be performedâ€)),   |
|                               | â€œ:raw-latex:`\n`â€, â€ â€œ,              |
|                               | list(list(list(â€coresâ€)),            |
|                               | list(â€œcores to useâ€)),               |
|                               | â€œ:raw-latex:`\n`â€, â€ â€œ,              |
|                               | list(list(list(â€funâ€)),              |
|                               | list(â€œdeprecated. Backwards          |
|                               | compatibility for FUNâ€)),            |
|                               | â€œ:raw-latex:`\n`â€, â€ â€œ)              |
+-------------------------------+--------------------------------------+

Seealso
=======

```lapply_flex`` <#lapplyflex>`__
