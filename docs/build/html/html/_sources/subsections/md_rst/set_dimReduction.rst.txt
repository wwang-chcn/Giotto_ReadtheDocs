
``set_dimReduction``
========================

Set dimension reduction

Description
-----------

Function to set a dimension reduction slot

Usage
-----

.. code-block:: r

   set_dimReduction(
     gobject,
     spat_unit = NULL,
     feat_type = NULL,
     reduction = c("cells", "genes"),
     reduction_method = c("pca", "umap", "tsne"),
     name = "pca",
     dimObject
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
   * - ``reduction``
     - reduction on cells or features
   * - ``reduction_method``
     - reduction method (e.g. pca)
   * - ``name``
     - name of reduction results
   * - ``dimObject``
     - dimension object result to set


Value
-----

giotto object

Seealso
-------

Other dimensional reduction data accessor functions:
 `\ ``get_dimReduction`` <#getdimreduction>`_ 

 Other functions to set data in giotto object:
 `\ ``set_NearestNetwork`` <#setnearestnetwork>`_ ,
 `\ ``set_expression_values`` <#setexpressionvalues>`_ ,
 `\ ``set_feature_info`` <#setfeatureinfo>`_ ,
 `\ ``set_giottoImage`` <#setgiottoimage>`_ ,
 `\ ``set_polygon_info`` <#setpolygoninfo>`_ ,
 `\ ``set_spatialGrid`` <#setspatialgrid>`_ ,
 `\ ``set_spatialNetwork`` <#setspatialnetwork>`_ ,
 `\ ``set_spatial_enrichment`` <#setspatialenrichment>`_ ,
 `\ ``set_spatial_locations`` <#setspatiallocations>`_
