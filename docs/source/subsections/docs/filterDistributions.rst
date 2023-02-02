filterDistributions
-------------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/auxiliary_giotto.R#L1680
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

show gene or cell distribution after filtering on expression threshold

Usage
~~~~~

::

   filterDistributions(
     gobject,
     feat_type = NULL,
     spat_unit = NULL,
     expression_values = c("raw", "normalized", "scaled", "custom"),
     method = c("threshold", "sum", "mean"),
     expression_threshold = 1,
     detection = c("feats", "cells"),
     plot_type = c("histogram", "violin"),
     scale_y = NULL,
     nr_bins = 30,
     fill_color = "lightblue",
     scale_axis = "identity",
     axis_offset = 0,
     show_plot = NA,
     return_plot = NA,
     save_plot = NA,
     save_param = list(),
     default_save_name = "filterDistributions"
   )

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``gobject``                       | giotto object                     |
+-----------------------------------+-----------------------------------+
| ``feat_type``                     | feature type                      |
+-----------------------------------+-----------------------------------+
| ``spat_unit``                     | spatial unit                      |
+-----------------------------------+-----------------------------------+
| ``expression_values``             | expression values to use          |
+-----------------------------------+-----------------------------------+
| ``method``                        | method to create distribution     |
|                                   | (see details)                     |
+-----------------------------------+-----------------------------------+
| ``expression_threshold``          | threshold to consider a gene      |
|                                   | expressed                         |
+-----------------------------------+-----------------------------------+
| ``detection``                     | consider features (e.g. genes) or |
|                                   | cells                             |
+-----------------------------------+-----------------------------------+
| ``plot_type``                     | type of plot                      |
+-----------------------------------+-----------------------------------+
| ``scale_y``                       | scale y-axis (e.g. "log"), NULL = |
|                                   | no scaling                        |
+-----------------------------------+-----------------------------------+
| ``nr_bins``                       | number of bins for histogram plot |
+-----------------------------------+-----------------------------------+
| ``fill_color``                    | fill color for plots              |
+-----------------------------------+-----------------------------------+
| ``scale_axis``                    | ggplot transformation for axis    |
|                                   | (e.g. log2)                       |
+-----------------------------------+-----------------------------------+
| ``axis_offset``                   | offset to be used together with   |
|                                   | the scaling transformation        |
+-----------------------------------+-----------------------------------+
| ``show_plot``                     | show plot                         |
+-----------------------------------+-----------------------------------+
| ``return_plot``                   | return ggplot object              |
+-----------------------------------+-----------------------------------+
| ``save_plot``                     | directly save the plot [boolean]  |
+-----------------------------------+-----------------------------------+
| ``save_param``                    | list of saving parameters from    |
|                                   | ``all_plots_save_function``       |
+-----------------------------------+-----------------------------------+
| ``default_save_name``             | default save name for saving,     |
|                                   | don't change, change save_name in |
|                                   | save_param                        |
+-----------------------------------+-----------------------------------+
| ``details``                       | | There are 3 ways to create a    |
|                                   |   distribution profile and        |
|                                   |   summarize it for either the     |
|                                   |   features or the cells (spatial  |
|                                   |   units)                          |
|                                   |                                   |
|                                   | -  1. threshold: calculate        |
|                                   |    features that cross a thresol  |
|                                   |    d (default)                    |
|                                   |                                   |
|                                   | -  2. sum: summarize the featur   |
|                                   |    es, i.e. total of a feature    |
|                                   |                                   |
|                                   | -  3. mean: calculate mean of t   |
|                                   |    he features, i.e. average      |
|                                   |    expression                     |
+-----------------------------------+-----------------------------------+

Value
~~~~~

ggplot object
