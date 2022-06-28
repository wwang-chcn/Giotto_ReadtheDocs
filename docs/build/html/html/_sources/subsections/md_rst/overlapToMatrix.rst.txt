
``overlapToMatrix``
=======================

overlapToMatrix

Description
-----------

create a count matrix based on overlap results from `\ ``calculateOverlapRaster`` <#calculateoverlapraster>`_ , `\ ``calculateOverlapSerial`` <#calculateoverlapserial>`_ , or `\ ``calculateOverlapParallel`` <#calculateoverlapparallel>`_

Usage
-----

.. code-block:: r

   overlapToMatrix(
     gobject,
     name = "raw",
     poly_info = "cell",
     feat_info = "rna",
     return_gobject = TRUE
   )

Arguments
---------

.. list-table::
   :header-rows: 1

   * - Argument
     - Description
   * - ``gobject``
     - giotto object
   * - ``name``
     - name for the overlap count matrix
   * - ``poly_info``
     - polygon information
   * - ``feat_info``
     - feature information
   * - ``return_gobject``
     - return giotto object (default: TRUE)


Value
-----

giotto object or count matrix
