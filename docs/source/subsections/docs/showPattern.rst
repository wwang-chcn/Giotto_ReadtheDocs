showPattern
-----------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/spatial_genes.R#L2631
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

show patterns for 2D spatial data

Usage
~~~~~

::

   showPattern(gobject, spatPatObj, ...)

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``gobject``                       | giotto object                     |
+-----------------------------------+-----------------------------------+
| ``spatPatObj``                    | Output from detectSpatialPatterns |
+-----------------------------------+-----------------------------------+
| ``...``                           | Arguments passed on to            |
|                                   | ``showPattern2D``                 |
|                                   |                                   |
|                                   | ``dimension``                     |
|                                   |    dimension to plot              |
|                                   |                                   |
|                                   | ``trim``                          |
|                                   |    Trim ends of the PC values.    |
|                                   |                                   |
|                                   | ``background_color``              |
|                                   |    background color for plot      |
|                                   |                                   |
|                                   | ``grid_border_color``             |
|                                   |    color for grid                 |
|                                   |                                   |
|                                   | ``show_legend``                   |
|                                   |    show legend of ggplot          |
|                                   |                                   |
|                                   | ``point_size``                    |
|                                   |    size of points                 |
|                                   |                                   |
|                                   | ``show_plot``                     |
|                                   |    show plot                      |
|                                   |                                   |
|                                   | ``return_plot``                   |
|                                   |    return ggplot object           |
|                                   |                                   |
|                                   | ``save_plot``                     |
|                                   |    directly save the plot         |
|                                   |    [boolean]                      |
|                                   |                                   |
|                                   | ``save_param``                    |
|                                   |    list of saving parameters, see |
|                                   |    ``showSaveParameters``         |
|                                   |                                   |
|                                   | ``default_save_name``             |
|                                   |    default save name for saving,  |
|                                   |    don't change, change save_name |
|                                   |    in save_param                  |
+-----------------------------------+-----------------------------------+

Value
~~~~~

ggplot

See Also
~~~~~~~~

``showPattern2D``
