========================
overlapToMatrixMultiPoly
========================

:Date: 2022-09-20

``overlapToMatrixMultiPoly``
============================

overlapToMatrixMultiPoly

Description
-----------

create a count matrix based on overlap results from
```calculateOverlapRaster`` <#calculateoverlapraster>`__ ,
```calculateOverlapSerial`` <#calculateoverlapserial>`__ , or
```calculateOverlapParallel`` <#calculateoverlapparallel>`__ and
aggregate information from multiple polygon layers (e.g. z-stacks)
together

Usage
-----

.. code:: r

   overlapToMatrixMultiPoly(
     gobject,
     name = "raw",
     poly_info = "cell",
     feat_info = "rna",
     new_poly_info = "multi",
     return_gobject = TRUE
   )

Arguments
---------

================== ===========================================
Argument           Description
================== ===========================================
``gobject``        giotto object
``name``           name for the overlap count matrix
``poly_info``      vector with polygon information
``feat_info``      feature information
``new_poly_info``  name for new aggregated polygon information
``return_gobject`` return giotto object (default: TRUE)
================== ===========================================

Value
-----

giotto object or count matrix
