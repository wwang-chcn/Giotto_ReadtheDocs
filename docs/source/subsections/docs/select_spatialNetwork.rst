Select spatial network
----------------------

Description
~~~~~~~~~~~

Select spatial network

Usage
~~~~~

::

   select_spatialNetwork(...)

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``...``                           | Arguments passed on to            |
|                                   | ``get_spatialNetwork``            |
|                                   |                                   |
|                                   | ``name``                          |
|                                   |    name of spatial network        |
|                                   |                                   |
|                                   | ``output``                        |
|                                   |    object type to return as.      |
|                                   |    Options: 'spatialNetworkObj'   |
|                                   |    (default), 'networkDT' and     |
|                                   |    'networkDT_before_filter' for  |
|                                   |    data.table outputs.            |
|                                   |                                   |
|                                   | ``gobject``                       |
|                                   |    giotto object                  |
|                                   |                                   |
|                                   | ``spat_unit``                     |
|                                   |    spatial unit (e.g. "cell")     |
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

``get_spatialNetwork``
