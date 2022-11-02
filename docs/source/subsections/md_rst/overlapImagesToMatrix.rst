=====================
overlapImagesToMatrix
=====================

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/giotto_structures.R#L2501


Description
===========

create a count matrix based on overlap results from
```calculateOverlapPolygonImages`` <#calculateoverlappolygonimages>`__

Usage
=====

.. code:: r

   overlapImagesToMatrix(
     gobject,
     name = "raw",
     poly_info = "cell",
     feat_info = "protein",
     image_names = NULL,
     return_gobject = TRUE
   )

Arguments
=========

================== ====================================
Argument           Description
================== ====================================
``gobject``        giotto object
``name``           name for the overlap count matrix
``poly_info``      polygon information
``feat_info``      feature information
``image_names``    names of images you used
``return_gobject`` return giotto object (default: TRUE)
================== ====================================

Value
=====

giotto object or data.table with aggregated information
