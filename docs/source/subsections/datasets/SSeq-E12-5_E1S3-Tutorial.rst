====================================
Stereo-Seq MOSTA E12.5_E1S3 analysis
====================================

:Date: 2022-11-15

Dataset explanation
===================

Stereo-seq is a sequencing-based spatial transcriptomics technology that
was developed and used by Chen et al. in 2022
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

The STOMICS Analysis Workflow (SAW) pipeline
(https://github.com/BGIResearch/SAW) was used to process these files.
The output of the SAW pipeline is an \*.h5ad file at a specific bin
size. One bin of size n represents an n x n square of aggregated spatial
barcodes. In this tutorial, a sample with a bin size of 200 was used.
The cell, feat, expression, and spatial location matrix files from the
E12.5_E1S3.h5ad file were extracted and are used to create a Giotto
object to begin this tutorial.

Start Giotto
============

.. container:: cell

   .. code:: r

      # Ensure Giotto Suite is installed
      if(!"Giotto" %in% installed.packages()) {
        devtools::install_github("drieslab/Giotto@Suite")
      }

      library(Giotto)
      # Ensure the Python environment for Giotto has been installed
      genv_exists = checkGiottoEnvironment()
      if(!genv_exists){
        # The following command need only be run once to install the Giotto environment.
        installGiottoEnvironment()
      }

1. Create a Giotto object
=========================

.. container:: cell

   .. code:: r

      # download E12.5_E1S3_bin200.h5ad output from SAW pipeline (509.4 MB)
      # alternatively, specify path to *.h5ad output of SAW pipeline 
      anndata_download = "https://zenodo.org/record/7323947/files/E12.5_E1S3_bin200.h5ad?download=1"
      anndata_file = "E12.5_E1S3_bin_200.h5ad"
      download.file(anndata_download, anndata_file)
         
      # convert anndata file to giotto object
      stereo_go <- Giotto::anndataToGiotto(anndata_file)

2. Process Giotto object
========================

.. container:: cell

   .. code:: r

      # filter number of genes
      # important to discard bins (aggregated barcodes) outside of embryo
      stereo_go <- stereo_go %>% filterGiotto(expression_threshold = 1,
                                               feat_det_in_min_cells = 5,
                                               min_det_feats_per_cell = 750)
      # normalize
      stereo_go <- stereo_go %>% normalizeGiotto(scalefactor = 5000, verbose = T) 

      # add statistics
      stereo_go <- stereo_go %>% addStatistics()

      # make plot
      # each dot here represents a 200x200 aggregation of spatial barcodes (bin size 200)
      spatPlot2D(gobject = stereo_go, cell_color = "nr_feats", color_as_factor = F, point_size = 1.5, show_plot = T, save_plot = F)

.. image:: /images/images_pkgdown/StereoSeq_E12.5_E1S3_MOSTA/1.png

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
.. image:: /images/images_pkgdown/StereoSeq_E12.5_E1S3_MOSTA/3.png

-  run UMAP and TSNE on PCs (or directly on matrix)

.. container:: cell

   .. code:: r

      stereo_go <- stereo_go %>% runUMAP(dimensions_to_use = 1:30, n_threads = 4)

      # plot UMAP, coloring cells/points based on nr_feats
      plotUMAP(gobject = stereo_go,
               cell_color = 'nr_feats', color_as_factor = F, point_size = 2)

.. image:: /images/images_pkgdown/StereoSeq_E12.5_E1S3_MOSTA/4.png

.. container:: cell

   .. code:: r

      stereo_go = stereo_go %>% runtSNE(dimensions_to_use = 1:30)
      plotTSNE(gobject = stereo_go)

.. image:: /images/images_pkgdown/StereoSeq_E12.5_E1S3_MOSTA/5.png

4. Clustering
=============

-  create a shared (default) nearest network in PCA space (or directly
   on matrix)
-  cluster on nearest network with Leiden or Louvan (kmeans and hclust
   are alternatives)

.. container:: cell

   .. code:: r

      # sNN network (default)
      stereo_go <- stereo_go %>% createNearestNetwork(dimensions_to_use = 1:30, k = 12)

      # leiden clustering
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

.. image:: /images/images_pkgdown/StereoSeq_E12.5_E1S3_MOSTA/7.png

5. Co-visualization
===================

-  co-visualize expression UMAP and spatial data clusters

.. container:: cell

   .. code:: r

      spatDimPlot2D(gobject = stereo_go, cell_color = 'leiden_clus_m',
                    dim_point_size = 1.5, spat_point_size = 1.5,
                    show_plot = T, return_plot = F)

.. image:: /images/images_pkgdown/StereoSeq_E12.5_E1S3_MOSTA/8.png

6. Spatial Genes
================

-  find genes with spatially coherent expression patterns

.. container:: cell

   .. code:: r

      # create knn
      stereo_go <- stereo_go %>% createSpatialNetwork(method = "kNN", k = 8)

      # select 100 random genes
      set.seed(144)
      featureMetadata = fDataDT(stereo_go) 
      gene_list = featureMetadata[sample(length(featureMetadata$feat_ID), 100), "feat_ID"]

      # use binSpect method to find spatial genes
      spat_genes <- stereo_go %>% binSpect(expression_values = "scaled", 
                                           subset_feats = gene_list$feat_ID,
                                           spatial_network_name = "kNN_network")

7. Subsetting/Filtering
=======================

-  perform these steps to select an ROI using an interactive polygon
   selection tool
-  to draw a polygon on the interactive plot, click the mouse to start a
   line segment. Click again to draw the endpoint of the segment, which
   becomes the startpoint of the following segment. Click “Done” to
   close the app and save the polygon coordinates.
-  See our tutorial on interactive selection/filtering in “Getting
   started” to learn more.

.. container:: cell

   .. code:: r

      my_spatPlot <- spatPlot2D(gobject = stereo_go,
                                cell_color = 'leiden_clus',
                                color_as_factor = T,
                                show_plot = FALSE,
                                point_size = 2,
                                save_plot = FALSE)

      # create a polygon mask around a ROI, coordinates will be saved after clicking 'Done'
      library(shiny)
      library(miniUI)
      my_polygon_coordinates <- plotInteractivePolygons(my_spatPlot, height = 500)

      # create new giotto object from polygon coordinates
      lasso_polygons <- createGiottoPolygonsFromDfr(my_polygon_coordinates, 
                                                    name = "cell", 
                                                    calc_centroids = FALSE)

      # store the polygons info within the giotto object
      stereo_go <- addGiottoPolygons(gobject = stereo_go,
                                     gpolygons = list(lasso_polygons))

      # find intersection between original giotto object and polygon subset 
      my_intersect <- getCellsFromPolygon(stereo_go)

      # create new giotto roi subset
      stereo_go_subset <- stereo_go %>% subsetGiotto(cell_ids = my_intersect$cell_ID)

      # visualize filtered ROI
      # Your plot below will reflect the polygon(s) you constructed above in my_polygon_coordinates
      spatPlot2D(gobject = stereo_go_subset, cell_color = 'leiden_clus',
                 color_as_factor = T, show_plot = FALSE, 
                 point_size = 2,save_plot = FALSE)

.. image:: /images/images_pkgdown/StereoSeq_E12.5_E1S3_MOSTA/9.png
   
.. container:: cell

   .. code:: r

      sessionInfo()

   .. container:: cell-output cell-output-stdout

      ::

         R version 4.2.1 (2022-06-23)
         Platform: x86_64-apple-darwin17.0 (64-bit)
         Running under: macOS Big Sur ... 10.16

         Matrix products: default
         BLAS:   /Library/Frameworks/R.framework/Versions/4.2/Resources/lib/libRblas.0.dylib
         LAPACK: /Library/Frameworks/R.framework/Versions/4.2/Resources/lib/libRlapack.dylib

         locale:
         [1] en_US.UTF-8/en_US.UTF-8/en_US.UTF-8/C/en_US.UTF-8/en_US.UTF-8

         attached base packages:
         [1] stats     graphics  grDevices utils     datasets  methods   base     

         loaded via a namespace (and not attached):
          [1] compiler_4.2.1  magrittr_2.0.3  fastmap_1.1.0   cli_3.3.0      
          [5] tools_4.2.1     htmltools_0.5.3 rstudioapi_0.13 yaml_2.3.5     
          [9] stringi_1.7.8   rmarkdown_2.14  knitr_1.39      stringr_1.4.0  
         [13] xfun_0.31       digest_0.6.29   jsonlite_1.8.0  rlang_1.0.4    
         [17] evaluate_0.15  
