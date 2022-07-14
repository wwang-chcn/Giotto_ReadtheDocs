
``addHMRF``
===============

addHMRF

Description
-----------

Add selected results from doHMRF to the giotto object

Usage
-----

.. code-block:: r

   addHMRF(gobject, HMRFoutput, k = NULL, betas_to_add = NULL, hmrf_name = NULL)

Arguments
---------

.. list-table::
   :header-rows: 1

   * - Argument
     - Description
   * - ``gobject``
     - giotto object
   * - ``HMRFoutput``
     - HMRF output from doHMRF()
   * - ``k``
     - number of domains
   * - ``betas_to_add``
     - results from different betas that you want to add
   * - ``hmrf_name``
     - specify a custom name


Value
-----

giotto object
