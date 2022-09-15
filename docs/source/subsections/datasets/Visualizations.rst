=======================================
How to make visualizations with Giotto?
=======================================

:Date: 2022-09-14

This tutorial walks through the visualization capabilities of Giotto. We
will revisit dimension reduction visualizations (PCAs and UMAPs) that we
created in the previous tutorial, `dimension
reduction <./dimension_reduction.html>`__. We will then explore how to
create heatmaps, violin plots, and visualizations that are unique to
Giotto: spatial maps and networks.

This tutorial uses a MerFish dataset of mouse hypothalamic preoptic
regions. A complete walkthough of that dataset can be found
`here <./merFISH_hypoth_210924.html>`__. To download the data used to
create the Giotto Object below, please ensure that
`wget <https://www.gnu.org/software/wget/?>`__ is installed locally.

Creating your Giotto Object
===========================

.. container:: cell

   .. code:: r

      library(Giotto)
      data_directory = '/path/to/data/directory/'
      results_directory = '/path/to/results/directory/'

      genv_exists = checkGiottoEnvironment()
      if(!genv_exists){
        # The following command need only be run once to install the Giotto environment.
        installGiottoEnvironment()
      }

      # Optional: Specify a Python path. If set to NULL (default), the previously installed
      # Giotto environment will be used.
      my_python_path = NULL # alternatively, "/your/python/path/" if desired.

      # Get the dataset
      getSpatialDataset(dataset = 'merfish_preoptic', directory = data_directory, method = 'wget')

      ## Part 1: Giotto global instructions and preparations
      # 1. Optional: Set Giotto instructions
      instrs = createGiottoInstructions(save_plot = TRUE, 
                                        show_plot = TRUE,
                                        save_dir = results_directory, 
                                        python_path = my_python_path)

      # 2. Create file paths to feed data into Giotto object 
      expr_path = paste0(data_directory, "merFISH_3D_data_expression.txt.gz")
      loc_path = paste0(data_directory, "merFISH_3D_data_cell_locations.txt")
      meta_path = paste0(data_directory, "merFISH_3D_metadata.txt")

      ## Part 2: Create Giotto Object & Process Data
      ## Create Giotto object
      testobj <- createGiottoObject(expression = expr_path,
                                    spatial_locs = loc_path,
                                    instructions = instrs)


      ## Add additional metadata if wanted
      metadata = data.table::fread(meta_path)
      testobj = addCellMetadata(testobj, new_metadata = metadata$layer_ID, vector_name = 'layer_ID')
      testobj = addCellMetadata(testobj, new_metadata = metadata$orig_cell_types, vector_name = 'orig_cell_types')

      # Process the Giotto object, filtering, normalization, and adding statistics.

      # Note that for the purposes of this tutorial, we want to visualize the entire dataset. 
        # Thus, our filter parameters are set to 0, so as to not remove any cells.
      # Note that since adjustment is not required, adjust_params is set to NULL.

      testobj <- processGiotto(testobj,
                               filter_params = list(expression_threshold = 0,feat_det_in_min_cells = 0, min_det_feats_per_cell = 0),
                               norm_params = list( norm_methods = 'standard', scale_feats = TRUE, scalefactor = 1000),
                               stat_params = list(expression_values = 'normalized'),
                               adjust_params = NULL)

1. Visualizing your dataset
============================

This dataset includes eight sequential slices. As such it can be
visualized both in 2D…

.. container:: cell

   .. code:: r

      # 2D
      spatPlot(gobject = testobj, point_size = 1.5)

.. image:: ../inst/images/getting_started_figs/visualizations/0-spatPlot2D.png
   :width: 50.0%

and 3D

.. container:: cell

   .. code:: r

      # 3D
      spatPlot3D(gobject = testobj, point_size = 1, axis_scale = 'real')

.. image:: ../inst/images/getting_started_figs/visualizations/1-spatPlot3D.png
   :width: 50.0%

2. Visualizing your clusters
============================

.. container:: cell

   .. code:: r

      # After running dimension reduction, you are able to create a UMAP
      # Run PCA
      testobj <- runPCA(gobject = testobj, feats_to_use = NULL, scale_unit = FALSE, center = TRUE)
      # Run UMAP
      testobj <- runUMAP(gobject = testobj, dimensions_to_use = 1:8, n_components = 3, n_threads = 4)
      # Plot UMAP 2D
      plotUMAP_2D(gobject = testobj, point_size = 1.5) 

.. image:: ../inst/images/getting_started_figs/visualizations/2-UMAP_2D.png
   :width: 50.0%

.. container:: cell

   .. code:: r

      # Plot UMAP 3D
      plotUMAP_3D(gobject = testobj, point_size = 1.5) 

.. image:: ../inst/images/getting_started_figs/visualizations/3-UMAP_3D.png
   :width: 33.0%

