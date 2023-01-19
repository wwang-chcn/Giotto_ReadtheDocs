=====================
select_spatialNetwork
=====================

:Date: 1/19/23

.. role:: raw-latex(raw)
   :format: latex
..

``select_spatialNetwork``
=========================

Select spatial network

Description
-----------

Select spatial network

Usage
-----

.. code:: r

   select_spatialNetwork(...)

Arguments
---------

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``...``                       | Arguments passed on to               |
|                               | ```get_spat                          |
|                               | ialNetwork`` <#getspatialnetwork>`__ |
|                               | list(“:raw-latex:`\n`”, ” “,         |
|                               | list(list(list(”name”)), list(“name  |
|                               | of spatial network”)),               |
|                               | “:raw-latex:`\n`”, ” “,              |
|                               | list(list(list(”output”)),           |
|                               | list(“object type to return as.      |
|                               | Options: ‘spatialNetworkObj’         |
|                               | (default),:raw-latex:`\n`”,          |
|                               | “‘networkDT’ and                     |
|                               | ‘networkDT_before_filter’ for        |
|                               | data.table outputs.”)),              |
|                               | “:raw-latex:`\n`”, ” “,              |
|                               | list(list(list(”gobject”)),          |
|                               | list(“giotto object”)),              |
|                               | “:raw-latex:`\n`”, ” “,              |
|                               | list(list(list(”spat_unit”)),        |
|                               | list(“spatial unit (e.g. "cell")”)), |
|                               | “:raw-latex:`\n`”, ” “,              |
|                               | list(list(list(”set_defaults”)),     |
|                               | list(“set default spat_unit and      |
|                               | feat_type. Change to FALSE only      |
|                               | when”)),                             |
+-------------------------------+--------------------------------------+

::

   "\n", "  ")

Seealso
-------

```get_spatialNetwork`` <#getspatialnetwork>`__
