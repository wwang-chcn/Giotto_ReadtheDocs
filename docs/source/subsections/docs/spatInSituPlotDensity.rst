spatInSituPlotDensity
---------------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/spatial_in_situ_visuals.R#L1030
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Function for density plots for features for multiple modalities at the
spatial in situ level

Usage
~~~~~

::

   spatInSituPlotDensity(
     gobject,
     feats = NULL,
     feat_type = "rna",
     sdimx = "x",
     sdimy = "y",
     alpha = 0.95,
     show_polygon = TRUE,
     polygon_feat_type = "cell",
     polygon_color = "black",
     polygon_fill = NULL,
     polygon_fill_as_factor = NULL,
     polygon_alpha = 0.5,
     polygon_size = 0.5,
     coord_fix_ratio = 1,
     axis_text = 8,
     axis_title = 8,
     legend_text = 6,
     background_color = "black",
     cow_n_col = NULL,
     cow_rel_h = 1,
     cow_rel_w = 1,
     cow_align = "h",
     show_plot = NA,
     return_plot = NA,
     save_plot = NA,
     save_param = list(),
     default_save_name = "spatInSituPlotDensity"
   )

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``gobject``                       | giotto object                     |
+-----------------------------------+-----------------------------------+
| ``feats``                         | features to plot                  |
+-----------------------------------+-----------------------------------+
| ``feat_type``                     | feature types of the feats        |
+-----------------------------------+-----------------------------------+
| ``sdimx``                         | spatial dimension x               |
+-----------------------------------+-----------------------------------+
| ``sdimy``                         | spatial dimension y               |
+-----------------------------------+-----------------------------------+
| ``alpha``                         | alpha of density plot             |
+-----------------------------------+-----------------------------------+
| ``show_polygon``                  | overlay polygon information (cell |
|                                   | shape)                            |
+-----------------------------------+-----------------------------------+
| ``polygon_feat_type``             | feature type associated with      |
|                                   | polygon information               |
+-----------------------------------+-----------------------------------+
| ``polygon_color``                 | color for polygon border          |
+-----------------------------------+-----------------------------------+
| ``polygon_fill``                  | fill color or column for polygon  |
+-----------------------------------+-----------------------------------+
| ``polygon_fill_as_factor``        | is fill color a factor            |
+-----------------------------------+-----------------------------------+
| ``polygon_alpha``                 | alpha of polygon                  |
+-----------------------------------+-----------------------------------+
| ``polygon_size``                  | size of polygon border            |
+-----------------------------------+-----------------------------------+
| ``coord_fix_ratio``               | fix ratio between x and y-axis    |
+-----------------------------------+-----------------------------------+
| ``axis_text``                     | axis text size                    |
+-----------------------------------+-----------------------------------+
| ``axis_title``                    | title text size                   |
+-----------------------------------+-----------------------------------+
| ``legend_text``                   | legend text size                  |
+-----------------------------------+-----------------------------------+
| ``background_color``              | background color                  |
+-----------------------------------+-----------------------------------+
| ``cow_n_col``                     | cowplot param: how many columns   |
+-----------------------------------+-----------------------------------+
| ``cow_rel_h``                     | cowplot param: relative height    |
+-----------------------------------+-----------------------------------+
| ``cow_rel_w``                     | cowplot param: relative width     |
+-----------------------------------+-----------------------------------+
| ``cow_align``                     | cowplot param: how to align       |
+-----------------------------------+-----------------------------------+
| ``show_plot``                     | show plots                        |
+-----------------------------------+-----------------------------------+
| ``return_plot``                   | return ggplot object              |
+-----------------------------------+-----------------------------------+
| ``save_plot``                     | directly save the plot [boolean]  |
+-----------------------------------+-----------------------------------+
| ``save_param``                    | list of saving parameters, see    |
|                                   | ``showSaveParameters``            |
+-----------------------------------+-----------------------------------+
| ``default_save_name``             | default save name for saving,     |
|                                   | don't change, change save_name in |
|                                   | save_param                        |
+-----------------------------------+-----------------------------------+

Details
~~~~~~~

TODO

Value
~~~~~

ggplot

See Also
~~~~~~~~

Other In Situ visualizations: ``spatInSituPlotHex()``,
``spatInSituPlotPoints()``
