Optimized largeImage resampling
-------------------------------

Description
~~~~~~~~~~~

Downsample ``largeImage`` for plotting. Uses ``spatSample`` to load only
a portion of the original image, speeding up plotting and lowering
memory footprint.

Default behavior of ``spatSample`` is to crop if only a smaller ROI is
needed for plotting followed by the sampling process in order to reduce
wasted sampling by focusing the sample space. For very large ROIs, this
crop can be time intensive and require writing to disk.

This function examines the ROI dimensions as defined through the limits
of the spatial locations to be plotted, and decides between the
following two methods in order to avoid this issue:

-  **Method A.** First crop original image and then sample n values
   where n = 500,000 to generate final image

-  **Method B.** First oversample n values and then crop, where n =
   500,000 scaled by a value >1. Scaling factor increases the smaller
   the ROI is and is defined by: original dimensions/crop dimensions
   where the larger ratio between x and y dims is chosen. Scale factor
   is capped by ``max_resample_scale``

Control points for this function are set by ``max_crop`` which decides
the max ROI area after which switchover to method B happens in order to
avoid laborious crops and ``max_resample_scale`` which determines the
maximum scale factor for number of values to sample. Both values can be
adjusted depending on system resources. Additionally, ``flex_resample``
determines if this switching behavior happens. When set to ``FALSE``,
only method A is used.

Usage
~~~~~

::

   plot_auto_largeImage_resample(
     gobject,
     giottoLargeImage = NULL,
     largeImage_name = NULL,
     spat_unit = NULL,
     spat_loc_name = NULL,
     polygon_feat_type = NULL,
     include_image_in_border = TRUE,
     flex_resample = TRUE,
     max_crop = 1e+08,
     max_resample_scale = 100
   )

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``gobject``                       | ``gobject`` containing            |
|                                   | ``largeImage`` object             |
+-----------------------------------+-----------------------------------+
| ``giottoLargeImage``              | ``largeImage`` object to resample |
|                                   | if not provided through           |
|                                   | ``gobject`` and                   |
|                                   | ``largeImage_name``               |
+-----------------------------------+-----------------------------------+
| ``largeImage_name``               | name of ``largeImage`` in         |
|                                   | ``gobject``                       |
+-----------------------------------+-----------------------------------+
| ``spat_unit``                     | spatial unit                      |
+-----------------------------------+-----------------------------------+
| ``spat_loc_name``                 | name of spatial locations to plot |
+-----------------------------------+-----------------------------------+
| ``polygon_feat_type``             | name of polygon/spatial_info to   |
|                                   | plot                              |
+-----------------------------------+-----------------------------------+
| ``include_image_in_border``       | [boolean] expand the extent       |
|                                   | sampled to also show image in     |
|                                   | border regions not included in    |
|                                   | spatlocs. This prevents images in |
|                                   | plots from being sharply cut off  |
|                                   | around the furthest spatial       |
|                                   | locations. (default is ``TRUE``)  |
+-----------------------------------+-----------------------------------+
| ``flex_resample``                 | [boolean] Whether to allow        |
|                                   | automatic selection of sampling   |
|                                   | workflow as defined in details    |
|                                   | sections. (default is ``TRUE``)   |
+-----------------------------------+-----------------------------------+
| ``max_crop``                      | maximum crop size allowed for     |
|                                   | **method A** before switching to  |
|                                   | **method B** (see description)    |
+-----------------------------------+-----------------------------------+
| ``max_resample_scale``            | maximum cells allowed to resample |
|                                   | to compensate for decreased       |
|                                   | resolution when cropping after    |
|                                   | sampling                          |
+-----------------------------------+-----------------------------------+

Value
~~~~~

a ``giottoLargeImage`` cropped and resampled properly for plotting

See Also
~~~~~~~~

``spatSample``
