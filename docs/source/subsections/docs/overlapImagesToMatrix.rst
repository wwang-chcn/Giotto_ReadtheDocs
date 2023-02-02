overlapImagesToMatrix
---------------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/giotto_structures.R#L2694
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

create a count matrix based on overlap results from
``calculateOverlapPolygonImages``

Usage
~~~~~

::

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
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``gobject``                       | giotto object                     |
+-----------------------------------+-----------------------------------+
| ``name``                          | name for the overlap count matrix |
+-----------------------------------+-----------------------------------+
| ``poly_info``                     | polygon information               |
+-----------------------------------+-----------------------------------+
| ``feat_info``                     | feature information               |
+-----------------------------------+-----------------------------------+
| ``image_names``                   | names of images you used          |
+-----------------------------------+-----------------------------------+
| ``spat_locs_name``                | name for spatial centroids /      |
|                                   | locations associated with matrix  |
+-----------------------------------+-----------------------------------+
| ``return_gobject``                | return giotto object (default:    |
|                                   | TRUE)                             |
+-----------------------------------+-----------------------------------+

Value
~~~~~

giotto object or data.table with aggregated information
