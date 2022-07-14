
``showProcessingSteps``
===========================

showProcessingSteps

Description
-----------

shows the sequential processing steps that were performed
 on a Giotto object in a summarized format

Usage
-----

.. code-block:: r

   showProcessingSteps(gobject)

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

list of processing steps and names

Examples
--------

.. code-block:: r

   data(mini_giotto_single_cell)

   showProcessingSteps(mini_giotto_single_cell)
