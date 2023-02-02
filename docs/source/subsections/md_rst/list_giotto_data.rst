list_giotto_data
----------------

Description
~~~~~~~~~~~

list the available data within specified giotto object slot

Usage
~~~~~

::

   list_giotto_data(gobject = NULL, slot = NULL, ...)

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``gobject``                       | giotto object                     |
+-----------------------------------+-----------------------------------+
| ``slot``                          | giotto object slot of interest    |
|                                   | (e.g. "expression",               |
|                                   | "spatial_locs", etc.)             |
+-----------------------------------+-----------------------------------+
| ``...``                           | additional params to pass         |
+-----------------------------------+-----------------------------------+

Value
~~~~~

names and locations of data within giotto object slot
