
``set_spatial_locations``
=============================

Set spatial locations

Description
-----------

Function to set a spatial location slot

Usage
-----

.. code-block:: r

   set_spatial_locations(
     gobject,
     spat_unit = NULL,
     spat_loc_name = "raw",
     spatlocs,
     verbose = TRUE
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
   * - ``spat_loc_name``
     - name of spatial locations
   * - ``spatlocs``
     - spatial locations
   * - ``verbose``
     - be verbose


Value
-----

giotto object

Seealso
-------

Other spatial location data accessor functions:
 `\ ``get_spatial_locations`` <#getspatiallocations>`_ 

 Other functions to set data in giotto object:
 `\ ``set_NearestNetwork`` <#setnearestnetwork>`_ ,
 `\ ``set_dimReduction`` <#setdimreduction>`_ ,
 `\ ``set_expression_values`` <#setexpressionvalues>`_ ,
 `\ ``set_feature_info`` <#setfeatureinfo>`_ ,
 `\ ``set_giottoImage`` <#setgiottoimage>`_ ,
 `\ ``set_polygon_info`` <#setpolygoninfo>`_ ,
 `\ ``set_spatialGrid`` <#setspatialgrid>`_ ,
 `\ ``set_spatialNetwork`` <#setspatialnetwork>`_ ,
 `\ ``set_spatial_enrichment`` <#setspatialenrichment>`_
