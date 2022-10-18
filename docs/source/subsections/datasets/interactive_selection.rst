=========================
Interactive selection
=========================

:Date: 2022-10-13

Set up Giotto object
=========================

To follow this tutorial, you must pre-run the Parts 1-4 from the `Mouse Visium Brain tutorial <https://giottosuite.readthedocs.io/en/latest/subsections/datasets/interactive_selection.html/>`__

You can use as input either a ggplot2 object, a terra::rast image or the output of running the spatPlot2D() function.

Part 1: Create a Giotto spatPlot object
=================================================

When creating the spatPlot2D() object, you can choose to only plot the spatial cells/spots, or show the tissue image in the background.

If you are planning to select individual clusters or cell types, we recommend to color the cells/spots by using the cell_color argument.

.. container:: cell

   .. code:: r

      ## Plot spatial cells/spots
      my_spatPlot <- spatPlot2D(gobject = visium_brain,
                                cell_color = 'leiden_clus',
                                point_size = 1.5,
                                point_alpha = 0.5,
                                show_image = FALSE)

      ## Plot spatial cells/spots with tissue on the background
      my_spatPlot <- spatPlot2D(gobject = visium_brain,
                                point_size = 1.5,
                                point_alpha = 0.1,
                                show_image = TRUE)

Part 2: Run the interactive selection tool
====================================

plotInteractivePolygons( ) will run a ShinyApp gadget within your RStudio session. Use your cursor to draw the area of interest and add a name. You can draw as many regions as you wish.

.. container:: cell

   .. code:: r

      ## Run the Shiny app with default parameters
      plotInteractivePolygons(my_spatPlot)

.. image:: /images/images_pkgdown/interactive_selection/vignette_221013/1-interactive_brain_spots.png
   :width: 50.0%

.. image:: /images/images_pkgdown/interactive_selection/vignette_221013/2-interactive_brain_tissue.png
   :width: 50.0%

.. container:: cell

   .. code:: r

      ## Modify the width and/or color of the line
      plotInteractivePolygons(my_spatPlot,
                              color = "black",
                              lwd = 2)

.. image:: /images/images_pkgdown/interactive_selection/vignette_221013/3-interactive_brain_black.png
   :width: 50.0%

.. container:: cell

   .. code:: r

      ## Modify the width or heigh of the plotted image
      plotInteractivePolygons(my_spatPlot,
                              height = 500)

.. image:: /images/images_pkgdown/interactive_selection/vignette_221013/4-interactive_brain_height.png
   :width: 50.0%

.. container:: cell

   .. code:: r

      ## Use the zoom in and out slide-bars to select small areas
      plotInteractivePolygons(my_spatPlot,
                        height = 320)

.. image:: /images/images_pkgdown/interactive_selection/vignette_221013/5-interactive_brain_zoom.png
   :width: 50.0%

Part 3: Save the coordinates
===========================

Click on the button *Done* once you have finished selecting the areas of interest.

By default, plotInteractivePolygons will print the polygon x,y coordinates as a data.table object on the Console panel, but you can store the output using the assignment operator.

.. container:: cell

   .. code:: r

      ## The polygon coordinates will be saved on my_polygon_coordinates as a data.table object
      my_polygon_coordinates <- plotInteractivePolygons(my_spatPlot,
                                                        height = 320)

.. image:: /images/images_pkgdown/interactive_selection/vignette_221013/6-my_polygon_coordinates.png
   :width: 50.0%

Now, let's add the polygon coordinates to the Giotto object

.. container:: cell

   .. code:: r

   ## We must transform the data.table or data.frame with coordinates into a Giotto polygon object
   my_giotto_polygons <- createGiottoPolygonsFromDfr(my_polygon_coordinates)

   ## Then, add the polygons to the Giotto object
   visium_brain <- addGiottoPolygons(gobject = visium_brain,
                                     gpolygons = list(my_giotto_polygons))

Finally, add the corresponding polygon ID to cell Metadata. By default, a "no_polygon" label will be added to cells outside of polygons but you can customize it by using the na.label argument.

