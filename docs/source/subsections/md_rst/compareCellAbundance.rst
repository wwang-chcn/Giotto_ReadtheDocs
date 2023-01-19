====================
compareCellAbundance
====================

:Date: 1/19/23

https://github.com/drieslab/Giotto/tree/suite/R/interactivity.R#L395



========================

Compare cell types percent per polygon

Description
-----------

Compare cell types percent per polygon

Usage
-----

.. code:: r

   compareCellAbundance(
     gobject,
     polygon_name = "selections",
     spat_unit = "cell",
     feat_type = "rna",
     cell_type_column = "leiden_clus",
     ...
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
| ``spat_unit``                 | spatial unit. Default = â€œcellâ€       |
+-------------------------------+--------------------------------------+
| ``feat_type``                 | feature type. Default = â€œrnaâ€        |
+-------------------------------+--------------------------------------+
| ``cell_type_column``          | column name within the cell metadata |
|                               | table to use                         |
+-------------------------------+--------------------------------------+
| ``...``                       | Additional parameters passed to      |
|                               | ComplexHeatmap::Heatmap              |
+-------------------------------+--------------------------------------+

Value
-----

A ComplexHeatmap::Heatmap
