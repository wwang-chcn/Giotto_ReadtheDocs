viewHMRFresults3D
-----------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/python_hmrf.R#L659
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

View results from doHMRF.

Usage
~~~~~

::

   viewHMRFresults3D(gobject, HMRFoutput, k = NULL, betas_to_view = NULL, ...)

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``gobject``                       | giotto object                     |
+-----------------------------------+-----------------------------------+
| ``HMRFoutput``                    | HMRF output from doHMRF           |
+-----------------------------------+-----------------------------------+
| ``k``                             | number of HMRF domains            |
+-----------------------------------+-----------------------------------+
| ``betas_to_view``                 | results from different betas that |
|                                   | you want to view                  |
+-----------------------------------+-----------------------------------+
| ``...``                           | additional parameters to          |
|                                   | spatPlot3D()                      |
+-----------------------------------+-----------------------------------+

Value
~~~~~

spatial plots with HMRF domains

See Also
~~~~~~~~

``spatPlot3D``
