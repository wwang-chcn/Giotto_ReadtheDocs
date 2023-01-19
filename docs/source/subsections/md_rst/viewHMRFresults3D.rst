=================
viewHMRFresults3D
=================

:Date: 1/19/23

https://github.com/drieslab/Giotto/tree/suite/R/python_hmrf.R#L659



=====================

viewHMRFresults3D

Description
-----------

View results from doHMRF.

Usage
-----

.. code:: r

   viewHMRFresults3D(gobject, HMRFoutput, k = NULL, betas_to_view = NULL, ...)

Arguments
---------

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``gobject``                   | giotto object                        |
+-------------------------------+--------------------------------------+
| ``HMRFoutput``                | HMRF output from doHMRF              |
+-------------------------------+--------------------------------------+
| ``k``                         | number of HMRF domains               |
+-------------------------------+--------------------------------------+
| ``betas_to_view``             | results from different betas that    |
|                               | you want to view                     |
+-------------------------------+--------------------------------------+
| ``list()``                    | additional parameters to             |
|                               | spatPlot3D()                         |
+-------------------------------+--------------------------------------+

Value
-----

spatial plots with HMRF domains

Seealso
-------

```spatPlot3D`` <#spatplot3d>`__
