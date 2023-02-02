Create giotto polygons from dataframe
-------------------------------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/giotto_structures.R#L492
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Creates Giotto polygon object from a structured dataframe-like object.
Three of the columns should correspond to x/y vertices and the polygon
ID. Additional columns are set as attributes

Usage
~~~~~

::

   createGiottoPolygonsFromDfr(
     segmdfr,
     name = "cell",
     calc_centroids = FALSE,
     verbose = TRUE
   )

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``segmdfr``                       | data.frame-like object with       |
|                                   | polygon coordinate information    |
|                                   | (x, y, poly_ID) with x and y      |
|                                   | being vertex information for the  |
|                                   | polygon referenced by poly_ID.    |
|                                   | See details for how columns are   |
|                                   | selected for coordinate and ID    |
|                                   | information.                      |
+-----------------------------------+-----------------------------------+
| ``name``                          | name for the ``giottoPolygon``    |
|                                   | object                            |
+-----------------------------------+-----------------------------------+
| ``calc_centroids``                | (default FALSE) calculate         |
|                                   | centroids for polygons            |
+-----------------------------------+-----------------------------------+
| ``verbose``                       | be verbose                        |
+-----------------------------------+-----------------------------------+

Details
~~~~~~~

When determining which column within the tabular data is intended to
provide polygon information, Giotto first checks the column names for
'x', 'y', and 'poly_ID'. If any of these are discovered, they are
directly selected. If this is not discovered then Giotto checks the data
type of the columns and selects the first ''character'’ type column to
be ’poly_ID' and the first two ''numeric'' columns as 'x' and 'y'
respectively. If this is also unsuccessful then poly_ID defaults to the
3rd column. 'x' and 'y' then default to the 1st and 2nd columns.

Value
~~~~~

giotto polygon object
