========================
select_spatial_locations
========================

:Date: 1/19/23

.. role:: raw-latex(raw)
   :format: latex
..

``select_spatial_locations``
============================

select_spatial_locations

Description
-----------

select_spatial_locations

Usage
-----

.. code:: r

   select_spatial_locations(...)

Arguments
---------

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``...``                       | Arguments passed on to               |
|                               | ```get_spatial_l                     |
|                               | ocations`` <#getspatiallocations>`__ |
|                               | list(“:raw-latex:`\n`”, ” “,         |
|                               | list(list(list(”spat_loc_name”)),    |
|                               | list(“name of spatial locations      |
|                               | (defaults to first name in           |
|                               | spatial_locs slot, e.g. "raw")”)),   |
|                               | “:raw-latex:`\n`”, ” “,              |
|                               | list(list(list(”output”)),           |
|                               | list(“what object type to get the    |
|                               | spatial locations as. Default is     |
|                               | as:raw-latex:`\n`”, “a               |
|                               | ‘spatLocsObj’. Returning as          |
|                               | ‘data.table’ is also possible.”)),   |
|                               | “:raw-latex:`\n`”, ” “,              |
|                               | list(list(list(”copy_obj”)),         |
|                               | list(“whether to copy/duplicate when |
|                               | getting the object (default =        |
|                               | TRUE)”)), “:raw-latex:`\n`”, ” “,    |
|                               | list(list(list(”verbose”)), list(“be |
|                               | verbose”)),                          |
+-------------------------------+--------------------------------------+

::

   "\n", "    ", list(list(list("gobject")), list("giotto object")), "\n", "    ", list(list(list("spat_unit")), list("spatial unit (e.g. \"cell\")")), "\n", "    ", list(list(list("set_defaults")), list("set default spat_unit and feat_type. Change to FALSE only when")), "\n", "  ")

Seealso
-------

```get_spatial_locations`` <#getspatiallocations>`__
