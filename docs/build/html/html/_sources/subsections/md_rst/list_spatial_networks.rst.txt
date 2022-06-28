
``list_spatial_networks``
=============================

list_spatial_networks

Description
-----------

return the available spatial networks that are attached to the Giotto object

Usage
-----

.. code-block:: r

   list_spatial_networks(gobject, spat_unit = NULL)

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

data.table of names and locations of available spatial networks. col order matters
