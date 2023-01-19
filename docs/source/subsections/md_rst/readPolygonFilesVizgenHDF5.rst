==========================
readPolygonFilesVizgenHDF5
==========================

:Date: 1/19/23

https://github.com/drieslab/Giotto/tree/suite/R/general_help.R#L1326



==============================

readPolygonFilesVizgenHDF5

Description
-----------

Read and create polygons for all cells, or for only selected FOVs.

Usage
-----

.. code:: r

   readPolygonFilesVizgenHDF5(
     boundaries_path,
     fovs = NULL,
     z_indices = 1L:7L,
     segm_to_use = 1L,
     custom_polygon_names = NULL,
     flip_x_axis = FALSE,
     flip_y_axis = TRUE,
     calc_centroids = FALSE,
     smooth_polygons = TRUE,
     smooth_vertices = 60L,
     set_neg_to_zero = FALSE,
     H5Fopen_flags = "H5F_ACC_RDWR",
     cores = NA,
     create_gpoly_parallel = TRUE,
     create_gpoly_bin = FALSE,
     verbose = TRUE,
     polygon_feat_types = NULL
   )

Arguments
---------

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``boundaries_path``           | path to the cell_boundaries folder   |
+-------------------------------+--------------------------------------+
| ``fovs``                      | subset of fovs to use                |
+-------------------------------+--------------------------------------+
| ``z_indices``                 | z indices of polygons to use         |
+-------------------------------+--------------------------------------+
| ``segm_to_use``               | segmentation results to use (usually |
|                               | = 1. Depends on if alternative       |
|                               | segmentations were generated)        |
+-------------------------------+--------------------------------------+
| ``custom_polygon_names``      | a character vector to provide custom |
|                               | polygon names (optional)             |
+-------------------------------+--------------------------------------+
| ``flip_x_axis``               | flip x axis of polygon coordinates   |
|                               | (multiply by -1)                     |
+-------------------------------+--------------------------------------+
| ``flip_y_axis``               | flip y axis of polygon coordinates   |
|                               | (multiply by -1)                     |
+-------------------------------+--------------------------------------+
| ``calc_centroids``            | calculate centroids (default =       |
|                               | FALSE)                               |
+-------------------------------+--------------------------------------+
| ``smooth_polygons``           | smooth polygons (default = TRUE)     |
+-------------------------------+--------------------------------------+
| ``smooth_vertices``           | number of vertices for smoothing     |
+-------------------------------+--------------------------------------+
| ``set_neg_to_zero``           | set negative values to zero when     |
|                               | smoothing                            |
+-------------------------------+--------------------------------------+
| ``H5Fopen_flags``             | see ```H5Fopen`` <#h5fopen>`__ for   |
|                               | more details                         |
+-------------------------------+--------------------------------------+
| ``cores``                     | cores to use                         |
+-------------------------------+--------------------------------------+
| ``create_gpoly_parallel``     | (default = TRUE) Whether to run      |
|                               | gpoly creation in parallel           |
+-------------------------------+--------------------------------------+
| ``create_gpoly_bin``          | (Optional, default = FALSE)          |
|                               | Parallelization option. Accepts      |
|                               | integer values as an binning size    |
|                               | when generating giottoPolygon        |
|                               | objects                              |
+-------------------------------+--------------------------------------+
| ``verbose``                   | be verbose                           |
+-------------------------------+--------------------------------------+
| ``polygon_feat_types``        | deprecated. Use ``z_indices``        |
+-------------------------------+--------------------------------------+

Details
-------

Set H5Fopen_flags to â€œH5F_ACC_RDONLYâ€ if you encounter permission
issues.

Seealso
-------

```smoothGiottoPolygons`` <#smoothgiottopolygons>`__
