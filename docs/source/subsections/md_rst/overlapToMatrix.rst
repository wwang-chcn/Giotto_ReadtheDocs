===============
overlapToMatrix
===============

:Date: 1/19/23

https://github.com/drieslab/Giotto/tree/suite/R/giotto_structures.R#L2480



===================

overlapToMatrix

Description
-----------

create a count matrix based on overlap results from
```calculateOverlapRaster`` <#calculateoverlapraster>`__ ,
```calculateOverlapSerial`` <#calculateoverlapserial>`__ , or
```calculateOverlapParallel`` <#calculateoverlapparallel>`__

Usage
-----

.. code:: r

   overlapToMatrix(
     gobject,
     name = "raw",
     poly_info = "cell",
     feat_info = "rna",
     count_info_column = NULL,
     return_gobject = TRUE
   )

Arguments
---------

===================== ====================================
Argument              Description
===================== ====================================
``gobject``           giotto object
``name``              name for the overlap count matrix
``poly_info``         polygon information
``feat_info``         feature information
``count_info_column`` column with count information
``return_gobject``    return giotto object (default: TRUE)
===================== ====================================

Value
-----

giotto object or count matrix
