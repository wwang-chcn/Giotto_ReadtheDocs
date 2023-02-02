Set cell IDs for a given spatial unit
-------------------------------------

Description
~~~~~~~~~~~

Data for each spatial unit is expected to agree on a single set of
cell_IDs that are shared across any feature types. These cell_IDs are
stored within the giotto object's ``cell_ID`` slot. Getters and setters
for this slot directly retrieve (get) or replace (set) this slot. Set
``cell_IDs`` ``NULL`` in order to delete the entry.

Usage
~~~~~

::

   set_cell_id(gobject, spat_unit = NULL, cell_IDs, set_defaults = TRUE)

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``gobject``                       | giotto object                     |
+-----------------------------------+-----------------------------------+
| ``spat_unit``                     | spatial unit (e.g. "cell")        |
+-----------------------------------+-----------------------------------+
| ``cell_IDs``                      | character vector of cell IDs to   |
|                                   | set                               |
+-----------------------------------+-----------------------------------+
| ``set_defaults``                  | set default spat_unit and         |
|                                   | feat_type. Change to FALSE only   |
|                                   | when expression and spat_info are |
|                                   | not expected to exist.            |
+-----------------------------------+-----------------------------------+

Value
~~~~~

giotto object with set cell_ID slot

See Also
~~~~~~~~

get_cell_id

Other functions to set data in giotto object: ``get_cell_id()``,
``get_feat_id()``, ``set_NearestNetwork()``, ``set_cell_metadata()``,
``set_dimReduction()``, ``set_expression_values()``, ``set_feat_id()``,
``set_feature_info()``, ``set_feature_metadata()``,
``set_giottoImage()``, ``set_polygon_info()``, ``set_spatialGrid()``,
``set_spatialNetwork()``, ``set_spatial_enrichment()``,
``set_spatial_locations()``
