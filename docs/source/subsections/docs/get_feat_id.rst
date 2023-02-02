Get feat IDs for a given feature type
-------------------------------------

Description
~~~~~~~~~~~

Across a single modality/feature type, all feature information is
expected to share a single set of feat_IDs. These feat_IDs are stored
within the giotto object's ``feat_ID`` slot. Getters and setters for
this slot directly (get) or replace (set) this slot.

Usage
~~~~~

::

   get_feat_id(gobject, feat_type = NULL, set_defaults = TRUE)

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``gobject``                       | giotto object                     |
+-----------------------------------+-----------------------------------+
| ``feat_type``                     | feature type (e.g. "rna", "dna",  |
|                                   | "protein")                        |
+-----------------------------------+-----------------------------------+
| ``set_defaults``                  | set default spat_unit and         |
|                                   | feat_type. Change to FALSE only   |
|                                   | when expression and spat_info are |
|                                   | not expected to exist.            |
+-----------------------------------+-----------------------------------+

See Also
~~~~~~~~

set_feat_id

Other functions to set data in giotto object: ``get_cell_id()``,
``set_NearestNetwork()``, ``set_cell_id()``, ``set_cell_metadata()``,
``set_dimReduction()``, ``set_expression_values()``, ``set_feat_id()``,
``set_feature_info()``, ``set_feature_metadata()``,
``set_giottoImage()``, ``set_polygon_info()``, ``set_spatialGrid()``,
``set_spatialNetwork()``, ``set_spatial_enrichment()``,
``set_spatial_locations()``
