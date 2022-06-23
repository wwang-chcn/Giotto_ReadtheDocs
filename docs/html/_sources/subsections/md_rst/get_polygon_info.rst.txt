
``get_polygon_info``
========================

Get polygon info

Description
-----------

Get giotto polygon spatVector

Usage
-----

.. code-block:: r

   get_polygon_info(gobject, polygon_name = "cell", polygon_overlap = NULL)

Arguments
---------

.. list-table::
   :header-rows: 1

   * - Argument
     - Description
   * - ``gobject``
     - giotto object
   * - ``polygon_name``
     - name of polygons
   * - ``polygon_overlap``
     - include polygon overlap information


Seealso
-------

Other polygon info data accessor functions:
 `\ ``set_polygon_info`` <#setpolygoninfo>`_ 

 Other functions to get data from giotto object:
 `\ ``get_NearestNetwork`` <#getnearestnetwork>`_ ,
 `\ ``get_dimReduction`` <#getdimreduction>`_ ,
 `\ ``get_expression_values`` <#getexpressionvalues>`_ ,
 `\ ``get_feature_info`` <#getfeatureinfo>`_ ,
 `\ ``get_giottoImage`` <#getgiottoimage>`_ ,
 `\ ``get_spatialGrid`` <#getspatialgrid>`_ ,
 `\ ``get_spatialNetwork`` <#getspatialnetwork>`_ ,
 `\ ``get_spatial_enrichment`` <#getspatialenrichment>`_ ,
 `\ ``get_spatial_locations`` <#getspatiallocations>`_
