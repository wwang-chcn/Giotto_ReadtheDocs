Add giotto polygons to giotto object
------------------------------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/giotto_structures.R#L708
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Adds Giotto polygon to an existing Giotto object

Usage
~~~~~

::

   addGiottoPolygons(gobject, gpolygons)

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``gobject``                       | giotto object                     |
+-----------------------------------+-----------------------------------+
| ``gpolygons``                     | list of giotto polygon objects,   |
|                                   | see                               |
|                                   | ``createGiottoPolygonsFromMask``  |
|                                   | and                               |
|                                   | ``createGiottoPolygonsFromDfr``   |
+-----------------------------------+-----------------------------------+

Value
~~~~~

giotto object
