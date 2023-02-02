select_spatial_locations
------------------------

Description
~~~~~~~~~~~

select_spatial_locations

Usage
~~~~~

::

   select_spatial_locations(...)

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``...``                           | Arguments passed on to            |
|                                   | ``get_spatial_locations``         |
|                                   |                                   |
|                                   | ``spat_loc_name``                 |
|                                   |    name of spatial locations      |
|                                   |    (defaults to first name in     |
|                                   |    spatial_locs slot, e.g. "raw") |
|                                   |                                   |
|                                   | ``output``                        |
|                                   |    what object type to get the    |
|                                   |    spatial locations as. Default  |
|                                   |    is as a 'spatLocsObj'.         |
|                                   |    Returning as 'data.table' is   |
|                                   |    also possible.                 |
|                                   |                                   |
|                                   | ``copy_obj``                      |
|                                   |    whether to copy/duplicate when |
|                                   |    getting the object (default =  |
|                                   |    TRUE)                          |
|                                   |                                   |
|                                   | ``verbose``                       |
|                                   |    be verbose                     |
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

``get_spatial_locations``
