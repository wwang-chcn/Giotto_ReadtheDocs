writeHMRFresults
----------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/python_hmrf.R#L415
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

write results from doHMRF to a data.table.

Usage
~~~~~

::

   writeHMRFresults(
     gobject,
     HMRFoutput,
     k = NULL,
     betas_to_view = NULL,
     print_command = F
   )

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``gobject``                       | giotto object                     |
+-----------------------------------+-----------------------------------+
| ``HMRFoutput``                    | HMRF output from doHMRF           |
+-----------------------------------+-----------------------------------+
| ``k``                             | k to write results for            |
+-----------------------------------+-----------------------------------+
| ``betas_to_view``                 | results from different betas that |
|                                   | you want to view                  |
+-----------------------------------+-----------------------------------+
| ``print_command``                 | see the python command            |
+-----------------------------------+-----------------------------------+

Value
~~~~~

data.table with HMRF results for each b and the selected k
