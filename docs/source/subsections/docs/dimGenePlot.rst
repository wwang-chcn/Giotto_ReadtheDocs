dimGenePlot
-----------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/spatial_visuals.R#L5353
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Visualize gene expression according to dimension reduction coordinates

Usage
~~~~~

::

   dimGenePlot(...)

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``...``                           | Arguments passed on to            |
|                                   | ``dimGenePlot2D``                 |
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

``dimGenePlot3D``

Other dimension reduction gene expression visualizations:
``dimGenePlot2D()``, ``dimGenePlot3D()``
