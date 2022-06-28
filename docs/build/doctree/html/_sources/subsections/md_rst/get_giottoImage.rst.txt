
``get_giottoImage``
=======================

Get giotto image object

Description
-----------

Get giotto image object from gobject

Usage
-----

.. code-block:: r

   get_giottoImage(
     gobject = NULL,
     image_type = c("image", "largeImage"),
     name = NULL
   )

Arguments
---------

.. list-table::
   :header-rows: 1

   * - Argument
     - Description
   * - ``gobject``
     - giotto object
   * - ``image_type``
     - type of giotto image object
   * - ``name``
     - name of a giotto image object `\ ``showGiottoImageNames`` <#showgiottoimagenames>`_


Value
-----

a giotto image object

Seealso
-------

Other image data accessor functions:
 `\ ``set_giottoImage`` <#setgiottoimage>`_ 

 Other functions to get data from giotto object:
 `\ ``get_NearestNetwork`` <#getnearestnetwork>`_ ,
 `\ ``get_dimReduction`` <#getdimreduction>`_ ,
 `\ ``get_expression_values`` <#getexpressionvalues>`_ ,
 `\ ``get_feature_info`` <#getfeatureinfo>`_ ,
 `\ ``get_polygon_info`` <#getpolygoninfo>`_ ,
 `\ ``get_spatialGrid`` <#getspatialgrid>`_ ,
 `\ ``get_spatialNetwork`` <#getspatialnetwork>`_ ,
 `\ ``get_spatial_enrichment`` <#getspatialenrichment>`_ ,
 `\ ``get_spatial_locations`` <#getspatiallocations>`_