.. container:: cell

   .. code:: r

   ## Using the default parameters
   visium_brain <- addPolygonCells(visium_brain)

   ## Let's see how it looks like now the cell_metadata
   pDataDT(visium_brain)

.. image:: /images/images_pkgdown/interactive_selection/vignette_221013/7-new_metadata.png
   :width: 80.0%

   ## Customize the NA label
   visium_brain <- addPolygonCells(visium_brain, na.label = "No Polygon")

.. image:: /images/images_pkgdown/interactive_selection/vignette_221013/8-new_metadata_customized.png
   :width: 80.0%

Part 4: Get the cells located within each polygon
===========================

You can extract the coordinates and IDs from cells located within one or multiple regions of interest.

.. container:: cell

   .. code:: r

   ## Provide the name of the polygon to extract cells from
      getCellsFromPolygon(visium_brain, polygons = "polygon 1")

.. image:: /images/images_pkgdown/interactive_selection/vignette_221013/9-get_cells_polygon1.png
   :width: 50.0%

.. container:: cell

   .. code:: r

      ## If no polygon name is provided, cells located within all polygons will be retrived
      getCellsFromPolygon(visium_brain)

.. image:: /images/images_pkgdown/interactive_selection/vignette_221013/10-get_cells.png
   :width: 50.0%

Part 5: Compare gene expression
===========================

Let's compare the expression levels of some genes of interest between the selected regions.

.. container:: cell

   .. code:: r

      ## You can provide a list of genes
      comparePolygonExpression(visium_brain,
                               selected_feats = c("Stmn1", "Psd", "Ly6h"))


.. image:: /images/images_pkgdown/interactive_selection/vignette_221013/11-compare_genes.png
   :width: 50.0%

.. container:: cell

   .. code:: r

      ## Or calculate the top genes expressed within each region, then provide the result to compare polygons.
      scran_results <- findMarkers_one_vs_all(visium_brain,
                                              spat_unit = "cell",
                                              feat_type = "rna",
                                              method = "scran",
                                              expression_values = "normalized",
                                              cluster_column = "poly_ID",
                                              min_feats = 10)

      top_genes <- scran_results[, head(.SD, 2), by = 'cluster']$feats

      comparePolygonExpression(visium_brain,
                               selected_feats = top_genes)


.. image:: /images/images_pkgdown/interactive_selection/vignette_221013/12-compare_topgenes.png
   :width: 50.0%

Part 6: Compare cell abundance
===========================

If you have run an analysis for finding clusters or have anotated cell types within the cell metadata slot, you can use the column name to compare the abundance of cell types between the selected regions.

.. container:: cell

   .. code:: r

      ## By default, the function will look for the leiden_cluster
      compareCellAbundance(visium_brain)

      ## You can use other column within the cell metadata table to compare the cell type abundances
      compareCellAbundance(visium_brain, cell_type_column = "cell_type")

.. image:: /images/images_pkgdown/interactive_selection/vignette_221013/13-compare_cell_abundance.png
   :width: 50.0%


Part 7: Create spatPlots per region
===========================

You can use the spatPlot function arguments to isolate and plot each region. Also, you can color each cell by cluster, cell type or expression level.

.. container:: cell

   .. code:: r

      ## Compare clusters within each region
      spatPlot2D(visium_brain,
                 cell_color = 'leiden_clus',
                 group_by = 'poly_ID',
                 point_size = 1,
                 coord_fix_ratio = 1,
                 cow_n_col = 3,
                 show_legend = FALSE)

.. image:: /images/images_pkgdown/interactive_selection/vignette_221013/14-compare_spatplots.png
   :width: 80.0%

.. container:: cell

   .. code:: r

      ## Compare expression levels between regions
      spatFeatPlot2D(visium_brain,
                     expression_values = "scaled",
                     group_by = 'poly_ID',
                     feats = "Psd",
                     point_size = 1)

.. image:: /images/images_pkgdown/interactive_selection/vignette_221013/15-compare_spatfeatplot.png
   :width: 80.0%
