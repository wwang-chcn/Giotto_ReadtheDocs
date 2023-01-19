======================
calculateOverlapRaster
======================

:Date: 1/19/23

https://github.com/drieslab/Giotto/tree/suite/R/giotto_structures.R#L1934



==========================

calculateOverlapRaster

Description
-----------

calculate overlap between cellular structures (polygons) and features
(points)

Usage
-----

.. code:: r

   calculateOverlapRaster(
     gobject,
     name_overlap = NULL,
     spatial_info = NULL,
     poly_ID_names = NULL,
     feat_info = NULL,
     feat_subset_column = NULL,
     feat_subset_ids = NULL,
     count_info_column = NULL,
     return_gobject = TRUE,
     verbose = TRUE
   )

Arguments
---------

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``gobject``                   | giotto object                        |
+-------------------------------+--------------------------------------+
| ``name_overlap``              | name for the overlap results         |
|                               | (default to feat_info parameter)     |
+-------------------------------+--------------------------------------+
| ``spatial_info``              | polygon information                  |
+-------------------------------+--------------------------------------+
| ``poly_ID_names``             | (optional) list of poly_IDs to use   |
+-------------------------------+--------------------------------------+
| ``feat_info``                 | feature information                  |
+-------------------------------+--------------------------------------+
| ``feat_subset_column``        | feature info column to subset        |
|                               | features with                        |
+-------------------------------+--------------------------------------+
| ``feat_subset_ids``           | ids within feature info column to    |
|                               | use for subsetting                   |
+-------------------------------+--------------------------------------+
| ``count_info_column``         | column with count information        |
|                               | (optional)                           |
+-------------------------------+--------------------------------------+
| ``return_gobject``            | return giotto object (default: TRUE) |
+-------------------------------+--------------------------------------+
| ``verbose``                   | be verbose                           |
+-------------------------------+--------------------------------------+

Details
-------

Serial overlapping function.

Value
-----

giotto object or spatVector with overlapping information
