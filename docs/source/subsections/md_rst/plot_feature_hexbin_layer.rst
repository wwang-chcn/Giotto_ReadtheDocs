=========================
plot_feature_hexbin_layer
=========================

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/spatial_in_situ_visuals.R#L487

===========

low level function to plot hexbins at the spatial in situ level

Usage
=====

.. code:: r

   plot_feature_hexbin_layer(
     ggobject = NULL,
     spatial_feat_info,
     sel_feat,
     sdimx = "x",
     sdimy = "y",
     bins = 10,
     alpha = 0.5
   )

Details
=======

This function can plot one feature for one modality.

Value
=====

ggplot
