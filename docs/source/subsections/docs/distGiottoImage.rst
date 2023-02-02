Plot distribution of image intensity values
-------------------------------------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/images.R#L2658
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Plot distribution of intensity values using either a density plot or a
histogram. Useful for finding image artefact outliers and determining
reasonable scaling cutoffs.

Usage
~~~~~

::

   distGiottoImage(
     gobject = NULL,
     image_type = "largeImage",
     image_name = NULL,
     giottoLargeImage = NULL,
     method = c("dens", "hist")
   )

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``gobject``                       | giotto object                     |
+-----------------------------------+-----------------------------------+
| ``image_type``                    | image object type (only supports  |
|                                   | largeImage and is set as default) |
+-----------------------------------+-----------------------------------+
| ``image_name``                    | name of image object to use       |
+-----------------------------------+-----------------------------------+
| ``giottoLargeImage``              | giotto large image object         |
+-----------------------------------+-----------------------------------+
| ``method``                        | plot type to show image intensity |
|                                   | distribution                      |
+-----------------------------------+-----------------------------------+

Details
~~~~~~~

Plot is generated from a downsampling of the original image

Plotting method ``'dens'``
~~~~~~~~~~~~~~~~~~~~~~~~~~

Density plot of intensity values for image objects. **N** total values
examined. **Bandwidth** refers to the curve smoothing value applied.

Plotting method ``'hist'``
~~~~~~~~~~~~~~~~~~~~~~~~~~

Histogram of intensity values for image objects.