Please note that this 3D UMAP plot is shown as such to convey as much
information as possible in 2D. Plots shown below will be shown at
different angles for the same reasoning.

.. container:: cell

   .. code:: r

      # Create a k Nearest Network for clustering
      testobj <- createNearestNetwork(gobject = testobj, dimensions_to_use = 1:8, k = 15)

      ## Preform Leiden clustering
      testobj <- doLeidenCluster(gobject = testobj, 
                                 resolution = 0.2, 
                                 n_iterations = 200, 
                                 name = 'leiden_0.2.200')

      #Plot the clusters
      plotUMAP_3D(gobject = testobj, cell_color = 'leiden_0.2.200', point_size = 1.5, show_center_label = F)

.. image:: ../inst/images/getting_started_figs/visualizations/4-UMAP_3D.png
   :width: 33.0%

Visualize the cell clusters within the tissue by grouping by layer_ID

.. container:: cell

   .. code:: r

      spatPlot2D(gobject = testobj, 
                 point_size = 1.0, 
                 cell_color = 'leiden_0.2.200', 
                 group_by = 'layer_ID', 
                 cow_n_col = 2, 
                 group_by_subset = c(260, 160, 60, -40, -140, -240))

.. image:: ../inst/images/MerFISH_hypoth/210927_results/8-spatPlot2D.png
   :width: 50.0%

Visualize expression levels within the tissue

.. container:: cell

   .. code:: r

      # replace the cell color to represent the number of features/ cell ("nr_feats")
      spatPlot2D(gobject = testobj, point_size = 1.5, 
                 cell_color = 'nr_feats', color_as_factor = F,
                 group_by = 'layer_ID', cow_n_col = 2, group_by_subset = c(260, 160, 60, -40, -140, -240))

.. image:: ../inst/images/MerFISH_hypoth/211001_results/4-spatPlot2D.png
   :width: 50.0%

3. Compare Clusters
===================

.. container:: cell

   .. code:: r

      # Plot a heatmap of clusters
      showClusterHeatmap(gobject = testobj, cluster_column = 'leiden_0.2.200')

.. image:: ../inst/images/MerFISH_hypoth/211001_results/22-showClusterHeatmap.png
   :width: 50.0%

.. container:: cell

   .. code:: r

      # Plot a dendogram to explore cluster similarity
      showClusterDendrogram(testobj, h = 0.5, rotate = T, cluster_column = 'leiden_0.2.200')

.. image:: ../inst/images/MerFISH_hypoth/211001_results/6-showClusterDendrogram.png
   :width: 50.0%

Visualize Cell Markers with Violin Plots and Heatmaps
=====================================================

.. container:: cell

   .. code:: r

      markers = findMarkers_one_vs_all(gobject = testobj,
                                       method = 'gini',
                                       expression_values = 'normalized',
                                       cluster_column = 'leiden_0.2.200',
                                       min_feats = 1, rank_score = 2)
      markers[, head(.SD, 2), by = 'cluster']

      # Create a violinplot
      topgini_genes = unique(markers[, head(.SD, 2), by = 'cluster']$feats)
      violinPlot(testobj, feats = topgini_genes, cluster_column = 'leiden_0.2.200', strip_position = 'right')

.. image:: ../inst/images/MerFISH_hypoth/210924_results/9-violinPlot.png
   :width: 50.0%

.. container:: cell

   .. code:: r

      # Create a heatmap of top gini genes by cluster
      plotMetaDataHeatmap(testobj, expression_values = 'scaled',
                          metadata_cols = c('leiden_0.2.200'),
                          selected_feats = topgini_genes)

.. image:: ../inst/images/MerFISH_hypoth/210927_results/10-plotMetaDataHeatmap.png
   :width: 50.0%

Visualize Cell Types in Tissue
------------------------------

Annotate your clusters

.. container:: cell

   .. code:: r

      ## name clusters
      clusters_cell_types_hypo = c('Inhibitory', 'Inhibitory', 'Excitatory', 'Astrocyte','OD Mature', 'Endothelial',
                                   'OD Mature', 'OD Immature', 'Ependymal', 'Ambiguous', 'Endothelial', 'Microglia', 'OD Mature')

      names(clusters_cell_types_hypo) = as.character(sort(cluster_order))
      testobj = annotateGiotto(gobject = testobj, 
                               annotation_vector = clusters_cell_types_hypo,
                               cluster_column = 'leiden_0.2.200', 
                               name = 'cell_types')

      mycolorcode = c('red', 'lightblue', 'yellowgreen','purple', 'darkred', 'magenta', 'mediumblue', 'yellow', 'gray')
      names(mycolorcode) = c('Inhibitory', 'Excitatory','OD Mature', 'OD Immature', 'Astrocyte', 'Microglia', 'Ependymal','Endothelial', 'Ambiguous')

      # Visualize with UMAP
      plotUMAP_3D(testobj, cell_color = 'cell_types', point_size = 1.5, cell_color_code = mycolorcode)

