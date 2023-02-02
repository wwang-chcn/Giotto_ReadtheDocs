Select spatial grid
-------------------

Description
~~~~~~~~~~~

Select spatial grid

Usage
~~~~~

::

   select_spatialGrid(...)

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``...``                           | Arguments passed on to            |
|                                   | ``get_spatialGrid``               |
|                                   |                                   |
|                                   | ``name``                          |
|                                   |    name of spatial grid           |
|                                   |                                   |
|                                   | ``return_grid_Obj``               |
|                                   |    return grid object (default =  |
|                                   |    FALSE)                         |
|                                   |                                   |
|                                   | ``gobject``                       |
|                                   |    giotto object                  |
|                                   |                                   |
|                                   | ``spat_unit``                     |
|                                   |    spatial unit (e.g. "cell")     |
|                                   |                                   |
|                                   | ``feat_type``                     |
|                                   |    feature type (e.g. "rna",      |
|                                   |    "dna", "protein")              |
|                                   |                                   |
|                                   | ``set_defaults``                  |
|                                   |    set default spat_unit and      |
|                                   |    feat_type. Change to FALSE     |
|                                   |    only when expression and       |
|                                   |    spat_info are not expected to  |
|                                   |    exist.                         |
+-----------------------------------+-----------------------------------+

See Also
~~~~~~~~

``get_spatialGrid``
