Get nearest network
-------------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/accessors.R#L1258
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Get a NN-network from a Giotto object

Usage
~~~~~

::

   get_NearestNetwork(
     gobject,
     spat_unit = NULL,
     feat_type = NULL,
     nn_network_to_use = NULL,
     network_name = NULL,
     output = c("nnNetObj", "igraph", "data.table"),
     set_defaults = TRUE
   )

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``gobject``                       | giotto object                     |
+-----------------------------------+-----------------------------------+
| ``spat_unit``                     | spatial unit (e.g. "cell")        |
+-----------------------------------+-----------------------------------+
| ``feat_type``                     | feature type (e.g. "rna", "dna",  |
|                                   | "protein")                        |
+-----------------------------------+-----------------------------------+
| ``nn_network_to_use``             | "kNN" or "sNN"                    |
+-----------------------------------+-----------------------------------+
| ``network_name``                  | name of NN network to be used     |
+-----------------------------------+-----------------------------------+
| ``output``                        | return a igraph or data.table     |
|                                   | object. Default 'igraph'          |
+-----------------------------------+-----------------------------------+
| ``set_defaults``                  | set default spat_unit and         |
|                                   | feat_type. Change to FALSE only   |
|                                   | when expression and spat_info are |
|                                   | not expected to exist.            |
+-----------------------------------+-----------------------------------+

Value
~~~~~

igraph or data.table object

See Also
~~~~~~~~

Other expression space nearest network accessor functions:
``set_NearestNetwork()``

Other functions to get data from giotto object: ``get_dimReduction()``,
``get_expression_values()``, ``get_feature_info()``,
``get_giottoImage()``, ``get_polygon_info()``, ``get_spatialGrid()``,
``get_spatialNetwork()``, ``get_spatial_enrichment()``,
``get_spatial_locations()``
