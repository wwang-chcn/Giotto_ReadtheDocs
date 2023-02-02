Get expression values
---------------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/accessors.R#L680
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Function to get expression values from giotto object

Usage
~~~~~

::

   get_expression_values(
     gobject,
     values = NULL,
     spat_unit = NULL,
     feat_type = NULL,
     output = c("exprObj", "matrix"),
     set_defaults = TRUE
   )

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``gobject``                       | giotto object                     |
+-----------------------------------+-----------------------------------+
| ``values``                        | expression values to extract      |
|                                   | (e.g. "raw", "normalized",        |
|                                   | "scaled")                         |
+-----------------------------------+-----------------------------------+
| ``spat_unit``                     | spatial unit (e.g. "cell")        |
+-----------------------------------+-----------------------------------+
| ``feat_type``                     | feature type (e.g. "rna", "dna",  |
|                                   | "protein")                        |
+-----------------------------------+-----------------------------------+
| ``output``                        | what object type to retrieve the  |
|                                   | expression as. Currently either   |
|                                   | 'matrix' for the matrix object    |
|                                   | contained in the exprObj or       |
|                                   | 'exprObj' (default) for the       |
|                                   | exprObj itself are allowed.       |
+-----------------------------------+-----------------------------------+
| ``set_defaults``                  | set default spat_unit and         |
|                                   | feat_type. Change to FALSE only   |
|                                   | when expression and spat_info are |
|                                   | not expected to exist.            |
+-----------------------------------+-----------------------------------+

Value
~~~~~

expression matrix

See Also
~~~~~~~~

Other expression accessor functions: ``set_expression_values()``

Other functions to get data from giotto object:
``get_NearestNetwork()``, ``get_dimReduction()``,
``get_feature_info()``, ``get_giottoImage()``, ``get_polygon_info()``,
``get_spatialGrid()``, ``get_spatialNetwork()``,
``get_spatial_enrichment()``, ``get_spatial_locations()``
