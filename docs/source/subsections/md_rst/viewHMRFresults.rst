===============
viewHMRFresults
===============

:Date: 2022-09-22

Description
===========

View results from doHMRF.

Usage
=====

.. code:: r

   viewHMRFresults(
     gobject,
     HMRFoutput,
     k = NULL,
     betas_to_view = NULL,
     third_dim = FALSE,
     ...
   )

Arguments
=========

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
| ``third_dim``                 | 3D data (boolean)                    |
+-------------------------------+--------------------------------------+
| ``list()``                    | additional paramters (see details)   |
+-------------------------------+--------------------------------------+

Value
=====

spatial plots with HMRF domains

Seealso
=======

```spatPlot2D`` <#spatplot2d>`__ and ```spatPlot3D`` <#spatplot3d>`__
