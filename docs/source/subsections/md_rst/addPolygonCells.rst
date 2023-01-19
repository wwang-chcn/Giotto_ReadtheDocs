===============
addPolygonCells
===============

:Date: 1/19/23

https://github.com/drieslab/Giotto/tree/suite/R/interactivity.R#L231



===================

Add corresponding polygon IDs to cell metadata

Description
-----------

Add corresponding polygon IDs to cell metadata

Usage
-----

.. code:: r

   addPolygonCells(
     gobject,
     polygon_name = "selections",
     spat_unit = "cell",
     spat_loc_name = "raw",
     feat_type = "rna",
     polygons = NULL,
     na.label = "no_polygon"
   )

Arguments
---------

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``gobject``                   | A Giotto object                      |
+-------------------------------+--------------------------------------+
| ``polygon_name``              | name of polygon selections           |
+-------------------------------+--------------------------------------+
| ``spat_unit``                 | spatial unit                         |
+-------------------------------+--------------------------------------+
| ``spat_loc_name``             | name of spatial locations to use     |
+-------------------------------+--------------------------------------+
| ``feat_type``                 | feature name where metadata will be  |
|                               | added                                |
+-------------------------------+--------------------------------------+
| ``na.label``                  | polygon label for cells located      |
|                               | outside of polygons area. Default =  |
|                               | â€œno_polygonâ€                         |
+-------------------------------+--------------------------------------+

Value
-----

A Giotto object with a modified cell_metadata slot that includes the
polygon name where each cell is located or no_polygon label if the cell
is not located within a polygon area

Examples
--------

.. code:: r

   ## Plot interactive polygons
   my_polygon_coords <- plotInteractivePolygons(my_spatPlot)

   ## Add polygon coordinates to Giotto object
   my_giotto_polygons <- createGiottoPolygonsFromDfr(my_polygon_coords)
   my_giotto_object <- addGiottoPolygons(gobject = my_giotto_object,
   gpolygons = list(my_giotto_polygons))

   ## Add polygon IDs to cell metadata
   my_giotto_object <- addPolygonCells(my_giotto_object)
