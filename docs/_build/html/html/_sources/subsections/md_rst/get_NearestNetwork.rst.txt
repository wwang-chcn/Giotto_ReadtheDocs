
``get_NearestNetwork``
==========================

Get nearest network

Description
-----------

Get a NN-network from a Giotto object

Usage
-----

.. code-block:: r

   get_NearestNetwork(
     gobject,
     spat_unit = NULL,
     feat_type = NULL,
     nn_network_to_use = NULL,
     network_name = NULL,
     output = c("igraph", "data.table")
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
   * - ``nn_network_to_use``
     - kNN or sNN
   * - ``network_name``
     - name of NN network to be used
   * - ``output``
     - return a igraph or data.table object


Value
-----

igraph or data.table object

Seealso
-------

Other expression space nearest network accessor functions:
 `\ ``set_NearestNetwork`` <#setnearestnetwork>`_ 

 Other functions to get data from giotto object:
 `\ ``get_dimReduction`` <#getdimreduction>`_ ,
 `\ ``get_expression_values`` <#getexpressionvalues>`_ ,
 `\ ``get_feature_info`` <#getfeatureinfo>`_ ,
 `\ ``get_giottoImage`` <#getgiottoimage>`_ ,
 `\ ``get_polygon_info`` <#getpolygoninfo>`_ ,
 `\ ``get_spatialGrid`` <#getspatialgrid>`_ ,
 `\ ``get_spatialNetwork`` <#getspatialnetwork>`_ ,
 `\ ``get_spatial_enrichment`` <#getspatialenrichment>`_ ,
 `\ ``get_spatial_locations`` <#getspatiallocations>`_
