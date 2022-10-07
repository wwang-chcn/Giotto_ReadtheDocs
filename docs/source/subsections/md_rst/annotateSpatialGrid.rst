===================
annotateSpatialGrid
===================

:Date: 2022-10-06

Description
===========

annotate spatial grid with cell ID and cell metadata (optional)

Usage
=====

.. code:: r

   annotateSpatialGrid(
     gobject,
     spat_unit = NULL,
     feat_type = NULL,
     spat_loc_name = "raw",
     spatial_grid_name = "spatial_grid",
     cluster_columns = NULL
   )

Arguments
=========

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``gobject``                   | Giotto object                        |
+-------------------------------+--------------------------------------+
| ``spat_unit``                 | spatial unit                         |
+-------------------------------+--------------------------------------+
| ``feat_type``                 | feature type                         |
+-------------------------------+--------------------------------------+
| ``spat_loc_name``             | name of spatial locations            |
+-------------------------------+--------------------------------------+
| ``spatial_grid_name``         | name of spatial grid, see            |
|                               | ```showGiottoS                       |
|                               | patGrids`` <#showgiottospatgrids>`__ |
+-------------------------------+--------------------------------------+
| ``cluster_columns``           | names of cell metadata, see          |
|                               | ```pDataDT`` <#pdatadt>`__           |
+-------------------------------+--------------------------------------+

Value
=====

annotated spatial grid data.table
