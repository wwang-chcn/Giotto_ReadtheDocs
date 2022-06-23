
``set_giottoImage``
=======================

Set giotto image object

Description
-----------

Directly attach a giotto image to giotto object

Usage
-----

.. code-block:: r

   set_giottoImage(
     gobject = NULL,
     image = NULL,
     image_type = NULL,
     name = NULL,
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
   * - ``image``
     - giotto image object to be attached without modification to the giotto object
   * - ``image_type``
     - type of giotto image object
   * - ``name``
     - name of giotto image object
   * - ``verbose``
     - be verbose


Details
-------

list(list("Use with care!")) This function directly attaches giotto image
 objects to the gobject without further modifications of spatial positioning values
 within the image object that are generally needed in order for them to
 plot in the correct location relative to the other modalities of spatial data. list() 
 For the more general-purpose method of attaching image objects, see `\ ``addGiottoImage`` <#addgiottoimage>`_

Value
-----

giotto object

Seealso
-------

`\ ``addGiottoImage`` <#addgiottoimage>`_ 

 Other image data accessor functions:
 `\ ``get_giottoImage`` <#getgiottoimage>`_ 

 Other functions to set data in giotto object:
 `\ ``set_NearestNetwork`` <#setnearestnetwork>`_ ,
 `\ ``set_dimReduction`` <#setdimreduction>`_ ,
 `\ ``set_expression_values`` <#setexpressionvalues>`_ ,
 `\ ``set_feature_info`` <#setfeatureinfo>`_ ,
 `\ ``set_polygon_info`` <#setpolygoninfo>`_ ,
 `\ ``set_spatialGrid`` <#setspatialgrid>`_ ,
 `\ ``set_spatialNetwork`` <#setspatialnetwork>`_ ,
 `\ ``set_spatial_enrichment`` <#setspatialenrichment>`_ ,
 `\ ``set_spatial_locations`` <#setspatiallocations>`_
