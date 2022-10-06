==================
set_NearestNetwork
==================

:Date: 2022-10-06

Description
===========

Set a NN-network for a Giotto object

Usage
=====

.. code:: r

   set_NearestNetwork(
     gobject,
     spat_unit = NULL,
     feat_type = NULL,
     nn_network_to_use = "sNN",
     network_name = "sNN.pca",
     nn_network
   )

Arguments
=========

===================== ===========================================
Argument              Description
===================== ===========================================
``gobject``           giotto object
``spat_unit``         spatial unit (e.g. “cell”)
``feat_type``         feature type (e.g. “rna”, “dna”, “protein”)
``nn_network_to_use`` “kNN” or “sNN”
``network_name``      name of NN network to be used
``nn_network``        nearest network
===================== ===========================================

Value
=====

giotto object

Seealso
=======

Other expression space nearest network accessor functions:
```get_NearestNetwork`` <#getnearestnetwork>`__

Other functions to set data in giotto object:
```set_dimReduction`` <#setdimreduction>`__ ,
```set_expression_values`` <#setexpressionvalues>`__ ,
```set_feature_info`` <#setfeatureinfo>`__ ,
```set_giottoImage`` <#setgiottoimage>`__ ,
```set_polygon_info`` <#setpolygoninfo>`__ ,
```set_spatialGrid`` <#setspatialgrid>`__ ,
```set_spatialNetwork`` <#setspatialnetwork>`__ ,
```set_spatial_enrichment`` <#setspatialenrichment>`__ ,
```set_spatial_locations`` <#setspatiallocations>`__
