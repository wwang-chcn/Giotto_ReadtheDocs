===================
add_img_array_alpha
===================

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/images.R#L2690

===========

Add alpha channel to image array

Usage
=====

.. code:: r

   add_img_array_alpha(x, alpha)

Arguments
=========

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``x``                         | image array to use                   |
+-------------------------------+--------------------------------------+
| ``alpha``                     | global alpha value to use. Numeric.  |
|                               | Scales from 0 to 1, with 0 being     |
|                               | fully transparent and 1 being fully  |
|                               | visible                              |
+-------------------------------+--------------------------------------+

Details
=======

Add 4th alpha channel to 3 channel RGB image arrays

Value
=====

image array with 4th channel for transparency
