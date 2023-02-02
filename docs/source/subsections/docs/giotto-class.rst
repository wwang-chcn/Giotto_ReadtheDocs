S4 giotto Class
---------------

Description
~~~~~~~~~~~

Framework of giotto object to store and work with spatial expression
data

Details
~~~~~~~

[**expression**] There are several ways to provide expression
information:

[**expression_feat**] The different features or modalities such as rna,
protein, metabolites, ... that are provided in the expression slot.

Slots
~~~~~

``expression``
   expression information

``expression_feat``
   available features (e.g. rna, protein, ...)

``spatial_locs``
   spatial location coordinates for cells/spots/grids

``spatial_info``
   information about spatial units (Giotto spatVector)

``cell_metadata``
   metadata for cells

``feat_metadata``
   metadata for available features

``feat_info``
   information about features (Giotto spatVector)

``cell_ID``
   unique cell IDs

``feat_ID``
   unique feature IDs for all features or modalities

``spatial_network``
   spatial network in data.table/data.frame format

``spatial_grid``
   spatial grid in data.table/data.frame format

``spatial_enrichment``
   slot to save spatial enrichment-like results

``dimension_reduction``
   slot to save dimension reduction coordinates

``nn_network``
   nearest neighbor network in igraph format

``images``
   slot to store giotto images

``largeImages``
   slot to store giottoLargeImage objects

``parameters``
   slot to save parameters that have been used

``instructions``
   slot for global function instructions

``offset_file``
   offset file used to stitch together image fields

``OS_platform``
   Operating System to run Giotto analysis on

``join_info``
   information about joined Giotto objects
