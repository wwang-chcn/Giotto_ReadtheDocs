
``get_spatialGrid``
=======================

Get spatial grid

Description
-----------

Function to get spatial grid

Usage
-----

.. code-block:: r

   get_spatialGrid(
     gobject,
     spat_unit = NULL,
     feat_type = NULL,
     name = NULL,
     return_grid_Obj = FALSE
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
   * - ``return_grid_Obj``
     - return grid object (default = FALSE)


Seealso
-------

Other spatial grid data accessor functions:
 `\ ``set_spatialGrid`` <#setspatialgrid>`_ 

 Other functions to get data from giotto object:
 `\ ``get_NearestNetwork`` <#getnearestnetwork>`_ ,
 `\ ``get_dimReduction`` <#getdimreduction>`_ ,
 `\ ``get_expression_values`` <#getexpressionvalues>`_ ,
 `\ ``get_feature_info`` <#getfeatureinfo>`_ ,
 `\ ``get_giottoImage`` <#getgiottoimage>`_ ,
 `\ ``get_polygon_info`` <#getpolygoninfo>`_ ,
 `\ ``get_spatialNetwork`` <#getspatialnetwork>`_ ,
 `\ ``get_spatial_enrichment`` <#getspatialenrichment>`_ ,
 `\ ``get_spatial_locations`` <#getspatiallocations>`_
