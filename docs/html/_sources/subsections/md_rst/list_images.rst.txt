
``list_images``
===================

list_images

Description
-----------

Prints the available giotto images that are attached to the Giotto object

Usage
-----

.. code-block:: r

   list_images(gobject, img_type = NULL)

Arguments
---------

.. list-table::
   :header-rows: 1

   * - Argument
     - Description
   * - ``gobject``
     - giotto object
   * - ``img_type``
     - image or largeImage


Value
-----

data.table of giotto image names attached to the giotto object
