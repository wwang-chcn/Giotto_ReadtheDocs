
``get_spatial_enrichment``
==============================

Get spatial enrichment

Description
-----------

Function to get a spatial enrichment data.table

Usage
-----

.. code-block:: r

   get_spatial_enrichment(
     gobject,
     spat_unit = NULL,
     feat_type = NULL,
     enrichm_name = "DWLS"
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
   * - ``enrichm_name``
     - name of spatial enrichment results


Value
-----

data.table with fractions

Seealso
-------

Other spatial enrichment data accessor functions:
 `\ ``set_spatial_enrichment`` <#setspatialenrichment>`_ 

 Other functions to get data from giotto object:
 `\ ``get_NearestNetwork`` <#getnearestnetwork>`_ ,
 `\ ``get_dimReduction`` <#getdimreduction>`_ ,
 `\ ``get_expression_values`` <#getexpressionvalues>`_ ,
 `\ ``get_feature_info`` <#getfeatureinfo>`_ ,
 `\ ``get_giottoImage`` <#getgiottoimage>`_ ,
 `\ ``get_polygon_info`` <#getpolygoninfo>`_ ,
 `\ ``get_spatialGrid`` <#getspatialgrid>`_ ,
 `\ ``get_spatialNetwork`` <#getspatialnetwork>`_ ,
 `\ ``get_spatial_locations`` <#getspatiallocations>`_
