===============
list_expression
===============

:Date: ymd

``list_expression``
===================

list_expression

Description
-----------

lists the available matrices

Usage
-----

.. code:: r

   list_expression(gobject, spat_unit = NULL, feat_type = NULL)

Arguments
---------

============= ===========================================
Argument      Description
============= ===========================================
``gobject``   giotto object
``spat_unit`` spatial unit (e.g. “cell”)
``feat_type`` feature type (e.g. “rna”, “dna”, “protein”)
============= ===========================================

Value
-----

names and locations of available matrices as data.table. col order
matters.
