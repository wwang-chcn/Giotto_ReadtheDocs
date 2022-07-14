
``crossSectionGenePlot``
============================

crossSectionGenePlot

Description
-----------

Visualize cells and gene expression in a virtual cross section according to spatial coordinates

Usage
-----

.. code-block:: r

   crossSectionGenePlot(
     gobject = NULL,
     crossSection_obj = NULL,
     name = NULL,
     spatial_network_name = "Delaunay_network",
     default_save_name = "crossSectionGenePlot",
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
   * - ``crossSection_obj``
     - crossSection object
   * - ``name``
     - name of virtual cross section to use
   * - ``spatial_network_name``
     - name of spatial network to use
   * - ``default_save_name``
     - default save name for saving, don't change, change save_name in save_param
   * - ``...``
     - parameters for spatGenePlot2D


Details
-------

Description of parameters.

Value
-----

ggplot

Seealso
-------

`\ ``spatGenePlot3D`` <#spatgeneplot3d>`_ and `\ ``spatGenePlot2D`` <#spatgeneplot2d>`_
