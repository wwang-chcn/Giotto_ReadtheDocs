spatGenePlot
------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/spatial_visuals.R#L4944
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Visualize cells and gene expression according to spatial coordinates

Usage
~~~~~

::

   spatGenePlot(...)

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``...``                           | Arguments passed on to            |
|                                   | ``spatGenePlot2D``                |
|                                   |                                   |
|                                   | ``gobject``                       |
|                                   |    giotto object                  |
|                                   |                                   |
|                                   | ``genes``                         |
|                                   |    genes to show                  |
|                                   |                                   |
|                                   | ``default_save_name``             |
|                                   |    default save name for saving,  |
|                                   |    don't change, change save_name |
|                                   |    in save_param                  |
+-----------------------------------+-----------------------------------+

Details
~~~~~~~

Description of parameters.

Value
~~~~~

ggplot

See Also
~~~~~~~~

``spatGenePlot3D`` and ``spatGenePlot2D``

Other spatial gene expression visualizations: ``spatGenePlot2D()``,
``spatGenePlot3D()``
