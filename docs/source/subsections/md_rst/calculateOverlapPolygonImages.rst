calculateOverlapPolygonImages
-----------------------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/giotto_structures.R#L2094
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

calculate overlap between cellular structures (polygons) and images
(intensities)

Usage
~~~~~

::

   calculateOverlapPolygonImages(
     gobject,
     name_overlap = "protein",
     spatial_info = "cell",
     poly_ID_names = NULL,
     image_names = NULL,
     poly_subset = NULL,
     return_gobject = TRUE,
     verbose = TRUE,
     ...
   )

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``gobject``                       | giotto object                     |
+-----------------------------------+-----------------------------------+
| ``name_overlap``                  | name for the overlap results      |
|                                   | (default to feat_info parameter)  |
+-----------------------------------+-----------------------------------+
| ``spatial_info``                  | polygon information               |
+-----------------------------------+-----------------------------------+
| ``poly_ID_names``                 | (optional) list of poly_IDs to    |
|                                   | use                               |
+-----------------------------------+-----------------------------------+
| ``image_names``                   | names of the images with raw data |
+-----------------------------------+-----------------------------------+
| ``poly_subset``                   | numerical values to subset the    |
|                                   | polygon spatVector                |
+-----------------------------------+-----------------------------------+
| ``return_gobject``                | return giotto object (default:    |
|                                   | TRUE)                             |
+-----------------------------------+-----------------------------------+
| ``verbose``                       | be verbose                        |
+-----------------------------------+-----------------------------------+
| ``...``                           | additional params to              |
|                                   | ``exact_extract``                 |
+-----------------------------------+-----------------------------------+

Value
~~~~~

giotto object or data.table with overlapping information
