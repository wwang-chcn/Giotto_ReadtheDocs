=====================
list_expression_names
=====================

:Date: 2022-10-06

Description
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
``spat_unit`` spatial unit (e.g. “cell”)
``feat_type`` feature type (e.g. “rna”, “dna”, “protein”)
============= ===========================================

Value
=====

vector with names of available matrices
