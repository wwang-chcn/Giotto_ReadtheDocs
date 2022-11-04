===========================
list_nearest_networks_names
===========================

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/accessors.R#L2406

===========

return the available nearest neighbor network object names

Usage
=====

.. code:: r

   list_nearest_networks_names(
     gobject,
     spat_unit = NULL,
     feat_type = NULL,
     nn_type = NULL
   )

Arguments
=========

============= ===========================================
Argument      Description
============= ===========================================
``gobject``   giotto object
``spat_unit`` spatial unit (e.g.Â â€œcellâ€)
``feat_type`` feature type (e.g.Â â€œrnaâ€, â€œdnaâ€, â€œproteinâ€)
``nn_type``   nearest neighbor method (e.g.Â â€œsNNâ€, â€œkNNâ€)
============= ===========================================

Details
=======

function that can be used to find which names have been used

Value
=====

names of nearest neighbor network object
