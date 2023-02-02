addHMRF
-------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/python_hmrf.R#L492
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Add selected results from doHMRF to the giotto object

Usage
~~~~~

::

   addHMRF(
     gobject,
     spat_unit = NULL,
     feat_type = NULL,
     HMRFoutput,
     k = NULL,
     betas_to_add = NULL,
     hmrf_name = NULL
   )

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``gobject``                       | giotto object                     |
+-----------------------------------+-----------------------------------+
| ``spat_unit``                     | spatial unit                      |
+-----------------------------------+-----------------------------------+
| ``feat_type``                     | feature type                      |
+-----------------------------------+-----------------------------------+
| ``HMRFoutput``                    | HMRF output from doHMRF()         |
+-----------------------------------+-----------------------------------+
| ``k``                             | number of domains                 |
+-----------------------------------+-----------------------------------+
| ``betas_to_add``                  | results from different betas that |
|                                   | you want to add                   |
+-----------------------------------+-----------------------------------+
| ``hmrf_name``                     | specify a custom name             |
+-----------------------------------+-----------------------------------+

Value
~~~~~

giotto object
