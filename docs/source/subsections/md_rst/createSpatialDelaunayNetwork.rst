
``createSpatialDelaunayNetwork``
====================================

createSpatialDelaunayNetwork

Description
-----------

Create a spatial Delaunay network based on cell centroid physical distances.

Usage
-----

.. code-block:: r

   createSpatialDelaunayNetwork(
     gobject,
     method = c("deldir", "delaunayn_geometry", "RTriangle"),
     dimensions = "all",
     name = "Delaunay_network",
     maximum_distance = "auto",
     minimum_k = 0,
     options = "Pp",
     Y = TRUE,
     j = TRUE,
     S = 0,
     verbose = T,
     return_gobject = TRUE,
     ...
   )

Arguments
---------

.. list-table::
   :header-rows: 1

   * - Argument
     - Description
   * - ``gobject``
     - giotto object
   * - ``method``
     - package to use to create a Delaunay network
   * - ``dimensions``
     - which spatial dimensions to use. Use "sdimx" (spatial dimension x), "sdimy", "sdimz" respectively to refer to X (or the 1st), Y (or the 2nd) and Z(or the 3rd) dimension, see details. (default = all)
   * - ``name``
     - name for spatial network (default = 'delaunay_network')
   * - ``maximum_distance``
     - distance cuttof for Delaunay neighbors to consider. If "auto", "upper wisker" value of the distance vector between neighbors is used; see the boxplot graphics documentation for more details.(default = "auto")
   * - ``minimum_k``
     - minimum number of neigbhours if maximum_distance != NULL
   * - ``options``
     - (geometry) String containing extra control options for the underlying Qhull command; see the Qhull documentation (../doc/qhull/html/qdelaun.html) for the available options. (default = 'Pp', do not report precision problems)
   * - ``Y``
     - (RTriangle) If TRUE prohibits the insertion of Steiner points on the mesh boundary.
   * - ``j``
     - (RTriangle) If TRUE jettisons vertices that are not part of the final triangulation from the output.
   * - ``S``
     - (RTriangle) Specifies the maximum number of added Steiner points.
   * - ``verbose``
     - verbose
   * - ``return_gobject``
     - boolean: return giotto object (default = TRUE)
   * - ``list()``
     - Other additional parameters


Details
-------

Creates a spatial Delaunay network as explained in `\ ``delaunayn`` <#delaunayn>`_ (default), `\ ``deldir`` <#deldir>`_ , or `\ ``triangulate`` <#triangulate>`_ .

Value
-----

giotto object with updated spatial network slot
