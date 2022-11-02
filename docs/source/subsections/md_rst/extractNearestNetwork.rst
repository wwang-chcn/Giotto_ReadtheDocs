=====================
extractNearestNetwork
=====================

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/accessors.R#L601

   :format: latex
..

Description
===========

Extract nearest network

Usage
=====

.. code:: r

   extractNearestNetwork(...)

Arguments
=========

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``...``                       | Arguments passed on to               |
|                               | ```get_Near                          |
|                               | estNetwork`` <#getnearestnetwork>`__ |
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
|                               | l                                    |
|                               | ist(list(list(â€nn_network_to_useâ€)), |
|                               | list(â€œ"kNN" or "sNN"â€)),             |
|                               | â€œ:raw-latex:`\n`â€, â€ â€œ,              |
|                               | list(list(list(â€network_nameâ€)),     |
|                               | list(â€œname of NN network to be       |
|                               | usedâ€)), â€œ:raw-latex:`\n`â€, â€ â€œ,     |
|                               | list(list(list(â€outputâ€)),           |
|                               | list(â€œreturn a igraph or data.table  |
|                               | object. Default â€˜igraphâ€™â€)),         |
+-------------------------------+--------------------------------------+

::

   "\n", "  ")

Seealso
=======

```get_NearestNetwork`` <#getnearestnetwork>`__
