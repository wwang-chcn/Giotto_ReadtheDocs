=====================
extractNearestNetwork
=====================

:Date: 1/19/23

.. role:: raw-latex(raw)
   :format: latex
..

``extractNearestNetwork``
=========================

Extract nearest network

Description
-----------

Extract nearest network

Usage
-----

.. code:: r

   extractNearestNetwork(...)

Arguments
---------

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``...``                       | Arguments passed on to               |
|                               | ```get_Near                          |
|                               | estNetwork`` <#getnearestnetwork>`__ |
|                               | list(“:raw-latex:`\n`”, ” “,         |
|                               | l                                    |
|                               | ist(list(list(”nn_network_to_use”)), |
|                               | list(“"kNN" or "sNN"”)),             |
|                               | “:raw-latex:`\n`”, ” “,              |
|                               | list(list(list(”network_name”)),     |
|                               | list(“name of NN network to be       |
|                               | used”)), “:raw-latex:`\n`”, ” “,     |
|                               | list(list(list(”output”)),           |
|                               | list(“return a igraph or data.table  |
|                               | object. Default ‘igraph’”)),         |
|                               | “:raw-latex:`\n`”, ” “,              |
|                               | list(list(list(”gobject”)),          |
|                               | list(“giotto object”)),              |
|                               | “:raw-latex:`\n`”, ” “,              |
|                               | list(list(list(”spat_unit”)),        |
|                               | list(“spatial unit (e.g. "cell")”)), |
|                               | “:raw-latex:`\n`”, ” “,              |
|                               | list(list(list(”feat_type”)),        |
|                               | list(“feature type (e.g. "rna",      |
|                               | "dna", "protein")”)),                |
+-------------------------------+--------------------------------------+

::

   "\n", "    ", list(list(list("set_defaults")), list("set default spat_unit and feat_type. Change to FALSE only when")), "\n", "  ")

Seealso
-------

```get_NearestNetwork`` <#getnearestnetwork>`__
