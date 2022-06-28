
``get_dimReduction``
========================

Get dimension reduction

Description
-----------

Function to get a dimension reduction object

Usage
-----

.. code-block:: r

   get_dimReduction(
     gobject,
     spat_unit = NULL,
     feat_type = NULL,
     reduction = c("cells", "feats"),
     reduction_method = c("pca", "umap", "tsne"),
     name = "pca",
     return_dimObj = FALSE
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
   * - ``return_dimObj``
     - return full dimension object result


Value
-----

dim reduction coordinates (default) or dim reduction object

Seealso
-------

Other dimensional reduction data accessor functions:
 `\ ``set_dimReduction`` <#setdimreduction>`_ 

 Other functions to get data from giotto object:
 `\ ``get_NearestNetwork`` <#getnearestnetwork>`_ ,
 `\ ``get_expression_values`` <#getexpressionvalues>`_ ,
 `\ ``get_feature_info`` <#getfeatureinfo>`_ ,
 `\ ``get_giottoImage`` <#getgiottoimage>`_ ,
 `\ ``get_polygon_info`` <#getpolygoninfo>`_ ,
 `\ ``get_spatialGrid`` <#getspatialgrid>`_ ,
 `\ ``get_spatialNetwork`` <#getspatialnetwork>`_ ,
 `\ ``get_spatial_enrichment`` <#getspatialenrichment>`_ ,
 `\ ``get_spatial_locations`` <#getspatiallocations>`_
