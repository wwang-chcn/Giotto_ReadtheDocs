========================
list_spatial_enrichments
========================

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/accessors.R#L2170

===========

return the available spatial enrichment results

Usage
=====

.. code:: r

   list_spatial_enrichments(gobject, spat_unit = NULL, feat_type = NULL)

Arguments
=========

============= ===========================================
Argument      Description
============= ===========================================
``gobject``   giotto object
``spat_unit`` spatial unit (e.g.Â â€œcellâ€)
``feat_type`` feature type (e.g.Â â€œrnaâ€, â€œdnaâ€, â€œproteinâ€)
============= ===========================================

Value
=====

names and locations of available data as data.table
