smoothGiottoPolygons
--------------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/giotto_structures.R#L850
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Smooths Giotto polygon object

Usage
~~~~~

::

   smoothGiottoPolygons(
     gpolygon,
     vertices = 20,
     k = 3,
     set_neg_to_zero = TRUE,
     ...
   )

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``gpolygon``                      | giotto polygon object             |
+-----------------------------------+-----------------------------------+
| ``vertices``                      | number of vertices                |
+-----------------------------------+-----------------------------------+
| ``k``                             | k                                 |
+-----------------------------------+-----------------------------------+
| ``set_neg_to_zero``               | set negative values to zero       |
|                                   | (default: TRUE)                   |
+-----------------------------------+-----------------------------------+
| ``...``                           | additional params to pass to      |
|                                   | ``spline``                        |
+-----------------------------------+-----------------------------------+

Value
~~~~~

Smoothed Giotto polygon object with reduced vertices

See Also
~~~~~~~~

``spline``
