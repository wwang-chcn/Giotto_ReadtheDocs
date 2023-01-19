=====================
overlapImagesToMatrix
=====================

:Date: 1/19/23

https://github.com/drieslab/Giotto/tree/suite/R/giotto_structures.R#L2694



=========================

overlapImagesToMatrix

Description
-----------

create a count matrix based on overlap results from
```calculateOverlapPolygonImages`` <#calculateoverlappolygonimages>`__

Usage
-----

.. code:: r

   overlapImagesToMatrix(
     gobject,
     name = "raw",
     poly_info = "cell",
     feat_info = "protein",
     name_overlap = "images",
     image_names = NULL,
     spat_locs_name = "raw",
     return_gobject = TRUE
   )

Arguments
---------

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``gobject``                   | giotto object                        |
+-------------------------------+--------------------------------------+
| ``name``                      | name for the overlap count matrix    |
+-------------------------------+--------------------------------------+
| ``poly_info``                 | polygon information                  |
+-------------------------------+--------------------------------------+
| ``feat_info``                 | feature information                  |
+-------------------------------+--------------------------------------+
| ``name_overlap``              | name of the overlap                  |
+-------------------------------+--------------------------------------+
| ``image_names``               | names of images you used             |
+-------------------------------+--------------------------------------+
| ``spat_locs_name``            | name for spatial centroids /         |
|                               | locations associated with matrix     |
+-------------------------------+--------------------------------------+
| ``return_gobject``            | return giotto object (default: TRUE) |
+-------------------------------+--------------------------------------+

Value
-----

giotto object or data.table with aggregated information
