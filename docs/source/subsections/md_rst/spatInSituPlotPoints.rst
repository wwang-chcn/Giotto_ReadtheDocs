spatInSituPlotPoints
--------------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/spatial_in_situ_visuals.R#L337
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Function to plot multiple features for multiple modalities at the
spatial in situ level

Usage
~~~~~

::

   spatInSituPlotPoints(
     gobject,
     show_image = F,
     gimage = NULL,
     image_name = NULL,
     largeImage_name = NULL,
     spat_unit = NULL,
     spat_loc_name = NULL,
     feats = NULL,
     feat_type = "rna",
     feats_color_code = NULL,
     feat_shape_code = NULL,
     sdimx = "x",
     sdimy = "y",
     point_size = 1.5,
     expand_counts = FALSE,
     count_info_column = "count",
     jitter = c(0, 0),
     show_polygon = TRUE,
     use_overlap = TRUE,
     polygon_feat_type = "cell",
     polygon_color = "black",
     polygon_bg_color = "black",
     polygon_fill = NULL,
     polygon_fill_gradient = c("blue", "white", "red"),
     polygon_fill_gradient_midpoint = NULL,
     polygon_fill_as_factor = NULL,
     polygon_fill_code = NULL,
     polygon_alpha = 0.5,
     polygon_line_size = 2,
     axis_text = 8,
     axis_title = 8,
     legend_text = 6,
     coord_fix_ratio = 1,
     background_color = "black",
     show_legend = TRUE,
     plot_method = c("ggplot", "scattermore", "scattermost"),
     show_plot = NA,
     return_plot = NA,
     save_plot = NA,
     save_param = list(),
     default_save_name = "spatInSituPlotPoints",
     verbose = TRUE
   )

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``gobject``                       | giotto object                     |
+-----------------------------------+-----------------------------------+
| ``show_image``                    | show a tissue background image    |
+-----------------------------------+-----------------------------------+
| ``gimage``                        | a giotto image                    |
+-----------------------------------+-----------------------------------+
| ``image_name``                    | name of a giotto image            |
+-----------------------------------+-----------------------------------+
| ``largeImage_name``               | name of a giottoLargeImage        |
+-----------------------------------+-----------------------------------+
| ``spat_unit``                     | spatial unit                      |
+-----------------------------------+-----------------------------------+
| ``spat_loc_name``                 | name of spatial locations         |
+-----------------------------------+-----------------------------------+
| ``feats``                         | features to plot                  |
+-----------------------------------+-----------------------------------+
| ``feat_type``                     | feature types of the feats        |
+-----------------------------------+-----------------------------------+
| ``feats_color_code``              | code to color the provided        |
|                                   | features                          |
+-----------------------------------+-----------------------------------+
| ``feat_shape_code``               | code to shape the provided        |
|                                   | feature types                     |
+-----------------------------------+-----------------------------------+
| ``sdimx``                         | spatial dimension x               |
+-----------------------------------+-----------------------------------+
| ``sdimy``                         | spatial dimension y               |
+-----------------------------------+-----------------------------------+
| ``point_size``                    | size of the points                |
+-----------------------------------+-----------------------------------+
| ``expand_counts``                 | expand feature coordinate counts  |
|                                   | (see details)                     |
+-----------------------------------+-----------------------------------+
| ``count_info_column``             | column name with count            |
|                                   | information (if expand_counts =   |
|                                   | TRUE)                             |
+-----------------------------------+-----------------------------------+
| ``jitter``                        | maximum x,y jitter provided as    |
|                                   | c(x, y)                           |
+-----------------------------------+-----------------------------------+
| ``show_polygon``                  | overlay polygon information (e.g. |
|                                   | cell shape)                       |
+-----------------------------------+-----------------------------------+
| ``use_overlap``                   | use polygon and feature           |
|                                   | coordinates overlap results       |
+-----------------------------------+-----------------------------------+
| ``polygon_feat_type``             | feature type associated with      |
|                                   | polygon information               |
+-----------------------------------+-----------------------------------+
| ``polygon_color``                 | color for polygon border          |
+-----------------------------------+-----------------------------------+
| ``polygon_bg_color``              | color for polygon background      |
|                                   | (overruled by polygon_fill)       |
+-----------------------------------+-----------------------------------+
| ``polygon_fill``                  | fill color or column for polygon  |
+-----------------------------------+-----------------------------------+
| ``polygon_fill_gradient``         | polygon fill gradient colors      |
|                                   | given in order from low to high   |
+-----------------------------------+-----------------------------------+
| ``polygon_fill_gradient_midpoint` | value to set as gradient midpoint |
| `                                 | (optional). If left as ``NULL``,  |
|                                   | the median value detected will be |
|                                   | chosen                            |
+-----------------------------------+-----------------------------------+
| ``polygon_fill_as_factor``        | is fill color a factor            |
+-----------------------------------+-----------------------------------+
| ``polygon_fill_code``             | code to color the fill column     |
+-----------------------------------+-----------------------------------+
| ``polygon_alpha``                 | alpha of polygon                  |
+-----------------------------------+-----------------------------------+
| ``polygon_line_size``             | line width of the polygon's       |
|                                   | outline                           |
+-----------------------------------+-----------------------------------+
| ``axis_text``                     | axis text size                    |
+-----------------------------------+-----------------------------------+
| ``axis_title``                    | title text size                   |
+-----------------------------------+-----------------------------------+
| ``legend_text``                   | legend text size                  |
+-----------------------------------+-----------------------------------+
| ``coord_fix_ratio``               | fix ratio of coordinates          |
+-----------------------------------+-----------------------------------+
| ``background_color``              | background color                  |
+-----------------------------------+-----------------------------------+
| ``show_legend``                   | show legend                       |
+-----------------------------------+-----------------------------------+
| ``plot_method``                   | method to plot points             |
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
| ``verbose``                       | verbosity                         |
+-----------------------------------+-----------------------------------+

Details
~~~~~~~

TODO

Value
~~~~~

ggplot

See Also
~~~~~~~~

Other In Situ visualizations: ``spatInSituPlotDensity()``,
``spatInSituPlotHex()``
