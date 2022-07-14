
``spatDeconvPlot``
======================

spatDeconvPlot

Description
-----------

Visualize cell type enrichment / deconvolution results in a scatterpie

Usage
-----

.. code-block:: r

   spatDeconvPlot(
     gobject,
     feat_type = NULL,
     deconv_name = "DWLS",
     show_image = F,
     gimage = NULL,
     image_name = "image",
     spat_loc_name = NULL,
     sdimx = "sdimx",
     sdimy = "sdimy",
     cell_color_code = NULL,
     line_color = NA,
     radius = 10,
     alpha = 1,
     legend_text = 8,
     background_color = "white",
     title = NULL,
     axis_text = 8,
     axis_title = 8,
     coord_fix_ratio = TRUE,
     show_plot = NA,
     return_plot = NA,
     save_plot = NA,
     save_param = list(),
     default_save_name = "spatDeconvPlot"
   )

Arguments
---------

.. list-table::
   :header-rows: 1

   * - Argument
     - Description
   * - ``gobject``
     - giotto object
   * - ``deconv_name``
     - name of deconvolution results to use
   * - ``show_image``
     - show a tissue background image
   * - ``gimage``
     - a giotto image
   * - ``image_name``
     - name of a giotto image
   * - ``sdimx``
     - x-axis dimension name (default = 'sdimx')
   * - ``sdimy``
     - y-axis dimension name (default = 'sdimy')
   * - ``cell_color_code``
     - named vector with colors
   * - ``line_color``
     - color of line within pie charts
   * - ``radius``
     - radios of pie charts
   * - ``alpha``
     - alpha of pie charts
   * - ``legend_text``
     - size of legend text
   * - ``background_color``
     - color of plot background
   * - ``title``
     - title for plot (default = deconv_name)
   * - ``axis_text``
     - size of axis text
   * - ``axis_title``
     - size of axis title
   * - ``coord_fix_ratio``
     - fix ratio between x and y-axis
   * - ``show_plot``
     - show plot
   * - ``return_plot``
     - return ggplot object
   * - ``save_plot``
     - directly save the plot [boolean]
   * - ``save_param``
     - list of saving parameters from `\ ``all_plots_save_function`` <#allplotssavefunction>`_
   * - ``default_save_name``
     - default save name for saving, don't change, change save_name in save_param


Details
-------

Description of parameters.

Value
-----

ggplot
