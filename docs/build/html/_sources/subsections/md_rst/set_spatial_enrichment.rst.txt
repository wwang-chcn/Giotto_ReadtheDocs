
``set_spatial_enrichment``
==============================

Set spatial enrichment

Description
-----------

Function to set a spatial enrichment slot

Usage
-----

.. code-block:: r

   set_spatial_enrichment(
     gobject,
     spat_unit = NULL,
     feat_type = NULL,
     enrichm_name = "enrichment",
     spatenrichment
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
   * - ``spatenrichment``
     - spatial enrichment results


Value
-----

giotto object

Seealso
-------

Other spatial enrichment data accessor functions:
 `\ ``get_spatial_enrichment`` <#getspatialenrichment>`_ 

 Other functions to set data in giotto object:
 `\ ``set_NearestNetwork`` <#setnearestnetwork>`_ ,
 `\ ``set_dimReduction`` <#setdimreduction>`_ ,
 `\ ``set_expression_values`` <#setexpressionvalues>`_ ,
 `\ ``set_feature_info`` <#setfeatureinfo>`_ ,
 `\ ``set_giottoImage`` <#setgiottoimage>`_ ,
 `\ ``set_polygon_info`` <#setpolygoninfo>`_ ,
 `\ ``set_spatialGrid`` <#setspatialgrid>`_ ,
 `\ ``set_spatialNetwork`` <#setspatialnetwork>`_ ,
 `\ ``set_spatial_locations`` <#setspatiallocations>`_
