overlapToMatrix
---------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/giotto_structures.R#L2480
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

create a count matrix based on overlap results from
``calculateOverlapRaster``, ``calculateOverlapSerial``, or
``calculateOverlapParallel``

Usage
~~~~~

::

   overlapToMatrix(
     gobject,
     name = "raw",
     poly_info = "cell",
     feat_info = "rna",
     count_info_column = NULL,
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
| ``count_info_column``             | column with count information     |
+-----------------------------------+-----------------------------------+
| ``return_gobject``                | return giotto object (default:    |
|                                   | TRUE)                             |
+-----------------------------------+-----------------------------------+

Value
~~~~~

giotto object or count matrix
