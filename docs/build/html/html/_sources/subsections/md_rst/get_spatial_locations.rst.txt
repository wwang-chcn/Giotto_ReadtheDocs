
``get_spatial_locations``
=============================

Get spatial locations

Description
-----------

Function to get a spatial location data.table

Usage
-----

.. code-block:: r

   get_spatial_locations(gobject, spat_unit = NULL, spat_loc_name = NULL)

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
   * - ``spat_loc_name``
     - name of spatial locations (defaults to first name in spatial_locs slot)


Value
-----

data.table with coordinates

Seealso
-------

Other spatial location data accessor functions:
 `\ ``set_spatial_locations`` <#setspatiallocations>`_ 

 Other functions to get data from giotto object:
 `\ ``get_NearestNetwork`` <#getnearestnetwork>`_ ,
 `\ ``get_dimReduction`` <#getdimreduction>`_ ,
 `\ ``get_expression_values`` <#getexpressionvalues>`_ ,
 `\ ``get_feature_info`` <#getfeatureinfo>`_ ,
 `\ ``get_giottoImage`` <#getgiottoimage>`_ ,
 `\ ``get_polygon_info`` <#getpolygoninfo>`_ ,
 `\ ``get_spatialGrid`` <#getspatialgrid>`_ ,
 `\ ``get_spatialNetwork`` <#getspatialnetwork>`_ ,
 `\ ``get_spatial_enrichment`` <#getspatialenrichment>`_
