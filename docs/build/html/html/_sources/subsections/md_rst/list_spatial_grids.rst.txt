
``list_spatial_grids``
==========================

list_spatial_grids

Description
-----------

return the available spatial grids that are attached to the Giotto object

Usage
-----

.. code-block:: r

   list_spatial_grids(gobject, spat_unit = NULL)

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


Value
-----

data.table of names and locations of available spatial grids. col order matters
