=========================
plot_feature_hexbin_layer
=========================

:Date: 1/19/23

``plot_feature_hexbin_layer``
=============================

plot_feature_hexbin_layer

Description
-----------

low level function to plot hexbins at the spatial in situ level

Usage
-----

.. code:: r

   plot_feature_hexbin_layer(
     ggobject = NULL,
     spatial_feat_info,
     sel_feat,
     sdimx = "x",
     sdimy = "y",
     binwidth = NULL,
     min_axis_bins = 10L,
     alpha = 0.5
   )

Details
-------

This function can plot one feature for one modality.

Value
-----

ggplot