.. image:: ../inst/images/MerFISH_hypoth/210927_results/14-UMAP3D.png
   :width: 50.0%

View cells types in tissue in two dimensions…

.. container:: cell

   .. code:: r

       spatPlot2D(gobject = testobj, point_size = 1.0,
                 cell_color = 'cell_types', cell_color_code = mycolorcode,
                 group_by = 'layer_ID', cow_n_col = 2, group_by_subset = c(seq(260, -290, -100)))

.. image:: ../inst/images/MerFISH_hypoth/210927_results/16-spatPlot2D.png
   :width: 50.0%

and in three

.. container:: cell

   .. code:: r

      spatPlot3D(testobj,
                 cell_color = 'cell_types', axis_scale = 'real',
                 sdimx = 'sdimx', sdimy = 'sdimy', sdimz = 'sdimz',
                 show_grid = F, cell_color_code = mycolorcode)

.. image:: ../inst/images/MerFISH_hypoth/210927_results/15-spatplot3D.png
   :width: 50.0%

Subset by cell type in two dimensions…

.. container:: cell

   .. code:: r

      spatPlot2D(gobject = testobj, point_size = 1.0, 
                 cell_color = 'cell_types', cell_color_code = mycolorcode,
                 select_cell_groups = c('Microglia', 'Ependymal', 'Endothelial'), show_other_cells = F,
                 group_by = 'layer_ID', cow_n_col = 2, group_by_subset = c(seq(260, -290, -100)))

.. image:: ../inst/images/MerFISH_hypoth/210927_results/24-spatPlot2D.png
   :width: 50.0%

and in three

.. container:: cell

   .. code:: r

      spatPlot3D(testobj,
                 cell_color = 'cell_types', axis_scale = 'real',
                 sdimx = 'sdimx', sdimy = 'sdimy', sdimz = 'sdimz',
                 show_grid = F, cell_color_code = mycolorcode,
                 select_cell_groups = c('Microglia', 'Ependymal', 'Endothelial'), show_other_cells = F)

|image1| ## Visualize Cell Networks

.. container:: cell

   .. code:: r

      ### Spatial Networks
      # since this is a #D datase the delaunayn_geometry method must be used to create spatial networks
      plotStatDelaunayNetwork(gobject = testobj, method = 'delaunayn_geometry', maximum_distance = 400, save_plot = F)
      testobj = createSpatialNetwork(gobject = testobj, delaunay_method = 'delaunayn_geometry', minimum_k = 2, maximum_distance_delaunay = 400)

      ## create spatial networks based on k and/or distance from centroid
      testobj <- createSpatialNetwork(gobject = testobj, method = 'kNN', k = 5, name = 'spatial_network')
      testobj <- createSpatialNetwork(gobject = testobj, method = 'kNN', k = 10, name = 'large_network')
      testobj <- createSpatialNetwork(gobject = testobj, method = 'kNN', k = 100,
                                         maximum_distance_knn = 200, minimum_k = 2, name = 'distance_network')

      ## visualize different spatial networks in one layer of the dataset
      # I selected layer 260, and am only including high expressing cells
      cell_metadata = pDataDT(testobj)
      highexp_ids = cell_metadata[layer_ID==260][total_expr>=100]$cell_ID
      subtestobj = subsetGiotto(testobj, cell_ids = highexp_ids)

      spatPlot(gobject = subtestobj, show_network = T,
               network_color = 'blue', spatial_network_name = 'Delaunay_network',
               point_size = 1.5, cell_color = 'cell_types')

.. image:: ../inst/images/MerFISH_hypoth/211001_results/15-spatPlot2D.png
   :width: 50.0%

.. container:: cell

   .. code:: r

      spatPlot(gobject = subtestobj, show_network = T,
               network_color = 'blue', spatial_network_name = 'spatial_network',
               point_size = 2.5, cell_color = 'cell_types')

.. image:: ../inst/images/MerFISH_hypoth/211001_results/16-spatPlot2D.png
   :width: 50.0%

.. container:: cell

   .. code:: r

      spatPlot(gobject = subtestobj, show_network = T,
               network_color = 'blue', spatial_network_name = 'large_network',
               point_size = 2.5, cell_color = 'cell_types')

.. image:: ../inst/images/MerFISH_hypoth/211001_results/17-spatPlot2D.png
   :width: 50.0%

.. container:: cell

   .. code:: r

      spatPlot(gobject = subtestobj, show_network = T,
               network_color = 'blue', spatial_network_name = 'distance_network',
               point_size = 2.5, cell_color = 'cell_types')

.. image:: ../inst/images/MerFISH_hypoth/211001_results/18-spatPlot2D.png
   :width: 50.0%

.. |image1| image:: ../inst/images/MerFISH_hypoth/210927_results/23-spatplot3D.png
   :width: 50.0%
