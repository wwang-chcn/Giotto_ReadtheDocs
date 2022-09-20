================
set_dimReduction
================

:Date: 2022-09-20

``set_dimReduction``
====================

Set dimension reduction

Description
-----------

Function to set a dimension reduction slot

Usage
-----

.. code:: r

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

==================== ===========================================
Argument             Description
==================== ===========================================
``gobject``          giotto object
``spat_unit``        spatial unit (e.g. “cell”)
``feat_type``        feature type (e.g. “rna”, “dna”, “protein”)
``reduction``        reduction on cells or features
``reduction_method`` reduction method (e.g. “pca”)
``name``             name of reduction results
``dimObject``        dimension object result to set
==================== ===========================================

Value
-----

giotto object

Seealso
-------

Other dimensional reduction data accessor functions:
```get_dimReduction`` <#getdimreduction>`__

Other functions to set data in giotto object:
```set_NearestNetwork`` <#setnearestnetwork>`__ ,
```set_expression_values`` <#setexpressionvalues>`__ ,
```set_feature_info`` <#setfeatureinfo>`__ ,
```set_giottoImage`` <#setgiottoimage>`__ ,
```set_polygon_info`` <#setpolygoninfo>`__ ,
```set_spatialGrid`` <#setspatialgrid>`__ ,
```set_spatialNetwork`` <#setspatialnetwork>`__ ,
```set_spatial_enrichment`` <#setspatialenrichment>`__ ,
```set_spatial_locations`` <#setspatiallocations>`__
