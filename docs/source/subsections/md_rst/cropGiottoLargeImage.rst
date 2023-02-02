Crop a giotto largeImage object
-------------------------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/images.R#L1396
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Crop a giottoLargeImage based on crop_extent argument or given values

Usage
~~~~~

::

   cropGiottoLargeImage(
     gobject = NULL,
     largeImage_name = NULL,
     giottoLargeImage = NULL,
     crop_name = "image",
     crop_extent = NULL,
     xmax_crop = NULL,
     xmin_crop = NULL,
     ymax_crop = NULL,
     ymin_crop = NULL
   )

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``gobject``                       | gobject holding the               |
|                                   | giottoLargeImage                  |
+-----------------------------------+-----------------------------------+
| ``largeImage_name``               | name of giottoLargeImage within   |
|                                   | gobject                           |
+-----------------------------------+-----------------------------------+
| ``giottoLargeImage``              | alternative input param using     |
|                                   | giottoLargeImage object instead   |
|                                   | of through ``gobject`` and        |
|                                   | ``largeImage_name`` params        |
+-----------------------------------+-----------------------------------+
| ``crop_name``                     | arbitrary name for cropped        |
|                                   | giottoLargeImage                  |
+-----------------------------------+-----------------------------------+
| ``crop_extent``                   | terra extent object used to crop  |
|                                   | the giottoLargeImage              |
+-----------------------------------+-----------------------------------+
| ``xmax_crop, xmin_crop, ymax_crop | crop min/max x and y bounds       |
| ,  ymin_crop``                    |                                   |
+-----------------------------------+-----------------------------------+

Value
~~~~~

a giottoLargeImage object
