Select nearest network
----------------------

Description
~~~~~~~~~~~

Select nearest network

Usage
~~~~~

::

   select_NearestNetwork(...)

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``...``                           | Arguments passed on to            |
|                                   | ``get_NearestNetwork``            |
|                                   |                                   |
|                                   | ``nn_network_to_use``             |
|                                   |    "kNN" or "sNN"                 |
|                                   |                                   |
|                                   | ``network_name``                  |
|                                   |    name of NN network to be used  |
|                                   |                                   |
|                                   | ``output``                        |
|                                   |    return a igraph or data.table  |
|                                   |    object. Default 'igraph'       |
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

``get_NearestNetwork``
