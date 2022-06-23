
``get_spatialNetwork``
==========================

Get spatial network

Description
-----------

Function to get a spatial network

Usage
-----

.. code-block:: r

   get_spatialNetwork(
     gobject,
     spat_unit = NULL,
     feat_type = NULL,
     name = NULL,
     return_network_Obj = FALSE
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
   * - ``return_network_Obj``
     - return network object (default = FALSE)


Seealso
-------

Other spatial network data accessor functions:
 `\ ``set_spatialNetwork`` <#setspatialnetwork>`_ 

 Other functions to get data from giotto object:
 `\ ``get_NearestNetwork`` <#getnearestnetwork>`_ ,
 `\ ``get_dimReduction`` <#getdimreduction>`_ ,
 `\ ``get_expression_values`` <#getexpressionvalues>`_ ,
 `\ ``get_feature_info`` <#getfeatureinfo>`_ ,
 `\ ``get_giottoImage`` <#getgiottoimage>`_ ,
 `\ ``get_polygon_info`` <#getpolygoninfo>`_ ,
 `\ ``get_spatialGrid`` <#getspatialgrid>`_ ,
 `\ ``get_spatial_enrichment`` <#getspatialenrichment>`_ ,
 `\ ``get_spatial_locations`` <#getspatiallocations>`_
