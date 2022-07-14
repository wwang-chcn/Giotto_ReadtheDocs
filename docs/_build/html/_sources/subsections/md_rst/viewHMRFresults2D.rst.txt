
``viewHMRFresults2D``
=========================

viewHMRFresults2D

Description
-----------

View results from doHMRF.

Usage
-----

.. code-block:: r

   viewHMRFresults2D(gobject, HMRFoutput, k = NULL, betas_to_view = NULL, ...)

Arguments
---------

.. list-table::
   :header-rows: 1

   * - Argument
     - Description
   * - ``gobject``
     - giotto object
   * - ``HMRFoutput``
     - HMRF output from doHMRF
   * - ``k``
     - number of HMRF domains
   * - ``betas_to_view``
     - results from different betas that you want to view
   * - ``list()``
     - additional parameters to spatPlot2D()


Value
-----

spatial plots with HMRF domains

Seealso
-------

`\ ``spatPlot2D`` <#spatplot2d>`_
