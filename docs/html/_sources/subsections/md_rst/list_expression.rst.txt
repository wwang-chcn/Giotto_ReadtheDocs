
``list_expression``
=======================

list_expression

Description
-----------

lists the available matrices

Usage
-----

.. code-block:: r

   list_expression(gobject, spat_unit = NULL, feat_type = NULL)

Arguments
---------

.. list-table::
   :header-rows: 1

   * - Argument
     - Description
   * - ``gobject``
     - giotto object
   * - ``spat_unit``
     - spatial unit
   * - ``feat_type``
     - feature type


Value
-----

names and locations of available matrices as data.table. col order matters.
