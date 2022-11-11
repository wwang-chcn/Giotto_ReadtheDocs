====================================
Stereo-Seq MOSTA E12.5_E1S3 Analysis
====================================

:Date: 2022-11-11

Dataset explanation
===================

Stereo-seq is a sequencing-based spatial transcriptomics technology that
was used by Chen et al. in 2022
(https://doi.org/10.1016/j.cell.2022.04.003) to generate the Mouse
Organogenesis Spatiotemporal Transcriptomic Atlas (MOSTA). This tutorial
demonstrates how to interactively filter and analyze the third sagittal
section of a mouse embryo at embryonic day 12.5 (“E12.5_E1S3”) from
MOSTA.

Pre-processing
==============

The necessary input files for sample E12.5_E1S3 are publicly available
and were downloaded from the following original sources:

1. FASTQ files (https://db.cngb.org/search/sample/?q=CNP0001543)
2. barcodeToPos.h5 file
   (https://db.cngb.org/stomics/mosta/download.html)

An adapted version of the STOMICS Analysis Workflow (SAW) pipeline
(https://github.com/BGIResearch/SAW) was run on these input files using
the Boston University Shared Computed Clustering (SCC). The output of
the SAW pipeline is an \*.h5ad file at a specific aggregated square bin
size. In this tutorial, a sample with an aggregated bin size of 200 is
used. The cell, feat, expression, and spatial location matrix files from
the E12.5_E1S3.h5ad file were extracted and used to create a Giotto
object to begin this tutorial.

Start Giotto
============

.. container:: cell

   .. code:: r

      library(Giotto)

      # Ensure Giotto Suite is installed.
      if(!"Giotto" %in% installed.packages()) {
        devtools::install_github("drieslab/Giotto@Suite")
      }

      # Ensure GiottoData, a small helper module for tutorials, is installed.
      if(!"GiottoData" %in% installed.packages()) {
        devtools::install_github("drieslab/GiottoData")
      }

      # Ensure the Python environment for Giotto has been installed.
      genv_exists = checkGiottoEnvironment()
      if(!genv_exists){
        # The following command need only be run once to install the Giotto environment.
        installGiottoEnvironment()
      }

1. Create a Giotto object
=========================

.. container:: cell

   .. code:: r
      # Download exp matrix
      expression_file = 'https://zenodo.org/record/7312096/files/E12.5_E1S3_bin200_exp.rds?download=1'
      download.file(expression_file, 'E12.5_E1S3_bin200.rds')
      exp = readRDS("E12.5_E1S3_bin200.rds")

      # Download spatial_locs matrix
      spat_locs_file = 'https://zenodo.org/record/7312096/files/E12.5_E1S3_bin200_spatial_locs.csv?download=1'
      download.file(spat_locs_file, 'E12.5_E1S3_bin200.csv')
      spat_locs <- data.table::fread('E12.5_E1S3_bin200.csv')
      spat_locs$cell_ID <- as.character(spat_locs$cell_ID) # int64 to char

      # Create Giotto object
      stereo_go <- createGiottoObject(expression = exp, spatial_locs = spat_locs)

2. Process Giotto object
========================

.. container:: cell

   .. code:: r

      # filter number of genes
      # important to discard bins (aggregated barcodes) outside of embryo
      stereo_go <- stereo_go %>% filterGiotto(expression_threshold = 1,
                                               feat_det_in_min_cells = 5,
                                               min_det_feats_per_cell = 750)
      #normalize
      stereo_go <- stereo_go %>% normalizeGiotto(scalefactor = 5000, verbose = T) 

      # add statistics
      stereo_go <- stereo_go %>% addStatistics()

      # make plot
      spatPlot2D(gobject = stereo_go, cell_color = "nr_feats", color_as_factor = F, point_size = 1.5, show_plot = T, save_plot = F)

.. image:: /images/images_pkgdown/StereoSeq_E12.5_E1S3_MOSTA/1.png
   :width: 50.0%
   
3. Dimension reduction
======================

-  identify highly variable features (HVF)

.. container:: cell

   .. code:: r

      stereo_go <- stereo_go %>% calculateHVF(zscore_threshold = 1, show_plot = F)

-  perform PCA
-  identify number of significant principal components (PCs)

.. container:: cell

   .. code:: r

      stereo_go <- stereo_go %>% runPCA(expression_values = 'scaled', feats_to_use = 'hvf')
      screePlot(stereo_go, ncp = 30)
      plotPCA(stereo_go)

.. image:: /images/images_pkgdown/StereoSeq_E12.5_E1S3_MOSTA/2.png
   :width: 50.0%

.. image:: /images/images_pkgdown/StereoSeq_E12.5_E1S3_MOSTA/3.png
   :width: 50.0%

-  run UMAP and/or TSNE on PCs (or directly on matrix)

.. container:: cell

   .. code:: r

      stereo_go <- stereo_go %>% runUMAP(dimensions_to_use = 1:30, n_threads = 4)
      # plot UMAP, coloring cells/points based on nr_feats
      plotUMAP(gobject = stereo_go,
               cell_color = 'nr_feats', color_as_factor = F, point_size = 2)

.. image:: /images/images_pkgdown/StereoSeq_E12.5_E1S3_MOSTA/4.png
   :width: 50.0%

.. container:: cell

   .. code:: r

      stereo_go = stereo_go %>% runtSNE(dimensions_to_use = 1:30)
      plotTSNE(gobject = stereo_go)

.. image:: /images/images_pkgdown/StereoSeq_E12.5_E1S3_MOSTA/5.png
   :width: 50.0%

4. Clustering
=============

-  create a shared (default) nearest network in PCA space (or directly
   on matrix)
-  cluster on nearest network with Leiden or Louvan (kmeans and hclust
   are alternatives)

.. container:: cell

   .. code:: r

      # Leiden clustering
      # sNN network (default)
      stereo_go <- stereo_go %>% createNearestNetwork(dimensions_to_use = 1:30, k = 12)

      stereo_go <- stereo_go %>% doLeidenCluster(resolution = 1, n_iterations = 1000)
      plotUMAP(gobject = stereo_go, cell_color = 'leiden_clus', point_size = 2.5,
               show_NN_network = F, edge_alpha = 0.05)

      # merge small groups based on similarity
      leiden_similarities = stereo_go %>% getClusterSimilarity(expression_values = 'scaled',
                                                                cluster_column = 'leiden_clus')

      stereo_go = stereo_go %>% mergeClusters(expression_values = 'scaled',
                                               cluster_column = 'leiden_clus',
                                               new_cluster_name = 'leiden_clus_m',
                                               max_group_size = 100,
                                               force_min_group_size = 25,
                                               max_sim_clusters = 10,
                                               min_cor_score = 0.7)

      plotUMAP(gobject = stereo_go, cell_color = 'leiden_clus_m', point_size = 2.5,
               show_NN_network = F, edge_alpha = 0.05)

.. image:: /images/images_pkgdown/StereoSeq_E12.5_E1S3_MOSTA/6.png
   :width: 50.0%

.. image:: /images/images_pkgdown/StereoSeq_E12.5_E1S3_MOSTA/7.png
   :width: 50.0%

5. Co-Visualization
===================

-co-visualize expression and spatial data

.. container:: cell

   .. code:: r

      spatDimPlot2D(gobject = stereo_go, cell_color = 'leiden_clus_m',
                    dim_point_size = 2, spat_point_size = 2,
                    show_plot = T, return_plot = F)

.. image:: /images/images_pkgdown/StereoSeq_E12.5_E1S3_MOSTA/8.png
   :width: 50.0%

6. Spatial Genes
================

-  find genes with spatially coherent expression patterns

.. container:: cell

   .. code:: r

      # create knn
      stereo_go <- stereo_go %>% createSpatialNetwork(method = "kNN", k = 8)

      # select genes of interest or specify list of genes
      gene_list = stereo_go@feat_metadata[["cell"]][["rna"]][["feat_ID"]][900:950]

      # use binSpect method to find spatial genes
      spat_genes <- stereo_go %>% binSpect(expression_values = "scaled", 
                                           subset_feats = gene_list,
                                           spatial_network_name = "kNN_network")

7. Subsetting/Filtering
=======================

-  perform these steps to select an ROI using interactive polygon tool
-  to draw a polygon on the interactive plot, click the mouse to start a
   line segment. Click again to draw the endpoint of the segment, which
   becomes the startpoint of the following segment. Click on the
   original point to close the polygon.

.. container:: cell

   .. code:: r

      my_spatPlot <- spatPlot2D(gobject = stereo_go,
                                cell_color = 'leiden_clus',
                                color_as_factor = T,
                                show_plot = FALSE,
                                point_size = 1.5,
                                save_plot = FALSE)

      # create a polygon mask around a ROI, coordinates will be saved after clicking 'Done'
      library(shiny)
      library(miniUI)
      my_polygon_coordinates <- plotInteractivePolygons(my_spatPlot, height = 500)

      # create new giotto object from polygon coordinates using {terra}
      lasso_polygons <- createGiottoPolygonsFromDfr(my_polygon_coordinates, 
                                                    name = "cell", 
                                                    calc_centroids = FALSE)
      my_points <- terra::vect(x = as.matrix(cbind(stereo_go@spatial_locs[["cell"]][["raw"]][["sdimx"]],
                                                   stereo_go@spatial_locs[["cell"]][["raw"]][["sdimy"]])), 
                               type = 'points', 
                               atts = as.matrix(stereo_go@spatial_locs[["cell"]][["raw"]][["cell_ID"]]))
      my_poly <- lasso_polygons@spatVector
      my_intersect <- terra::intersect(my_points, my_poly) %>% as.data.frame()

      # create new subsetted roi
      stereo_go_subset <- stereo_go %>% subsetGiotto(cell_ids = my_intersect$value)

      # visualize filtered ROI
      # The plot should look different from the plot below and reflect the polygon(s) you constructed in my_polygon_coordinates
      spatPlot2D(gobject = stereo_go_subset,
                                cell_color = 'leiden_clus',
                                color_as_factor = T,
                                show_plot = FALSE,
                                point_size = 1.5,
                                save_plot = FALSE)

.. image:: /images/images_pkgdown/StereoSeq_E12.5_E1S3_MOSTA/9.png
   :width: 50.0%
