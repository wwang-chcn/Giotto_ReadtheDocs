list_spatial_networks
---------------------

Description
~~~~~~~~~~~

return the available spatial networks that are attached to the Giotto
object

Usage
~~~~~

::

   list_spatial_networks(gobject, spat_unit = NULL, return_uniques = FALSE)

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``gobject``                       | giotto object                     |
+-----------------------------------+-----------------------------------+
| ``spat_unit``                     | spatial unit (e.g. "cell")        |
+-----------------------------------+-----------------------------------+
| ``return_uniques``                | return unique nesting names       |
|                                   | (ignores if final object          |
|                                   | exists/is correct class)          |
+-----------------------------------+-----------------------------------+

Value
~~~~~

data.table of names and locations of available spatial networks, col
order matters or list of unique nestings
