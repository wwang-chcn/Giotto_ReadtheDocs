
``set_spatialGrid``
=======================

Set spatial grid

Description
-----------

Function to set a spatial grid

Usage
-----

.. code-block:: r

   set_spatialGrid(
     gobject,
     spat_unit = NULL,
     feat_type = NULL,
     name = NULL,
     spatial_grid
   )

Arguments
---------

.. list-table::
   :header-rows: 1

   * - Argument
     - Description
   * - ``gobject``
     - giotto object
   * - ``spat_unit``
     - spatial unit
   * - ``feat_type``
     - feature type
   * - ``name``
     - name of spatial grid
   * - ``spatial_grid``
     - spatial grid object


Value
-----

giotto object

Seealso
-------

Other spatial grid data accessor functions:
 `\ ``get_spatialGrid`` <#getspatialgrid>`_ 

 Other functions to set data in giotto object:
 `\ ``set_NearestNetwork`` <#setnearestnetwork>`_ ,
 `\ ``set_dimReduction`` <#setdimreduction>`_ ,
 `\ ``set_expression_values`` <#setexpressionvalues>`_ ,
 `\ ``set_feature_info`` <#setfeatureinfo>`_ ,
 `\ ``set_giottoImage`` <#setgiottoimage>`_ ,
 `\ ``set_polygon_info`` <#setpolygoninfo>`_ ,
 `\ ``set_spatialNetwork`` <#setspatialnetwork>`_ ,
 `\ ``set_spatial_enrichment`` <#setspatialenrichment>`_ ,
 `\ ``set_spatial_locations`` <#setspatiallocations>`_
