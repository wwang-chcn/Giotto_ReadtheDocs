annotateSpatialGrid
-------------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/spatial_structures.R#L2332
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

annotate spatial grid with cell ID and cell metadata (optional)

Usage
~~~~~

::

   annotateSpatialGrid(
     gobject,
     spat_unit = NULL,
     feat_type = NULL,
     spat_loc_name = "raw",
     spatial_grid_name = "spatial_grid",
     cluster_columns = NULL
   )

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``gobject``                       | Giotto object                     |
+-----------------------------------+-----------------------------------+
| ``spat_unit``                     | spatial unit                      |
+-----------------------------------+-----------------------------------+
| ``feat_type``                     | feature type                      |
+-----------------------------------+-----------------------------------+
| ``spat_loc_name``                 | name of spatial locations         |
+-----------------------------------+-----------------------------------+
| ``spatial_grid_name``             | name of spatial grid, see         |
|                                   | ``showGiottoSpatGrids``           |
+-----------------------------------+-----------------------------------+
| ``cluster_columns``               | names of cell metadata, see       |
|                                   | ``pDataDT``                       |
+-----------------------------------+-----------------------------------+

Value
~~~~~

annotated spatial grid data.table
