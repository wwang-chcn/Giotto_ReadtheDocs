=============================
createGiottoObjectSubcellular
=============================

:Date: 2022-09-22

Description
===========

Function to create a giotto object starting from subcellular polygon
(e.g. cell) and points (e.g. transcripts) information

Usage
=====

.. code:: r

   createGiottoObjectSubcellular(
     gpoints = NULL,
     gpolygons = NULL,
     polygon_mask_list_params = NULL,
     polygon_dfr_list_params = NULL,
     cell_metadata = NULL,
     feat_metadata = NULL,
     spatial_network = NULL,
     spatial_network_name = NULL,
     spatial_grid = NULL,
     spatial_grid_name = NULL,
     spatial_enrichment = NULL,
     spatial_enrichment_name = NULL,
     dimension_reduction = NULL,
     nn_network = NULL,
     images = NULL,
     instructions = NULL,
     cores = NA,
     verbose = TRUE
   )

Arguments
=========

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``gpoints``                   | giotto points                        |
+-------------------------------+--------------------------------------+
| ``gpolygons``                 | giotto polygons                      |
+-------------------------------+--------------------------------------+
| ``polygon_mask_list_params``  | list parameters for                  |
|                               | ```createGiottoPolygonsFromMask`     |
|                               | ` <#creategiottopolygonsfrommask>`__ |
+-------------------------------+--------------------------------------+
| ``polygon_dfr_list_params``   | list parameters for                  |
|                               | ```createGiottoPolygonsFromDfr       |
|                               | `` <#creategiottopolygonsfromdfr>`__ |
+-------------------------------+--------------------------------------+
| ``cell_metadata``             | cell annotation metadata             |
+-------------------------------+--------------------------------------+
| ``feat_metadata``             | feature annotation metadata for each |
|                               | unique feature                       |
+-------------------------------+--------------------------------------+
| ``spatial_network``           | list of spatial network(s)           |
+-------------------------------+--------------------------------------+
| ``spatial_network_name``      | list of spatial network name(s)      |
+-------------------------------+--------------------------------------+
| ``spatial_grid``              | list of spatial grid(s)              |
+-------------------------------+--------------------------------------+
| ``spatial_grid_name``         | list of spatial grid name(s)         |
+-------------------------------+--------------------------------------+
| ``spatial_enrichment``        | list of spatial enrichment score(s)  |
|                               | for each spatial region              |
+-------------------------------+--------------------------------------+
| ``spatial_enrichment_name``   | list of spatial enrichment name(s)   |
+-------------------------------+--------------------------------------+
| ``dimension_reduction``       | list of dimension reduction(s)       |
+-------------------------------+--------------------------------------+
| ``nn_network``                | list of nearest neighbor network(s)  |
+-------------------------------+--------------------------------------+
| ``images``                    | list of images                       |
+-------------------------------+--------------------------------------+
| ``instructions``              | list of instructions or output       |
|                               | result from                          |
|                               | ```createGiottoInstructi             |
|                               | ons`` <#creategiottoinstructions>`__ |
+-------------------------------+--------------------------------------+
| ``cores``                     | how many cores or threads to use to  |
|                               | read data if paths are provided      |
+-------------------------------+--------------------------------------+
| ``verbose``                   | be verbose when building Giotto      |
|                               | object                               |
+-------------------------------+--------------------------------------+

Value
=====

giotto object
