
``get_expression_values``
=============================

Get expression values

Description
-----------

Function to get expression values from giotto object

Usage
-----

.. code-block:: r

   get_expression_values(gobject, feat_type = NULL, spat_unit = NULL, values)

Arguments
---------

.. list-table::
   :header-rows: 1

   * - Argument
     - Description
   * - ``gobject``
     - giotto object
   * - ``feat_type``
     - feature type
   * - ``spat_unit``
     - spatial unit
   * - ``values``
     - expression values to extract


Value
-----

expression matrix

Seealso
-------

Other expression accessor functions:
 `\ ``set_expression_values`` <#setexpressionvalues>`_ 

 Other functions to get data from giotto object:
 `\ ``get_NearestNetwork`` <#getnearestnetwork>`_ ,
 `\ ``get_dimReduction`` <#getdimreduction>`_ ,
 `\ ``get_feature_info`` <#getfeatureinfo>`_ ,
 `\ ``get_giottoImage`` <#getgiottoimage>`_ ,
 `\ ``get_polygon_info`` <#getpolygoninfo>`_ ,
 `\ ``get_spatialGrid`` <#getspatialgrid>`_ ,
 `\ ``get_spatialNetwork`` <#getspatialnetwork>`_ ,
 `\ ``get_spatial_enrichment`` <#getspatialenrichment>`_ ,
 `\ ``get_spatial_locations`` <#getspatiallocations>`_
