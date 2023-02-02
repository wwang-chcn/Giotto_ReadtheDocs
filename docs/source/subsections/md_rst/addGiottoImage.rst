addGiottoImage
--------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/images.R#L2284
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Adds lists of giottoImages and giottoLargeImages to gobjects

Usage
~~~~~

::

   addGiottoImage(
     gobject = NULL,
     images = NULL,
     largeImages = NULL,
     spat_loc_name = NULL,
     scale_factor = NULL,
     negative_y = TRUE
   )

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``gobject``                       | gobject to add images objects to  |
+-----------------------------------+-----------------------------------+
| ``images``                        | list of giottoImages to add       |
+-----------------------------------+-----------------------------------+
| ``largeImages``                   | list of giottoLargeImages to add  |
+-----------------------------------+-----------------------------------+
| ``spat_loc_name``                 | provide spatial location slot in  |
|                                   | Giotto to align giottoImages.     |
|                                   | Defaults to first one             |
+-----------------------------------+-----------------------------------+
| ``scale_factor``                  | provide scale of image pixel      |
|                                   | dimensions relative to spatial    |
|                                   | coordinates.                      |
+-----------------------------------+-----------------------------------+
| ``negative_y``                    | Map image to negative y spatial   |
|                                   | values if TRUE during automatic   |
|                                   | alignment. Meaning that origin is |
|                                   | in upper left instead of lower    |
|                                   | left.                             |
+-----------------------------------+-----------------------------------+

Value
~~~~~

an updated Giotto object with access to the list of images

See Also
~~~~~~~~

Other basic image functions: ``plotGiottoImage()``,
``reconnectGiottoImage()``, ``updateGiottoImage()``
