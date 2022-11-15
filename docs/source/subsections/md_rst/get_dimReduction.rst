================
get_dimReduction
================

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/accessors.R#L378


Description
===========

Function to get a dimension reduction object

Usage
=====

.. code:: r

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
=========

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``gobject``                   | giotto object                        |
+-------------------------------+--------------------------------------+
| ``spat_unit``                 | spatial unit (e.g.Â â€œcellâ€)           |
+-------------------------------+--------------------------------------+
| ``feat_type``                 | feature type (e.g.Â â€œrnaâ€, â€œdnaâ€,     |
|                               | â€œproteinâ€)                           |
+-------------------------------+--------------------------------------+
| ``reduction``                 | reduction on cells or features       |
|                               | (e.g.Â â€œcellsâ€, â€œfeatsâ€)              |
+-------------------------------+--------------------------------------+
| ``reduction_method``          | reduction method (e.g.Â â€œpcaâ€,        |
|                               | â€œumapâ€, â€œtsneâ€)                      |
+-------------------------------+--------------------------------------+
| ``name``                      | name of reduction results            |
+-------------------------------+--------------------------------------+
| ``return_dimObj``             | return full dimension object result. |
|                               | Default = FALSE                      |
+-------------------------------+--------------------------------------+

Value
=====

dim reduction coordinates (default) or dim reduction object

Seealso
=======

Other dimensional reduction data accessor functions:
`set_dimReduction <../md_rst/set_dimReduction.html>`__

Other functions to get data from giotto object:

`get_NearestNetwork <../md_rst/get_NearestNetwork.html>`__

`get_dimReduction <../md_rst/get_dimReduction.html>`__

`get_feature_info <../md_rst/get_feature_info.html>`__

`get_giottoImage <../md_rst/get_giottoImage.html>`__

`get_polygon_info <../md_rst/get_polygon_info.html>`__

`get_spatialGrid <../md_rst/get_spatialGrid.html>`__

`get_spatialNetwork <../md_rst/get_spatialNetwork.html>`__

`get_spatial_locations <../md_rst/get_spatial_locations.html>`__
