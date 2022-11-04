==============================
list_spatial_enrichments_names
==============================

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/accessors.R#L2212

===========

returns the available spatial enrichment names for a given spatial unit

Usage
=====

.. code:: r

   list_spatial_enrichments_names(gobject, spat_unit = NULL, feat_type = NULL)

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

vector of names for available spatial enrichments
