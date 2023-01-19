================================
addSpatialCentroidLocationsLayer
================================

:Date: 1/19/23

https://github.com/drieslab/Giotto/tree/suite/R/giotto_structures.R#L1691



====================================

addSpatialCentroidLocationsLayer

Description
-----------

Calculates the centroid locations for the polygons within one selected
layer

Usage
-----

.. code:: r

   addSpatialCentroidLocationsLayer(
     gobject,
     poly_info = "cell",
     feat_type = NULL,
     provenance = poly_info,
     spat_loc_name = "raw",
     init_metadata = TRUE,
     return_gobject = TRUE
   )

Arguments
---------

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``gobject``                   | giotto object                        |
+-------------------------------+--------------------------------------+
| ``poly_info``                 | polygon information                  |
+-------------------------------+--------------------------------------+
| ``feat_type``                 | feature type                         |
+-------------------------------+--------------------------------------+
| ``provenance``                | (optional) provenance to assign to   |
|                               | generated spatLocsObj. If not        |
|                               | provided, provenance will default to |
|                               | ``poly_info``                        |
+-------------------------------+--------------------------------------+
| ``spat_loc_name``             | name to give to the created spatial  |
|                               | locations                            |
+-------------------------------+--------------------------------------+
| ``init_metadata``             | initialize cell and feature metadata |
|                               | for this spatial unit (default =     |
|                               | TRUE, but should be turned off if    |
|                               | generated earlier in the workflow)   |
+-------------------------------+--------------------------------------+
| ``return_gobject``            | return giotto object (default: TRUE) |
+-------------------------------+--------------------------------------+

Value
-----

If ``return_gobject = TRUE`` the giotto object containing the calculated
polygon centroids will be returned. If ``return_gobject = FALSE`` only
the generated polygon centroids will be returned as spatLocsObj.
