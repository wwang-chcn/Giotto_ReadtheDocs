=========
Changelog
=========


Giotto Suite 2.0.0.998
======================

New features
------------

-  GiottoData package

   -  New package to work with spatial data associated with Giotto
   -  Stores the minidatasets: preprocessed giotto objects that are
      ready to be used in any function
   -  Moved: getSpatialDataset and loadGiottoMini functions to this
      package

-  I/O functions

   -  saveGiotto
   -  loadGiotto

      -  All above functions to general_help.R

   -  It saves a Giotto object into a folder using a specific structure.
      It’s essentially a wrapper around saveRDS that also works with
      spatVector and spatRaster pointers.

-  Interactive Polygon Filtering

   -  plotInteractivePolygon
   -  RShiny Gadget that enables interactive ROI filtering with polygons
      and the terra package

-  Polygon stamping functions

   -  polyStamp
   -  circleVertices
   -  rectVertices

      -  All above functions are in giotto_structures.R

   -  circle and rect Vertices functions generate data.tables of x and y
      vertices that represent the respective shapes. Vertex information
      is accepted by the polyStamp function along with a table of
      spatlocs with ‘sdimx’, ‘sdimy’, and ‘cell_ID’. A data.table of
      polygon vertices placed at each spatloc with the respective
      ‘cell_ID’ will then be generated.

Minor improvements and bug fixes
--------------------------------

-  Accessor functions

   -  get_CellMetadata (alias to pDataDT)
   -  set_CellMetadata
   -  get_FeatMetadata (alias to fDataDT)
   -  set_FeatMetadata

      -  All above functions to accessors.R

   -  Required inputs: gobject, spat_unit, feat_type, data.table with
      new metadata (for setters)
   -  *Note that setters will overwrite the entire metadata slot with
      whatever is provided as a replacement argument*

-  filterDistributions

   -  auxiliary_giotto.R
   -  Extended distribution summary to threshold, sum, and mean
   -  Added a flexible way to scale the y-axis

-  plotInteractionChangedFeatures

   -  spatial_interaction_visuals.R
   -  Adapted from plotInteractionChangedGenes
   -  Also made shorthand plotICF; deprecated plotICG and plotCPG

-  plotCombineInteractionChangedFeatures

   -  spatial_interaction_visuals.R
   -  Adapted from plotCombineInteractionChangedGenes
   -  Also made shorthand plotCombineICF; deprecated plotCombineICG and
      plotCombineCPG

-  plotCellProximityFeatures

   -  spatial_interaction_visuals.R
   -  Semantics change
   -  Also made shorthand plotCPF; deprecated plotCellProximityGenes and
      plotCPG

-  findInteractionChangedFeats

   -  spatial_interactions.R
   -  Adapted from findInteractionChangedGenes
   -  Also made shorthand findICF; deprecated findICG and findCPG

-  filterInteractionChangedFeats

   -  spatial_interactions.R
   -  Adapted from filterInteractionChangedGenes
   -  Also made shorthand filterICF; deprecated filterICG and filterCPG

-  combineInteractionChangedFeats

   -  spatial_interactions.R
   -  Adapted from combineInteractionChangedGenes
   -  Also made shorthand combineICF; deprecated combineICG and
      combineCPG

-  combineInteractionChangedFeatures_per_interaction,

   -  spatial_interactions.R
   -  Updated from combineCellProximityGenes_per_interaction
   -  Internal function which replaces
      combineCellProximityGenes_per_interaction
