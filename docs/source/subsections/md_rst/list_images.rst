===========
list_images
===========

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/accessors.R#L2655

===========

Prints the available giotto images that are attached to the Giotto
object

Usage
=====

.. code:: r

   list_images(gobject, img_type = NULL)

Arguments
=========

============ =======================
Argument     Description
============ =======================
``gobject``  giotto object
``img_type`` â€œimageâ€ or â€œlargeImageâ€
============ =======================

Value
=====

data.table of giotto image names attached to the giotto object
