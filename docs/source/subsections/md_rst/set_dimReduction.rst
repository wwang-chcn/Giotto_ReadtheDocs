================
set_dimReduction
================

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/accessors.R#L458


Description
===========

Function to set a dimension reduction slot

Usage
=====

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
=========

==================== ===========================================
Argument             Description
==================== ===========================================
``gobject``          giotto object
``spat_unit``        spatial unit (e.g.Â â€œcellâ€)
``feat_type``        feature type (e.g.Â â€œrnaâ€, â€œdnaâ€, â€œproteinâ€)
``reduction``        reduction on cells or features
``reduction_method`` reduction method (e.g.Â â€œpcaâ€)
``name``             name of reduction results
``dimObject``        dimension object result to set
==================== ===========================================

Value
=====

giotto object

Seealso
=======

Other dimensional reduction data accessor functions:
`get_dimReduction <../md_rst/get_dimReduction.html>`__

Other functions to set data in Giotto object:

`get_NearestNetwork <../md_rst/get_NearestNetwork.html>`__

`get_dimReduction <../md_rst/get_dimReduction.html>`__

`get_feature_info <../md_rst/get_feature_info.html>`__

`get_giottoImage <../md_rst/get_giottoImage.html>`__

`get_polygon_info <../md_rst/get_polygon_info.html>`__

`get_spatialGrid <../md_rst/get_spatialGrid.html>`__

`get_spatialNetwork <../md_rst/get_spatialNetwork.html>`__

`get_spatial_locations <../md_rst/get_spatial_locations.html>`__
