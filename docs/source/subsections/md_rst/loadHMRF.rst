loadHMRF
--------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/python_hmrf.R#L304
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

load previous HMRF

Usage
~~~~~

::

   loadHMRF(
     name_used = "test",
     output_folder_used,
     k_used = 10,
     betas_used,
     python_path_used
   )

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``name_used``                     | name of HMRF that was run         |
+-----------------------------------+-----------------------------------+
| ``output_folder_used``            | output folder that was used       |
+-----------------------------------+-----------------------------------+
| ``k_used``                        | number of HMRF domains that was   |
|                                   | tested                            |
+-----------------------------------+-----------------------------------+
| ``betas_used``                    | betas that were tested            |
+-----------------------------------+-----------------------------------+
| ``python_path_used``              | python path that was used         |
+-----------------------------------+-----------------------------------+

Details
~~~~~~~

Description of HMRF parameters ...

Value
~~~~~

reloads a previous ran HMRF from doHRMF
