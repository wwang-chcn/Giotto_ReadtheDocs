calculateOverlapParallel
------------------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/giotto_structures.R#L2386
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

calculate overlap between cellular structures (polygons) and features
(points)

Usage
~~~~~

::

   calculateOverlapParallel(
     gobject,
     name_overlap = NULL,
     spatial_info = "cell",
     feat_info = "rna",
     poly_ID_names = "all",
     polygon_group_size = 500,
     return_gobject = TRUE,
     verbose = TRUE
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
| ``feat_info``                     | feature information               |
+-----------------------------------+-----------------------------------+
| ``poly_ID_names``                 | list of poly_IDs to use           |
+-----------------------------------+-----------------------------------+
| ``polygon_group_size``            | number of polygons to process per |
|                                   | parallelization group             |
+-----------------------------------+-----------------------------------+
| ``return_gobject``                | return giotto object (default:    |
|                                   | TRUE)                             |
+-----------------------------------+-----------------------------------+
| ``verbose``                       | be verbose                        |
+-----------------------------------+-----------------------------------+

Details
~~~~~~~

parallel follows the future approach. This means that plan(multisession)
does not work, since the underlying terra objects are internal C
pointers. plan(multicore) is also not supported for Rstudio users.

Value
~~~~~

giotto object or spatVector with overlapping information
