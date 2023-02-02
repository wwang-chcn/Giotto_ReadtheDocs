addGiottoLargeImage
-------------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/images.R#L2029
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Adds giotto image objects to your giotto object

Usage
~~~~~

::

   addGiottoLargeImage(
     gobject = NULL,
     largeImages = NULL,
     spat_loc_name = NULL,
     scale_factor = NULL,
     negative_y = TRUE,
     verbose = TRUE
   )

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``gobject``                       | giotto object                     |
+-----------------------------------+-----------------------------------+
| ``largeImages``                   | list of giottoLargeImage objects  |
+-----------------------------------+-----------------------------------+
| ``spat_loc_name``                 | provide spatial location slot in  |
|                                   | Giotto to align images.           |
|                                   | (optional)                        |
+-----------------------------------+-----------------------------------+
| ``scale_factor``                  | provide scale of image pixel      |
|                                   | dimensions relative to spatial    |
|                                   | coordinates.                      |
+-----------------------------------+-----------------------------------+
| ``negative_y``                    | map image to negative y spatial   |
|                                   | values if TRUE during automatic   |
|                                   | alignment. Meaning that origin is |
|                                   | in upper left instead of lower    |
|                                   | left.                             |
+-----------------------------------+-----------------------------------+
| ``verbose``                       | be verbose                        |
+-----------------------------------+-----------------------------------+

Value
~~~~~

an updated Giotto object with access to the list of images
