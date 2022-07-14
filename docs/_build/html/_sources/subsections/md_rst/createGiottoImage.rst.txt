
``createGiottoImage``
=========================

createGiottoImage

Description
-----------

Creates a giotto image that can be added to a Giotto object and/or used to add an image to the spatial plotting functions

Usage
-----

.. code-block:: r

   createGiottoImage(
     gobject = NULL,
     spatial_locs = NULL,
     mg_object,
     name = "image",
     do_manual_adj = TRUE,
     xmax_adj = NULL,
     xmin_adj = NULL,
     ymax_adj = NULL,
     ymin_adj = NULL,
     scale_factor = 1
   )

Arguments
---------

.. list-table::
   :header-rows: 1

   * - Argument
     - Description
   * - ``gobject``
     - giotto object
   * - ``spatial_locs``
     - spatial locations (alternative if giobject = NULL)
   * - ``mg_object``
     - magick image object
   * - ``name``
     - name for the image
   * - ``do_manual_adj``
     - flag to use manual adj values instead of automatic alignment when given a gobject or spatlocs
   * - ``xmax_adj``
     - adjustment of the maximum x-value to align the image
   * - ``xmin_adj``
     - adjustment of the minimum x-value to align the image
   * - ``ymax_adj``
     - adjustment of the maximum y-value to align the image
   * - ``ymin_adj``
     - adjustment of the minimum y-value to align the image
   * - ``scale_factor``
     - scaling of image dimensions relative to spatial coordinates


Value
-----

a giotto image object
