==============
get_img_minmax
==============

:Date: 2022-09-22

Description
===========

get_img_minmax

Usage
=====

.. code:: r

   get_img_minmax(mg_img, negative_y = TRUE)

Arguments
=========

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``mg_img``                    | magick object                        |
+-------------------------------+--------------------------------------+
| ``negative_y``                | Map image to negative y spatial      |
|                               | values if TRUE during automatic      |
|                               | alignment. Meaning that origin is in |
|                               | upper left instead of lower left.    |
+-------------------------------+--------------------------------------+
