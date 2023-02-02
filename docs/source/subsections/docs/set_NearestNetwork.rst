Set nearest network
-------------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/accessors.R#L1417
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Set a NN-network for a Giotto object

Usage
~~~~~

::

   set_NearestNetwork(
     gobject,
     nn_network,
     spat_unit = NULL,
     feat_type = NULL,
     nn_network_to_use = "sNN",
     network_name = "sNN.pca",
     provenance = NULL,
     verbose = TRUE,
     set_defaults = TRUE
   )

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``gobject``                       | giotto object                     |
+-----------------------------------+-----------------------------------+
| ``nn_network``                    | nnNetObj or igraph nearest        |
|                                   | network object. Data.table not    |
|                                   | yet supported.                    |
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
| ``provenance``                    | provenance information (optional) |
+-----------------------------------+-----------------------------------+
| ``verbose``                       | be verbose                        |
+-----------------------------------+-----------------------------------+
| ``set_defaults``                  | set default spat_unit and         |
|                                   | feat_type. Change to FALSE only   |
|                                   | when expression and spat_info are |
|                                   | not expected to exist.            |
+-----------------------------------+-----------------------------------+

Value
~~~~~

giotto object

See Also
~~~~~~~~

Other expression space nearest network accessor functions:
``get_NearestNetwork()``

Other functions to set data in giotto object: ``get_cell_id()``,
``get_feat_id()``, ``set_cell_id()``, ``set_cell_metadata()``,
``set_dimReduction()``, ``set_expression_values()``, ``set_feat_id()``,
``set_feature_info()``, ``set_feature_metadata()``,
``set_giottoImage()``, ``set_polygon_info()``, ``set_spatialGrid()``,
``set_spatialNetwork()``, ``set_spatial_enrichment()``,
``set_spatial_locations()``
