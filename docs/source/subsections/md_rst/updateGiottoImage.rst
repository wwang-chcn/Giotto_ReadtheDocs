=================
updateGiottoImage
=================

:Date: 1/19/23

https://github.com/drieslab/Giotto/tree/suite/R/images.R#L2332



=====================

updateGiottoImage

Description
-----------

Updates the spatial positioning and sizing of a giotto ``image`` or
``largeImage`` attached to a giotto object.

Usage
-----

.. code:: r

   updateGiottoImage(
     gobject = NULL,
     image_name = NULL,
     largeImage_name = NULL,
     xmax_adj = 0,
     xmin_adj = 0,
     ymax_adj = 0,
     ymin_adj = 0,
     x_shift = 0,
     y_shift = 0,
     scale_factor = NULL,
     scale_x = 1,
     scale_y = 1,
     order = c("first_adj", "first_scale"),
     xmax_set = NULL,
     xmin_set = NULL,
     ymax_set = NULL,
     ymin_set = NULL,
     return_gobject = TRUE,
     verbose = TRUE
   )

Arguments
---------

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``gobject``                   | gobject containing desired image     |
|                               | object                               |
+-------------------------------+--------------------------------------+
| ``image_name``                | name of giotto ``image`` object      |
+-------------------------------+--------------------------------------+
| ``largeImage_name``           | name of giotto ``largeImage`` object |
+-------------------------------+--------------------------------------+
| ``xmax_adj, x                 | adjust image boundaries by           |
| min_adj, ymax_adj, ymin_adj`` | increasing maximum and decreasing    |
|                               | minimum bounds respectively of xy    |
|                               | bounds                               |
+-------------------------------+--------------------------------------+
| ``x_shift, y_shift``          | shift entire image along xy axes     |
+-------------------------------+--------------------------------------+
| ``scale_factor``              | set ``scale_x`` and ``scale_y``      |
|                               | params at the same time              |
+-------------------------------+--------------------------------------+
| ``scale_x, scale_y``          | independently scale x or y axis      |
|                               | image mapping from coordinate origin |
+-------------------------------+--------------------------------------+
| ``order``                     | order of operations between fine     |
|                               | adjustments (adjustment and shift    |
|                               | parameters) and scaling              |
+-------------------------------+--------------------------------------+
| ``xmin_set, x                 | directly set xy image boundaries.    |
| max_set, ymin_set, ymax_set`` | Overrides minmax values as spatial   |
|                               | anchor.                              |
+-------------------------------+--------------------------------------+
| ``return_gobject``            | return a giotto object if ``TRUE`` , |
|                               | a giotto image object if ``FALSE``   |
+-------------------------------+--------------------------------------+
| ``verbose``                   | be verbose                           |
+-------------------------------+--------------------------------------+

Details
-------

This function works for all image objects associated with Giotto.

Value
-----

a giotto object or an updated giotto image object if return_gobject = F

Seealso
-------

Other basic image functions: ```addGiottoImage`` <#addgiottoimage>`__ ,
```plotGiottoImage`` <#plotgiottoimage>`__ ,
```reconnectGiottoImage`` <#reconnectgiottoimage>`__
