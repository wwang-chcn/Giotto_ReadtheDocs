addGiottoImageMG
----------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/images.R#L750
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

   addGiottoImageMG(
     gobject,
     images,
     spat_unit = NULL,
     spat_loc_name = NULL,
     scale_factor = NULL,
     negative_y = TRUE
   )

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``gobject``                       | giotto object                     |
+-----------------------------------+-----------------------------------+
| ``images``                        | list of giotto image objects, see |
|                                   | ``createGiottoImage``             |
+-----------------------------------+-----------------------------------+
| ``spat_unit``                     | spatial unit                      |
+-----------------------------------+-----------------------------------+
| ``spat_loc_name``                 | provide spatial location slot in  |
|                                   | Giotto to align images. Defaults  |
|                                   | to first one                      |
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
