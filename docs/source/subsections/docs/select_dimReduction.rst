select_dimReduction
-------------------

Description
~~~~~~~~~~~

select_dimReduction

Usage
~~~~~

::

   select_dimReduction(...)

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``...``                           | Arguments passed on to            |
|                                   | ``get_dimReduction``              |
|                                   |                                   |
|                                   | ``reduction``                     |
|                                   |    reduction on cells or features |
|                                   |    (e.g. "cells", "feats")        |
|                                   |                                   |
|                                   | ``reduction_method``              |
|                                   |    reduction method (e.g. "pca",  |
|                                   |    "umap", "tsne")                |
|                                   |                                   |
|                                   | ``name``                          |
|                                   |    name of reduction results      |
|                                   |                                   |
|                                   | ``output``                        |
|                                   |    object type to return as.      |
|                                   |    Either 'dimObj' (default) or   |
|                                   |    'data.table of the embedding   |
|                                   |    coordinates.                   |
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

``get_dimReduction``
