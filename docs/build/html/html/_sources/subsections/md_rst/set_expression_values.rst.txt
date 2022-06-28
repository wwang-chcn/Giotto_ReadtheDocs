
``set_expression_values``
=============================

Set expression values

Description
-----------

Function to set expression values for giotto object

Usage
-----

.. code-block:: r

   set_expression_values(
     gobject,
     spat_unit = NULL,
     feat_type = NULL,
     name = "test",
     values
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
     - name for the expression slot
   * - ``values``
     - expression values


Value
-----

giotto object

Seealso
-------

Other expression accessor functions:
 `\ ``get_expression_values`` <#getexpressionvalues>`_ 

 Other functions to set data in giotto object:
 `\ ``set_NearestNetwork`` <#setnearestnetwork>`_ ,
 `\ ``set_dimReduction`` <#setdimreduction>`_ ,
 `\ ``set_feature_info`` <#setfeatureinfo>`_ ,
 `\ ``set_giottoImage`` <#setgiottoimage>`_ ,
 `\ ``set_polygon_info`` <#setpolygoninfo>`_ ,
 `\ ``set_spatialGrid`` <#setspatialgrid>`_ ,
 `\ ``set_spatialNetwork`` <#setspatialnetwork>`_ ,
 `\ ``set_spatial_enrichment`` <#setspatialenrichment>`_ ,
 `\ ``set_spatial_locations`` <#setspatiallocations>`_
