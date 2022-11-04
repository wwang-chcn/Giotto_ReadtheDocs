=========================
list_dim_reductions_names
=========================

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/accessors.R#L2288

===========

return the available dimension reductions object names

Usage
=====

.. code:: r

   list_dim_reductions_names(
     gobject,
     data_type = "cells",
     spat_unit = NULL,
     feat_type = NULL,
     dim_type = NULL
   )

Arguments
=========

============= ===========================================
Argument      Description
============= ===========================================
``gobject``   giotto object
``data_type`` cells or feats dim reduction
``spat_unit`` spatial unit (e.g.Â â€œcellâ€)
``feat_type`` feature type (e.g.Â â€œrnaâ€, â€œdnaâ€, â€œproteinâ€)
``dim_type``  dimensional reduction type (method)
============= ===========================================

Details
=======

function that can be used to find which names have been used

Value
=====

names of dimension reduction object
