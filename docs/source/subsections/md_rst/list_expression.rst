===============
list_expression
===============

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/accessors.R#L1980

===========

lists the available matrices

Usage
=====

.. code:: r

   list_expression(gobject, spat_unit = NULL, feat_type = NULL)

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

names and locations of available matrices as data.table. col order
matters.
