Set spatial locations
---------------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/accessors.R#L1015
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Function to set a spatial location slot

Usage
~~~~~

::

   set_spatial_locations(
     gobject,
     spatlocs,
     spat_unit = NULL,
     spat_loc_name = "raw",
     provenance = NULL,
     verbose = TRUE,
     set_defaults = TRUE
   )

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``gobject``                       | giotto object                     |
+-----------------------------------+-----------------------------------+
| ``spatlocs``                      | spatial locations (accepts either |
|                                   | ``data.table`` or                 |
|                                   | ``spatLocsObj``)                  |
+-----------------------------------+-----------------------------------+
| ``spat_unit``                     | spatial unit (e.g. "cell")        |
+-----------------------------------+-----------------------------------+
| ``spat_loc_name``                 | name of spatial locations,        |
|                                   | default "raw"                     |
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

Details
~~~~~~~

| If a ``spatLocsObj`` is provided to ``spatlocs`` param then any
  attached name and spat_unit info will be used for input to this
  function's ``spat_loc_name`` and ``spat_unit``\ params, BUT will be
  overridden by any alternative specific inputs to those params.
| ie: a ``spatLocsObj`` with spat_unit slot == 'cell' will be
  automatically nested by spat_unit 'cell' when using
  ``set_spatial_locations`` as long as param ``spat_unit = NULL``. BUT
  if param ``spat_unit = 'nucleus'`` then the ``spatLocsObj`` will be
  nested by spat_unit 'nucleus' instead and its spat_unit slot will be
  changed to 'nucleus'

Value
~~~~~

giotto object

See Also
~~~~~~~~

Other spatial location data accessor functions:
``get_spatial_locations()``

Other functions to set data in giotto object: ``get_cell_id()``,
``get_feat_id()``, ``set_NearestNetwork()``, ``set_cell_id()``,
``set_cell_metadata()``, ``set_dimReduction()``,
``set_expression_values()``, ``set_feat_id()``, ``set_feature_info()``,
``set_feature_metadata()``, ``set_giottoImage()``,
``set_polygon_info()``, ``set_spatialGrid()``, ``set_spatialNetwork()``,
``set_spatial_enrichment()``
