Compare cell types percent per polygon
--------------------------------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/interactivity.R#L395
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Compare cell types percent per polygon

Usage
~~~~~

::

   compareCellAbundance(
     gobject,
     polygon_name = "selections",
     spat_unit = "cell",
     feat_type = "rna",
     cell_type_column = "leiden_clus",
     ...
   )

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``gobject``                       | A Giotto object                   |
+-----------------------------------+-----------------------------------+
| ``polygon_name``                  | name of polygon selections        |
+-----------------------------------+-----------------------------------+
| ``spat_unit``                     | spatial unit. Default = "cell"    |
+-----------------------------------+-----------------------------------+
| ``feat_type``                     | feature type. Default = "rna"     |
+-----------------------------------+-----------------------------------+
| ``cell_type_column``              | column name within the cell       |
|                                   | metadata table to use             |
+-----------------------------------+-----------------------------------+
| ``...``                           | Additional parameters passed to   |
|                                   | ComplexHeatmap::Heatmap           |
+-----------------------------------+-----------------------------------+

Value
~~~~~

A ComplexHeatmap::Heatmap
