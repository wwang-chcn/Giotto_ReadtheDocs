=====================
reg_img_minmax_finder
=====================

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/image_registration.R#L108

===========

finds new minmax boundaries of registration transformed images

Usage
=====

.. code:: r

   reg_img_minmax_finder(
     gobject_list,
     image_unreg = NULL,
     largeImage_unreg = NULL,
     scale_factor,
     transform_values,
     method
   )

Arguments
=========

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``gobject_list``              | list of gobjects to use              |
+-------------------------------+--------------------------------------+
| ``image_unreg``               | name of original unregistered images |
+-------------------------------+--------------------------------------+
| ``largeImage_unreg``          | name of original unregistered        |
|                               | largeImages                          |
+-------------------------------+--------------------------------------+
| ``scale_factor``              | scale factors for registered images  |
|                               | relative to spatlocs.                |
+-------------------------------+--------------------------------------+
| ``transform_values``          | transformation values to use         |
+-------------------------------+--------------------------------------+
| ``method``                    | method of registration               |
+-------------------------------+--------------------------------------+
