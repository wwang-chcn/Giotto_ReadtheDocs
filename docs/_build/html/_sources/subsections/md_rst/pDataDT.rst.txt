
``pDataDT``
===============

pDataDT

Description
-----------

show cell metadata

Usage
-----

.. code-block:: r

   pDataDT(gobject)

Arguments
---------

.. list-table::
   :header-rows: 1

   * - Argument
     - Description
   * - ``gobject``
     - giotto object


Value
-----

data.table with cell metadata

Examples
--------

.. code-block:: r

   data(mini_giotto_single_cell) # loads existing Giotto object
   pDataDT(mini_giotto_single_cell)
