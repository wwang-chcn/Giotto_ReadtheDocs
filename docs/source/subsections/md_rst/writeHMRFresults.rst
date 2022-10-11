================
writeHMRFresults
================

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/python_hmrf.R#L413

Description
===========

write results from doHMRF to a data.table.

Usage
=====

.. code:: r

   writeHMRFresults(
     gobject,
     HMRFoutput,
     k = NULL,
     betas_to_view = NULL,
     print_command = F
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
| ``k``                         | k to write results for               |
+-------------------------------+--------------------------------------+
| ``betas_to_view``             | results from different betas that    |
|                               | you want to view                     |
+-------------------------------+--------------------------------------+
| ``print_command``             | see the python command               |
+-------------------------------+--------------------------------------+

Value
=====

data.table with HMRF results for each b and the selected k
