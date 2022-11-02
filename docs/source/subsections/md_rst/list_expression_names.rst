=====================
list_expression_names
=====================

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/accessors.R#L2016

===========

lists the available matrices names for a given spatial unit and feature
type

Usage
=====

.. code:: r

   list_expression_names(gobject, spat_unit = NULL, feat_type = NULL)

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

vector with names of available matrices
