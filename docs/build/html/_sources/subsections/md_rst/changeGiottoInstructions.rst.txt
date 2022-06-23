.. _changeGiottoInstructions:
``changeGiottoInstructions``
================================

Change giotto instruction(s) associated with giotto object

Description
-----------

Function to change one or more instructions from giotto object

Usage
-----

.. code-block:: r

   changeGiottoInstructions(
     gobject,
     params = NULL,
     new_values = NULL,
     return_gobject = TRUE
   )

Arguments
---------

.. list-table::
   :header-rows: 1

   * - Argument
     - Description
   * - ``gobject``
     - giotto object
   * - ``params``
     - parameter(s) to change
   * - ``new_values``
     - new value(s) for parameter(s)
   * - ``return_gobject``
     - (boolean) return giotto object


Value
-----

giotto object with one or more changed instructions
