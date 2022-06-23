
``set_spatialNetwork``
==========================

Set spatial network

Description
-----------

Function to set a spatial network

Usage
-----

.. code-block:: r

   set_spatialNetwork(
     gobject,
     spat_unit = NULL,
     feat_type = NULL,
     name = NULL,
     spatial_network
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
     - name of spatial network
   * - ``spatial_network``
     - spatial network


Value
-----

giotto object

Seealso
-------

Other spatial network data accessor functions:
 `\ ``get_spatialNetwork`` <#getspatialnetwork>`_ 

 Other functions to set data in giotto object:
 `\ ``set_NearestNetwork`` <#setnearestnetwork>`_ ,
 `\ ``set_dimReduction`` <#setdimreduction>`_ ,
 `\ ``set_expression_values`` <#setexpressionvalues>`_ ,
 `\ ``set_feature_info`` <#setfeatureinfo>`_ ,
 `\ ``set_giottoImage`` <#setgiottoimage>`_ ,
 `\ ``set_polygon_info`` <#setpolygoninfo>`_ ,
 `\ ``set_spatialGrid`` <#setspatialgrid>`_ ,
 `\ ``set_spatial_enrichment`` <#setspatialenrichment>`_ ,
 `\ ``set_spatial_locations`` <#setspatiallocations>`_
