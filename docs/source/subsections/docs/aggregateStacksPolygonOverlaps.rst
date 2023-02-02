aggregateStacksPolygonOverlaps
------------------------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/auxiliary_giotto.R#L3076
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

aggregate polygons overlap information from different z-stacks

Usage
~~~~~

::

   aggregateStacksPolygonOverlaps(
     gobject,
     spat_units,
     feat_type,
     new_spat_unit = "aggregate"
   )

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``gobject``                       | giotto object                     |
+-----------------------------------+-----------------------------------+
| ``spat_units``                    | spatial units to aggregate        |
+-----------------------------------+-----------------------------------+
| ``feat_type``                     | feature type used for overlap     |
|                                   | calculations                      |
+-----------------------------------+-----------------------------------+
| ``new_spat_unit``                 | new name for aggregated spatial   |
|                                   | unit                              |
+-----------------------------------+-----------------------------------+

Value
~~~~~

giotto object

See Also
~~~~~~~~

Other aggregate stacks: ``aggregateStacksExpression()``,
``aggregateStacksLocations()``, ``aggregateStacksPolygons()``,
``aggregateStacks()``
