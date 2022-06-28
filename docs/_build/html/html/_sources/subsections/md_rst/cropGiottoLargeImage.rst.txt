.. _cropGiottoLargeImage:
``cropGiottoLargeImage``
============================

Crop a giotto largeImage object

Description
-----------

Crop a giottoLargeImage based on crop_extent argument or given values

Usage
-----

.. code-block:: r

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
---------

.. list-table::
   :header-rows: 1

   * - Argument
     - Description
   * - ``gobject``
     - gobject holding the giottoLargeImage
   * - ``largeImage_name``
     - name of giottoLargeImage within gobject
   * - ``giottoLargeImage``
     - alternative input param using giottoLargeImage object instead of through ``gobject`` and ``largeImage_name`` params
   * - ``crop_name``
     - arbitrary name for cropped giottoLargeImage
   * - ``crop_extent``
     - terra extent object used to crop the giottoLargeImage
   * - ``xmax_crop, xmin_crop, ymax_crop, ymin_crop``
     - crop min/max x and y bounds


Value
-----

a giottoLargeImage object
