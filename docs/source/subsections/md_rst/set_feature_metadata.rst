====================
set_feature_metadata
====================

:Date: 1/19/23

``set_feature_metadata``
========================

Set feature metadata

Description
-----------

Function to set feature metadata into giotto object

Usage
-----

.. code:: r

   set_feature_metadata(
     gobject,
     metadata,
     spat_unit = NULL,
     feat_type = NULL,
     provenance = NULL,
     verbose = TRUE,
     set_defaults = TRUE
   )

Arguments
---------

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``gobject``                   | giotto object                        |
+-------------------------------+--------------------------------------+
| ``metadata``                  | featMetaObj or data.table object     |
|                               | containing feature metadata. Setting |
|                               | NULL will remove the object.         |
+-------------------------------+--------------------------------------+
| ``spat_unit``                 | spatial unit (e.g. “cell”)           |
+-------------------------------+--------------------------------------+
| ``feat_type``                 | feature type (e.g. “rna”, “dna”,     |
|                               | “protein”)                           |
+-------------------------------+--------------------------------------+
| ``provenance``                | provenance information (optional)    |
+-------------------------------+--------------------------------------+
| ``verbose``                   | be verbose                           |
+-------------------------------+--------------------------------------+
| ``set_defaults``              | set default spat_unit and feat_type. |
|                               | Change to FALSE only when            |
+-------------------------------+--------------------------------------+

Value
-----

giotto object

Seealso
-------

Other functions to set data in giotto object:
```get_cell_id`` <#getcellid>`__ , ```get_feat_id`` <#getfeatid>`__ ,
```set_NearestNetwork`` <#setnearestnetwork>`__ ,
```set_cell_id`` <#setcellid>`__ ,
```set_cell_metadata`` <#setcellmetadata>`__ ,
```set_dimReduction`` <#setdimreduction>`__ ,
```set_expression_values`` <#setexpressionvalues>`__ ,
```set_feat_id`` <#setfeatid>`__ ,
```set_feature_info`` <#setfeatureinfo>`__ ,
```set_giottoImage`` <#setgiottoimage>`__ ,
```set_multiomics`` <#setmultiomics>`__ ,
```set_polygon_info`` <#setpolygoninfo>`__ ,
```set_spatialGrid`` <#setspatialgrid>`__ ,
```set_spatialNetwork`` <#setspatialnetwork>`__ ,
```set_spatial_enrichment`` <#setspatialenrichment>`__ ,
```set_spatial_locations`` <#setspatiallocations>`__
