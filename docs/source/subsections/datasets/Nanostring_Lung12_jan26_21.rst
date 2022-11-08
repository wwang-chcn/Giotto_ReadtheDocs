=======================================
Nanostring CosMx Subcellular Lung Cancer
=======================================

:Date: 2022-09-16

**Note:** *Figures were produced Jan 26, 2021. The functions used here
can be expected to work in the same ways, but differences in package
versions since then may produce slightly different results, particularly
in PCA, UMAP, clustering, and downstream functions that use hardcoded
annotations based on those different results.*

This example uses subcellular data from Nanostring’s CosMx Spatial
Molecular Imager. This publicly available dataset, (which can be found
here:
https://www.nanostring.com/products/cosmx-spatial-molecular-imager/ffpe-dataset/)
is from a FFPE sample of non-small-cell lung cancer. This example works
with Lung12.

.. container:: cell

   .. code:: r
      
      # Ensure Giotto Suite is installed.
      if(!"Giotto" %in% installed.packages()) {
        devtools::install_github("drieslab/Giotto@Suite")
      }

      # Ensure GiottoData, a small, helper module for tutorials, is installed.
      if(!"GiottoData" %in% installed.packages()) {
        devtools::install_github("drieslab/GiottoData")
      }

      # Ensure the Python environment for Giotto has been installed.
      genv_exists = checkGiottoEnvironment()
      if(!genv_exists){
        # The following command need only be run once to install the Giotto environment.
        installGiottoEnvironment()
      }

1. Start Giotto
===============

.. container:: cell

   .. code:: r

      # Load Giotto, data.table is also necessary for this example
      library(Giotto)
      library(GiottoData)
      library(data.table)
      # add color palettes if you want!
      library(rcartocolor)
      pal <- carto_pal(n=10, "Pastel")

      # set working directory
      results_folder = '/path/to/directory'

      # Optional: Specify a path to a Python executable within a conda or miniconda 
      # environment. If set to NULL (default), the Python executable within the previously
      # installed Giotto environment will be used.
      my_python_path = NULL # alternatively, "/local/python/path/python" if desired.


      ## create instructions
      # by directly saving plots, but not rendering them you will save a lot of time
      instrs = createGiottoInstructions(save_dir = results_folder,
                                        save_plot = TRUE,
                                        show_plot = FALSE,
                                        return_plot = FALSE
                                        python_path = my_python_path)

CosMx Project loading function
==============================

.. raw:: html

   <details>

.. raw:: html

   <summary>

Convenience function that performs steps 2-4

.. raw:: html

   </summary>

.. container:: cell

   .. code:: r

      ## provide path to nanostring folder
      data_path = '/path/to/data/Lung12-Flat_files_and_images/'

      ## create giotto cosmx object
      fov_join = createGiottoCosMxObject(cosmx_dir = data_path,
                                         data_to_use = 'subcellular',
                                         FOVs = c(2,3,4),
                                         instructions = instrs)

.. raw:: html

   </details>

2. Load in Data
===============

.. container:: cell

   .. code:: r

      ## provide path to nanostring folder
      data_path = '/path/to/data/Lung12-Flat_files_and_images/'

      # load transcript coordinates
      tx_coord_all = fread(paste0(data_path, 'Lung12_tx_file.csv'))

      #  load field of vision (fov) positions
      fov_offset_file = fread(paste0(data_path, 'Lung12_fov_positions_file.csv'))

Choose field of view for analysis
---------------------------------

.. container:: cell

   .. code:: r

      gobjects_list = list()

      # select which FOV's you would like to work with
      # the dataset includes 28, which is too much for most computers to handle at once. 
      #For this example I am using 02, 03, and 04
      id_set = c('02', '03', '04')

3. Create a Giotto Object for each FOV
======================================

.. container:: cell

   .. code:: r

      for(fov_i in 1:length(id_set)) {
        
        fov_id = id_set[fov_i]


        # 1. original composite image as png
        original_composite_image = paste0(data_path, 'CellComposite/CellComposite_F0', fov_id,'.jpg')
        
        # 2. input cell segmentation as mask file
        segmentation_mask = paste0(data_path, 'CellLabels/CellLabels_F0', fov_id, '.tif')
        
        # 3. input features coordinates + offset
        tx_coord = tx_coord_all[fov == as.numeric(fov_id)]
        tx_coord = tx_coord[,.(x_local_px, y_local_px, z, target)]
        colnames(tx_coord) = c('x', 'y', 'z', 'gene_id')
        tx_coord = tx_coord[,.(x, y, gene_id)]
        
        
        fovsubset = createGiottoObjectSubcellular(gpoints = list('rna' = tx_coord),
                                                  gpolygons = list('cell' = segmentation_mask),
                                                  polygon_mask_list_params = list(mask_method = 'guess',
                                                                                  flip_vertical = TRUE,
                                                                                  flip_horizontal = FALSE,
                                                                                  shift_horizontal_step = FALSE),
                                                  instructions = instrs)
        
        
        # centroids are now used to provide the spatial locations (centroid of each cell)
        fovsubset = addSpatialCentroidLocations(fovsubset,
                                                poly_info = 'cell')
        
        # create and add Giotto images
        composite = createGiottoLargeImage(raster_object = original_composite_image,
                                           negative_y = FALSE,
                                           name = 'composite')
        
        fovsubset = addGiottoImage(gobject = fovsubset,
                                   largeImages = list(composite))
        
        
        fovsubset = convertGiottoLargeImageToMG(giottoLargeImage = composite,
                                                #mg_name = 'composite',
                                                gobject = fovsubset,
                                                return_gobject = TRUE)
        
        gobjects_list[[fov_i]] = fovsubset
        
        
      }

4. Join Giotto Objects
======================

.. container:: cell

   .. code:: r

      new_names = paste0("fov0", id_set)

      id_match = match(as.numeric(id_set), fov_offset_file$fov)
      x_shifts = fov_offset_file[id_match]$x_global_px
      y_shifts = fov_offset_file[id_match]$y_global_px

      # Create Giotto object that includes all selected FOVs
      fov_join = joinGiottoObjects(gobject_list = gobjects_list,
                                   gobject_names = new_names,
                                   join_method = 'shift',
                                   x_shift = x_shifts,
                                   y_shift = y_shifts)

5. Visualize Cells and Genes of Interest
========================================

.. container:: cell

   .. code:: r

      showGiottoImageNames(fov_join)

      # Set up vector of image names
      id_set = c('02', '03', '04')
      new_names = paste0("fov0", id_set)
      image_names = paste0(new_names, '-image')

      spatInSituPlotPoints(fov_join,
                           show_image = TRUE,
                           image_name = image_names,
                           feats = list('rna' = c("MMP2", "VEGFA", "IGF1R",
                                                  'CDH2', 'MKI67', 'EPCAM')),
                           spat_unit = 'cell',
                           point_size = 0.15,
                           show_polygon = TRUE,
                           use_overlap = FALSE,
                           polygon_feat_type = 'cell',
                           polygon_color = 'white',
                           polygon_line_size = 0.02,
                           coord_fix_ratio = TRUE,
                           background_color = NA)

.. image:: /images/images_pkgdown/nanostring_CosMx_Lung12/Emma/results-1272022/Rplot1.png
   :width: 175.0%

Visualize Cells
---------------

.. container:: cell

   .. code:: r

      spatPlot2D(gobject = fov_join,
                 image_name = image_names,
                 show_image = TRUE,
                 point_size = 0.2,
                 coord_fix_ratio = 1)

.. image:: /images/images_pkgdown/nanostring_CosMx_Lung12/Emma/results-1272022/Rplot2.png
   :width: 150.0%

6. Extract Data from your Giotto Object
=======================================

.. container:: cell

   .. code:: r

      fov_join = calculateOverlapRaster(fov_join)

      fov_join = overlapToMatrix(fov_join)

      showGiottoExpression(fov_join)

      # combine cell data
      morphometa = combineCellData(fov_join,
                                   feat_type = 'rna')

      # combine feature data
      featmeta = combineFeatureData(fov_join,
                                    feat_type = c('rna'))

      # combine overlapping feature data
      featoverlapmeta = combineFeatureOverlapData(fov_join,
                                                  feat_type = c('rna'))

7. Process Giotto Object
========================

.. container:: cell

   .. code:: r

      # filter
      fov_join <- filterGiotto(gobject = fov_join,
                               expression_threshold = 1,
                               feat_det_in_min_cells = 5,
                               min_det_feats_per_cell = 5)

      # normalize
      # standard method
      fov_join <- normalizeGiotto(gobject = fov_join,
                                  scalefactor = 5000,
                                  verbose = T)

      # new normalizaton method based on pearson correlations (Lause/Kobak et al. 2021)
      # this normalized matrix is given the name 'pearson' and will be used in the downstream steps
      fov_join <- normalizeGiotto(gobject = fov_join,
                                  scalefactor = 5000,
                                  verbose = T,
                                  norm_methods = 'pearson_resid',
                                  update_slot = 'pearson')
      # add statistics
      fov_join <- addStatistics(gobject = fov_join)

      # View cellular data
      pDataDT(fov_join)
      # View rna data
      fDataDT(fov_join)

8. View Transcript Number Distribution
======================================

.. container:: cell

   .. code:: r

      cellmeta = pDataDT(fov_join, feat_type = 'rna')
      hist(cellmeta$nr_feats, 100)

.. image:: /images/images_pkgdown/nanostring_CosMx_Lung12/Emma/results-1262022/Rplothist.png
   :width: 50.0%

.. container:: cell

   .. code:: r

      spatPlot2D(gobject = fov_join,
                 cell_color = 'total_expr',
                 color_as_factor = F,
                 show_image = TRUE,
                 image_name = image_names,
                 point_size = 1.5,
                 point_alpha = 0.75,
                 coord_fix_ratio = T)

.. image:: /images/images_pkgdown/nanostring_CosMx_Lung12/Emma/results-1272022/Rplot3.png
   :width: 150.0%

.. container:: cell

   .. code:: r

      spatInSituPlotPoints(fov_join,
                           show_polygon = TRUE,
                           polygon_color = 'white',
                           polygon_line_size = 0.1,
                           polygon_fill = 'total_expr',
                           polygon_fill_as_factor = F,
                           coord_fix_ratio = T)

.. image:: /images/images_pkgdown/nanostring_CosMx_Lung12/Emma/results-1272022/Rplot5.png
   :width: 150.0%

9. Dimension Reduction
======================

Calculate Highly Variable Genes
-------------------------------

.. container:: cell

   .. code:: r

      # typical way of calculating HVG
      fov_join <- calculateHVF(gobject = fov_join,
                               HVFname = 'hvg_orig')

.. image:: /images/images_pkgdown/nanostring_CosMx_Lung12/Emma/results-1252022/4-HVFplot.png
   :width: 50.0%

.. container:: cell

   .. code:: r

      # new method based on variance of pearson residuals for each gene
      fov_join <- calculateHVF(gobject = fov_join,
                               method = 'var_p_resid',
                               expression_values = 'pearson',
                               show_plot = T)

.. image:: /images/images_pkgdown/nanostring_CosMx_Lung12/Emma/results-1252022/5-HVFplot.png
   :width: 50.0%

View Highly Variable Features
-----------------------------

.. container:: cell

   .. code:: r

      gene_meta = fDataDT(fov_join)
      gene_meta[hvf == 'yes']

Run PCA
-------

.. container:: cell

   .. code:: r

      fov_join <- runPCA(gobject = fov_join,
                         expression_values = 'pearson',
                         scale_unit = F,
                         center = F)
      screePlot(fov_join, ncp = 20)

.. image:: /images/images_pkgdown/nanostring_CosMx_Lung12/Emma/results-1252022/6-screePlot.png
   :width: 50.0%

Plot PCA
--------

.. container:: cell

   .. code:: r

      plotPCA(fov_join,
              dim1_to_use = 1,
              dim2_to_use = 2)

.. image:: /images/images_pkgdown/nanostring_CosMx_Lung12/Emma/results-1252022/7-PCA.png
   :width: 50.0%

Run UMAP
--------

.. container:: cell

   .. code:: r

      fov_join <- runUMAP(fov_join,
                          dimensions_to_use = 1:10,
                          n_threads = 4)
      plotUMAP(gobject = fov_join)

.. image:: /images/images_pkgdown/nanostring_CosMx_Lung12/Emma/results-1252022/8-UMAP.png
   :width: 50.0%

10. Cluster
===========

.. container:: cell

   .. code:: r

      fov_join <- createNearestNetwork(gobject = fov_join,
                                       dimensions_to_use = 1:10,
                                       k = 10)
      fov_join <- doLeidenCluster(gobject = fov_join,
                                  resolution = 0.05,
                                  n_iterations = 1000)

      # visualize UMAP cluster results
      plotUMAP(gobject = fov_join,
               cell_color = 'leiden_clus',
               show_NN_network = T,
               point_size = 2.5)

.. image:: /images/images_pkgdown/nanostring_CosMx_Lung12/Emma/results-1252022/9-UMAP.png
   :width: 50.0%

.. container:: cell

   .. code:: r

      # visualize UMAP and spatial results
      spatDimPlot2D(gobject = fov_join,
                    show_image = T,
                    image_name = image_names,
                    cell_color = 'leiden_clus',
                    spat_point_size = 2)

.. image:: /images/images_pkgdown/nanostring_CosMx_Lung12/Emma/results-1252022/10-spatDimPlot2D.png
   :width: 50.0%

.. container:: cell

   .. code:: r

      spatInSituPlotPoints(fov_join,
                           feats = list('rna' = c("MMP2", "VEGFA", "IGF1R",
                                                  'CDH2', 'MKI67', 'EPCAM')),
                           point_size = 0.15,
                           show_polygon = TRUE,
                           polygon_color = 'white',
                           polygon_line_size = 0.01,
                           polygon_fill = 'leiden_clus',
                           polygon_fill_as_factor = T,
                           coord_fix_ratio = TRUE)

.. image:: /images/images_pkgdown/nanostring_CosMx_Lung12/Emma/results-1272022/spatinsituclustered.png
   :width: 150.0%

11. Small Subset Visiualization
===============================

.. container:: cell

   .. code:: r

      locs <-fov_join@spatial_locs$cell$raw

      #subset a Giotto object based on spatial locations
      smallfov <- subsetGiottoLocs(fov_join,
                               x_max = 800,
                               x_min = 507,
                               y_max = -158800,
                               y_min = -159600)

      #extract all genes observed in new object
      smallfeats <- smallfov@feat_metadata$cell$rna$feat_ID

      #plot all genes
      spatInSituPlotPoints(smallfov,
                           feats = list(smallfeats),
                           point_size = 0.15,
                           polygon_line_size = .1,
                           show_polygon = T,
                           polygon_color = 'white',
                           show_image = T,
                           image_name = image_names,
                           coord_fix_ratio = TRUE,
                           show_legend = FALSE)

.. image:: /images/images_pkgdown/nanostring_CosMx_Lung12/Emma/results-1252022/12-spatInSituPlotPoints.png
   :width: 75.0%

12. Spatial Expression Patterns
===============================

.. container:: cell

   .. code:: r

      # create spatial network based on physical distance of cell centroids
      fov_join = createSpatialNetwork(gobject = fov_join,
                                      minimum_k = 2,
                                      maximum_distance_delaunay = 50)

      # select features
      feats = fov_join@feat_ID$rna
      # perform Binary Spatial Extraction of genes - NOTE: Depending on your system this could take time
      km_spatialgenes = binSpect(fov_join,
                                 subset_feats = feats)

      # visualize spatial expression of selected genes obtained from binSpect
      spatFeatPlot2D(fov_join,
                     expression_values = 'scaled',
                     feats = km_spatialgenes$feats[1:10],
                     cell_color_gradient = c('blue', 'white', 'red'),
                     point_shape = 'border',
                     point_border_stroke = 0.01,
                     show_network = F,
                     network_color = 'lightgrey',
                     point_size = 1.2,
                     cow_n_col = 2)

.. image:: /images/images_pkgdown/nanostring_CosMx_Lung12/Emma/results-1252022/13-spatFeatPlot2D.png
   :width: 50.0%

13. Identify Clusters
=====================

Violin plot
-----------

.. container:: cell

   .. code:: r

      markers = findMarkers_one_vs_all(gobject = fov_join,
                                       method = 'gini',
                                       expression_values = 'normalized',
                                       cluster_column = 'leiden_clus',
                                       min_feats = 1,
                                       rank_score = 2)
      markers[, head(.SD, 5), by = 'cluster']

      # violinplot
      topgini_genes = unique(markers[, head(.SD, 2), by = 'cluster']$feats)
      violinPlot(fov_join,
                 feats = topgini_genes,
                 cluster_column = 'leiden_clus',
                 strip_position = 'right')

.. image:: /images/images_pkgdown/nanostring_CosMx_Lung12/Emma/results-1252022/14-violinPlot.png
   :width: 50.0%

Heatmap
-------

.. container:: cell

   .. code:: r

      cluster_order = c(1, 2, 3, 4, 5, 6, 7, 8, 9)
      plotMetaDataHeatmap(fov_join,
                          expression_values = 'scaled',
                          metadata_cols = c('leiden_clus'),
                          selected_feats = topgini_genes,
                          custom_cluster_order = cluster_order)

.. image:: /images/images_pkgdown/nanostring_CosMx_Lung12/Emma/results-1262022/6-plotMetaDataHeatmap.png
   :width: 50.0%

Annotate Giotto Object
----------------------

.. container:: cell

   .. code:: r

      ## add cell types ###
      clusters_cell_types_lung = c('Normal Epithelial', 'Cancer', 'Stromal', 'Plasma Cells',
                                   'Cytotoxic T Cells', 'Cancer Stem Cells',
                                   'Macrophage', 'Memory B Cell', 'Memory B Cell')

      names(clusters_cell_types_lung) = as.character(sort(cluster_order))
      fov_join = annotateGiotto(gobject = fov_join,
                                annotation_vector = clusters_cell_types_lung,
                                cluster_column = 'leiden_clus')

      plotUMAP(fov_join,
               cell_color = 'cell_types',
               point_size = 1.5)

.. image:: /images/images_pkgdown/nanostring_CosMx_Lung12/Emma/results-1252022/15-UMAP.png
   :width: 50.0%

Visualize
---------

.. container:: cell

   .. code:: r

      spatDimPlot2D(gobject = fov_join,
                    show_image = T,
                    image_name = image_names,
                    cell_color = 'cell_types',
                    spat_point_size = 2)

.. image:: /images/images_pkgdown/nanostring_CosMx_Lung12/Emma/results-1252022/16-spatDimPlot2D.png
   :width: 50.0%

.. container:: cell

   .. code:: r

      spatInSituPlotPoints(fov_join,
                           show_polygon = TRUE,
                           polygon_feat_type = 'cell',
                           polygon_color = 'white',
                           polygon_line_size = 0.1,
                           polygon_fill = 'cell_types',
                           polygon_fill_as_factor = TRUE,
                           coord_fix_ratio = TRUE)

.. image:: /images/images_pkgdown/nanostring_CosMx_Lung12/Emma/results-1252022/17-spatInSituPlotPoints.png
   :width: 50.0%

14. Interaction Changed Features
=============================

.. container:: cell

   .. code:: r

      future::plan('multisession', workers = 4) # NOTE: Depending on your system this could take time

      goi = findInteractionChangedFeats(gobject = fov_join,
                                        cluster_column = 'leiden_clus')

      # Identify top ten interaction changed features (in this case, genes)
      goi$ICFscores[type_int == 'hetero']$feats[1:10]

      # Visualize ICF expression
      spatInSituPlotPoints(fov_join,
                           feats = list(goi$ICFscores[type_int == 'hetero']$feats[1:10]),
                           point_size = 0.15,
                           show_polygon = TRUE,
                           polygon_feat_type = 'cell',
                           polygon_color = 'black',
                           polygon_line_size = 0.1,
                           polygon_fill = 'cell_types',
                           polygon_fill_as_factor = TRUE,
                           polygon_fill_code = pal,
                           coord_fix_ratio = TRUE)

.. image:: /images/images_pkgdown/nanostring_CosMx_Lung12/Emma/results-1252022/18-spatInSituPlotPoints.png
   :width: 50.0%
