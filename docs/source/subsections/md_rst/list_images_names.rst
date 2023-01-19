=================
list_images_names
=================

:Date: 1/19/23

``list_images_names``
=====================

list_images_names

Description
-----------

return the available image names for a given image type that are
attached to the Giotto object

Usage
-----

.. code:: r

   list_images_names(gobject, img_type)

Arguments
---------

============ =======================
Argument     Description
============ =======================
``gobject``  a giotto object
``img_type`` “image” or “largeImage”
============ =======================

Value
-----

vector with names of available image names
