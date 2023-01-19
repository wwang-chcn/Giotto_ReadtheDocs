==============
giottoToSeurat
==============

:Date: 1/19/23

https://github.com/drieslab/Giotto/tree/suite/R/interoperability.R#L223



==================

Convert Giotto to Seurat

Description
-----------

Converts Giotto object into a Seurat object. This functions extracts
specific sets of data belonging to specified spatial unit. The default
values are ‘cell’ and ‘rna’ respectively.

Usage
-----

.. code:: r

   giottoToSeurat(gobject, spat_unit = NULL, obj_use = NULL, ...)

Arguments
---------

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``gobject``                   | Giotto object                        |
+-------------------------------+--------------------------------------+
| ``spat_unit``                 | spatial unit (e.g. ‘cell’)           |
+-------------------------------+--------------------------------------+
| ``obj_use``                   | Giotto object (deprecated, use       |
|                               | gobject)                             |
+-------------------------------+--------------------------------------+
| ``...``                       | additional params to pass to         |
|                               | ```get_spatial_l                     |
|                               | ocations`` <#getspatiallocations>`__ |
+-------------------------------+--------------------------------------+

Value
-----

Seurat object
