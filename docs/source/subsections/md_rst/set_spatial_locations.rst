=====================
set_spatial_locations
=====================

:Date: 1/19/23

https://github.com/drieslab/Giotto/tree/suite/R/accessors.R#L1015



=========================

Set spatial locations

Description
-----------

Function to set a spatial location slot

Usage
-----

.. code:: r

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
---------

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``gobject``                   | giotto object                        |
+-------------------------------+--------------------------------------+
| ``spatlocs``                  | spatial locations (accepts either    |
|                               | ``data.table`` or ``spatLocsObj`` )  |
+-------------------------------+--------------------------------------+
| ``spat_unit``                 | spatial unit (e.g. “cell�)           |
+-------------------------------+--------------------------------------+
| ``spat_loc_name``             | name of spatial locations, default   |
|                               | “raw�                                |
+-------------------------------+--------------------------------------+
| ``provenance``                | provenance information (optional)    |
+-------------------------------+--------------------------------------+
| ``verbose``                   | be verbose                           |
+-------------------------------+--------------------------------------+
| ``set_defaults``              | set default spat_unit and feat_type. |
|                               | Change to FALSE only when            |
+-------------------------------+--------------------------------------+

Details
-------

If a ``spatLocsObj`` is provided to ``spatlocs`` param then any attached
name and spat_unit info will be used for input to this function’s
``spat_loc_name`` and ``spat_unit`` params, BUT will be overridden by
any alternative specific inputs to those params. list() ie: a
``spatLocsObj`` with spat_unit slot == ‘cell’ will be automatically
nested by spat_unit ‘cell’ when using ``set_spatial_locations`` as long
as param ``spat_unit = NULL`` . BUT if param ``spat_unit = 'nucleus'``
then the ``spatLocsObj`` will be nested by spat_unit ‘nucleus’ instead
and its spat_unit slot will be changed to ‘nucleus’

Value
-----

giotto object

Seealso
-------

Other spatial location data accessor functions:
```get_spatial_locations`` <#getspatiallocations>`__

Other functions to set data in giotto object:
```get_cell_id`` <#getcellid>`__ , ```get_feat_id`` <#getfeatid>`__ ,
```set_NearestNetwork`` <#setnearestnetwork>`__ ,
```set_cell_id`` <#setcellid>`__ ,
```set_cell_metadata`` <#setcellmetadata>`__ ,
```set_dimReduction`` <#setdimreduction>`__ ,
```set_expression_values`` <#setexpressionvalues>`__ ,
```set_feat_id`` <#setfeatid>`__ ,
```set_feature_info`` <#setfeatureinfo>`__ ,
```set_feature_metadata`` <#setfeaturemetadata>`__ ,
```set_giottoImage`` <#setgiottoimage>`__ ,
```set_multiomics`` <#setmultiomics>`__ ,
```set_polygon_info`` <#setpolygoninfo>`__ ,
```set_spatialGrid`` <#setspatialgrid>`__ ,
```set_spatialNetwork`` <#setspatialnetwork>`__ ,
```set_spatial_enrichment`` <#setspatialenrichment>`__
