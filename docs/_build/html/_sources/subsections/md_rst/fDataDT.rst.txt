
``fDataDT``
===============

fDataDT

Description
-----------

show gene metadata

Usage
-----

.. code-block:: r

   fDataDT(gobject)

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

data.table with gene metadata

Examples
--------

.. code-block:: r

   data(mini_giotto_single_cell) # loads existing Giotto object
   fDataDT(mini_giotto_single_cell)
