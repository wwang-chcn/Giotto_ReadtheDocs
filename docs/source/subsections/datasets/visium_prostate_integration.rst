=========================
Integration between multiple spatial datasets and single cell sequencing data
=========================

:Date: 2022-09-16


***************************
Set-Up Giotto Environment
***************************
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
      library(GiottoData)
      
      # Ensure the Python environment for Giotto has been installed.
      library(Gitoto)
      genv_exists = checkGiottoEnvironment()
      if(!genv_exists){
        # The following command need only be run once to install the Giotto environment.
        installGiottoEnvironment()
      }
	  

      # Create Giotto Instructions
      instrs = createGiottoInstructions(save_dir = results_folder,
					  save_plot = TRUE,
					  show_plot = FALSE,
					  python_path = python_path)

Set A Working Directory 
========================
.. code-block::

	results_folder = '/path/to/directory/'

Set A Giotto Python Path
==========================

.. code-block::

    # Optional: Specify a path to a Python executable within a conda or miniconda 
    # environment. If set to NULL (default), the Python executable within the previously
    # installed Giotto environment will be used.
    my_python_path = NULL # alternatively, "/local/python/path/python" if desired.
	

*********************
Dataset Explanation 
*********************

`10X genomics <https://www.10xgenomics.com/spatial-transcriptomics>` recently launched a new platform to obtain spatial expression data using a Visium Spatial Gene Expression slide.

The Visium Cancer Prostate data to run this tutorial can be found `here <https://www.10xgenomics.com/welcome?closeUrl=%2Fresources%2Fdatasets&lastTouchOfferName=Human%20Prostate%20Cancer%2C%20Adenocarcinoma%20with%20Invasive%20Carcinoma%20%28FFPE%29&lastTouchOfferType=Dataset&redirectUrl=%2Fresources%2Fdatasets%2Fhuman-prostate-cancer-adenocarcinoma-with-invasive-carcinoma-ffpe-1-standard-1-3-0>`__. The Visium Normal Prostate data to run this tutorial can be found `here <https://www.10xgenomics.com/welcome?closeUrl=%2Fresources%2Fdatasets&lastTouchOfferName=Normal%20Human%20Prostate%20%28FFPE%29&lastTouchOfferType=Dataset&redirectUrl=%2Fresources%2Fdatasets%2Fnormal-human-prostate-ffpe-1-standard-1-3-0>`__.

.. note:: Visium Technology 
	:class: dropdown 
	
	.. image:: /images/other/general_figs/visium_technology.png
		:width: 500	
		:alt: Visium Technology


High resolution png from original tissue:

.. card-carousel:: 2

	.. card:: 

		.. image:: /images/other/visium_prostate_integration/Visium_FFPE_Human_Normal_Prostate_image.png

	.. card:: 

		.. image:: /images/other/visium_prostate_integration/Visium_FFPE_Human_Prostate_Cancer_image.png 


*************************************************
1. Create Giotto Object And Join
*************************************************

.. code-block:: r

	dataDir <- 'path/to/data'
	## obese upper
	N_pros = createGiottoVisiumObject(
		visium_dir = paste0(dataDir,'/Visium_FFPE_Human_Normal_Prostate/'),
		expr_data = 'raw',
		png_name = 'tissue_lowres_image.png',
		gene_column_index = 2,
		instructions = instrs
	)

	## obese lower
	C_pros = createGiottoVisiumObject(
		visium_dir = paste0(dataDir,'/Visium_FFPE_Human_Prostate_Cancer/'),
		expr_data = 'raw',
		png_name = 'tissue_lowres_image.png',
		gene_column_index = 2,
		instructions = instrs
	)
	# join giotto objects
	# joining with x_shift has the advantage that you can join both 2D and 3D data
	# x_padding determines how much distance is between each dataset
	# if x_shift = NULL, then the total shift will be guessed from the giotto image
	testcombo = joinGiottoObjects(gobject_list = list(N_pros, C_pros),
		gobject_names = c('NP', 'CP'),
		join_method = 'shift', x_padding = 1000)


	# join info is stored in this slot
	# simple list for now
	testcombo@join_info


	# check joined Giotto object
	fDataDT(testcombo)
	pDataDT(testcombo)
	showGiottoImageNames(testcombo)
	showGiottoSpatLocs(testcombo)
	showGiottoExpression(testcombo)


.. code-block:: R

	# this plots all the images by list_ID
	spatPlot2D(gobject = testcombo, cell_color = 'in_tissue',
		show_image = T, image_name = c("NP-image", "CP-image"),
		group_by = 'list_ID', point_alpha = 0.5,
		save_param = list(save_name = "1a_plot"))

.. image:: /images/other/visium_prostate_integration/1a_plot.png

.. code-block:: 

	# this plots one selected image
	spatPlot2D(gobject = testcombo, cell_color = 'in_tissue',
		show_image = T, image_name = c("NP-image"), point_alpha = 0.3,
		save_param = list(save_name = "1b_plot"))


.. image:: /images/other/visium_prostate_integration/1b_plot.png

.. code-block:: 

	# this plots two selected images
	spatPlot2D(gobject = testcombo, cell_color = 'in_tissue',
		show_image = T, image_name = c( "NP-image", "CP-image"),
		point_alpha = 0.3,
		save_param = list(save_name = "1c_plot"))

.. image:: /images/other/visium_prostate_integration/1c_plot.png

****************************************************
2. Process Giotto Objects
****************************************************

.. code-block:: 

	# subset on in-tissue spots
	metadata = pDataDT(testcombo)
	in_tissue_barcodes = metadata[in_tissue == 1]$cell_ID
	testcombo = subsetGiotto(testcombo, cell_ids = in_tissue_barcodes)

   ## filter
   testcombo <- filterGiotto(gobject = testcombo,
       expression_threshold = 1,
       feat_det_in_min_cells = 50,
       min_det_feats_per_cell = 500,
       expression_values = c('raw'),
       verbose = T)

   ## normalize
   testcombo <- normalizeGiotto(gobject = testcombo, scalefactor = 6000)

   ## add gene & cell statistics
   testcombo <- addStatistics(gobject = testcombo, expression_values = 'raw')

   fmeta = fDataDT(testcombo)
   testfeats = fmeta[perc_cells > 20 & perc_cells < 50][100:110]$feat_ID

   violinPlot(testcombo, feats = testfeats, cluster_column = 'list_ID', save_param = list(save_name = "2a_plot"))
   plotMetaDataHeatmap(testcombo, selected_feats = testfeats, metadata_cols = 'list_ID', save_param = list(save_name = "2b_plot"))

.. card-carousel:: 2
	
	.. card::
		
		.. image:: /images/other/visium_prostate_integration/2a_plot.png

	.. card:: 	

		.. image:: /images/other/visium_prostate_integration/2b_plot.png	
	
.. code-block:: 

	## visualize
	#fDataDT(testcombo)
	spatPlot2D(gobject = testcombo, group_by = 'list_ID', cell_color = 'nr_feats', color_as_factor = F, point_size = 0.75, save_param = list(save_name = "2c_plot"))

.. image:: /images/other/visium_prostate_integration/2c_plot.png


****************************************************
3. Dimension Reduction
****************************************************

.. code-block:: 

   ## PCA ##
   testcombo <- calculateHVF(gobject = testcombo)
   testcombo <- runPCA(gobject = testcombo, center = TRUE, scale_unit = TRUE)
   screePlot(testcombo, ncp = 30, save_param = list(save_name = "3a_screeplot"))

.. image:: /images/other/visium_prostate_integration/3a_screeplot.png

****************************************************
4. Clustering
****************************************************

4.1 Without Integration 
==========================
Integration is usually needed for dataset of different conditions to minimize batch effects. Without integration means without using any integration methods.

.. code-block:: 

   ## cluster and run UMAP ##
   # sNN network (default)
   testcombo <- createNearestNetwork(gobject = testcombo,
       dim_reduction_to_use = 'pca', dim_reduction_name = 'pca',
       dimensions_to_use = 1:10, k = 15)

   # Leiden clustering
   testcombo <- doLeidenCluster(gobject = testcombo, resolution = 0.2, n_iterations = 1000)

   # UMAP
   testcombo = runUMAP(testcombo)

   plotUMAP(gobject = testcombo,
       cell_color = 'leiden_clus', show_NN_network = T, point_size = 1.5,
       save_param = list(save_name = "4.1a_plot"))

.. image:: /images/other/visium_prostate_integration/4.1a_plot.png

.. code-block:: 

	spatPlot2D(gobject = testcombo, group_by = 'list_ID',
    cell_color = 'leiden_clus',
    point_size = 1.5,
    save_param = list(save_name = "4.1b_plot"))

.. image:: /images/other/visium_prostate_integration/4.1b_plot.png

.. code-block:: 

	spatDimPlot2D(gobject = testcombo,
    cell_color = 'leiden_clus',
    save_param = list(save_name = "4.1c_plot"))

.. image:: /images/other/visium_prostate_integration/4.1c_plot.png 

4.2 With Harmony integration
==================================
Harmony is a integration algorithm developed by `Korsunsky, I. et al. <https://www.nature.com/articles/s41592-019-0619-0>`__. It was designed for integration of single cell data but also work well on spatial datasets.

.. code-block:: 

      ## data integration, cluster and run UMAP ##

      # harmony
      #library(devtools)
      #install_github("immunogenomics/harmony")
      library(harmony)

      ## run harmony integration
      testcombo = runGiottoHarmony(testcombo, vars_use = 'list_ID', do_pca = F)


      ## sNN network (default)
      testcombo <- createNearestNetwork(gobject = testcombo,
          dim_reduction_to_use = 'harmony', dim_reduction_name = 'harmony', name = 'NN.harmony',
          dimensions_to_use = 1:10, k = 15)

      ## Leiden clustering
      testcombo <- doLeidenCluster(gobject = testcombo,
          network_name = 'NN.harmony', resolution = 0.2, n_iterations = 1000, name = 'leiden_harmony')

      # UMAP dimension reduction
      testcombo = runUMAP(testcombo, dim_reduction_name = 'harmony', dim_reduction_to_use = 'harmony', name = 'umap_harmony')


      plotUMAP(gobject = testcombo,
          dim_reduction_name = 'umap_harmony',
          cell_color = 'leiden_harmony', 
          show_NN_network = F, 
          point_size = 1.5,
          save_param = list(save_name = "4.2a_plot"))
      # If you want to show NN network information, you will need to specify these arguments in the plotUMAP function
      # show_NN_network = T, nn_network_to_use = 'sNN' , network_name = 'NN.harmony'

.. image:: /images/other/visium_prostate_integration/4.2a_plot.png 

.. code-block:: 

	spatPlot2D(gobject = testcombo, group_by = 'list_ID',
    cell_color = 'leiden_harmony',
    point_size = 1.5,
    save_param = list(save_name = "4.2b_plot"))

.. image:: /images/other/visium_prostate_integration/4.2b_plot.png  


.. code-block:: 

	spatDimPlot2D(gobject = testcombo,
    dim_reduction_to_use = 'umap', dim_reduction_name = 'umap_harmony',
    cell_color = 'leiden_harmony',
    save_param = list(save_name = "4.2c_plot"))

.. image:: /images/other/visium_prostate_integration/4.2c_plot.png  


.. code-block:: 

	# compare to previous results
	spatPlot2D(gobject = testcombo,
		cell_color = 'leiden_clus', 
		save_param = list(save_name = "4_w_o_integration_plot"))
	spatPlot2D(gobject = testcombo,
		cell_color = 'leiden_harmony',
		save_param = list(save_name = "4_w_integration_plot"))

.. image:: /images/other/visium_prostate_integration/4_w_o_integration_plot.png 


****************************************************
5. Cell-Type Annotation 
**************************************************** 

Visium spatial transcriptomics does not provide single-cell resolution, making cell type annotation a harder problem. Giotto provides several ways to calculate enrichment of specific cell-type signature gene list:
   - PAGE
   - hypergeometric test
   - Rank
   - `DWLS Deconvolution <https://genomebiology.biomedcentral.com/articles/10.1186/s13059-021-02362-7>`__

This is also the easiest way to integrate Visium datasets with single cell data. Example shown here is from `Ma et al. <https://pubmed.ncbi.nlm.nih.gov/33032611/>`__ from two prostate cancer patients. The raw dataset can be found `here <https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE157703>`__ Giotto_SC is processed variable in the :doc:`single cell RNAseq tutorial <singlecell_prostate_standard>`. You can also get access to the processed files of this dataset using :doc:`getSpatialDataset </subsections/md_rst/getSpatialDataset>`

.. code-block:: 

	# download data to results directory ####
	# if wget is installed, set method = 'wget'
	# if you run into authentication issues with wget, then add " extra = '--no-check-certificate' "
	getSpatialDataset(dataset = 'Human_PCa_scRNAseq', directory = results_folder)

	sc_expression = paste0(results_folder, "/prostate_sc_expression_matrix.csv.gz")
	sc_metadata = paste(results_folder,"/prostate_sc_metadata.csv")

	giotto_SC <- createGiottoObject(
	expression = sc_expression,
	instructions = instrs
	)

	giotto_SC <- addCellMetadata(giotto_SC, 
								new_metadata = data.table::fread(sc_metadata))

	giotto_SC<- normalizeGiotto(giotto_SC)

5.1 PAGE Enrichment 
=====================

.. code-block:: 

	# Create PAGE matrix
	# PAGE matrix should be a binary matrix with each row represent a gene marker and each column represent a cell type
	# markers_scran is generated from single cell analysis ()
	markers_scran = findMarkers_one_vs_all(gobject=giotto_SC, method="scran",
										expression_values="normalized", cluster_column='prostate_labels', min_feats=3)
	top_markers <- markers_scran[, head(.SD, 10), by="cluster"]
	celltypes<-levels(factor(markers_scran$cluster))
	sign_list<-list()
	for (i in 1:length(celltypes)){
	sign_list[[i]]<-top_markers[which(top_markers$cluster == celltypes[i]),]$feats
	}

	PAGE_matrix = makeSignMatrixPAGE(sign_names = celltypes,
									sign_list = sign_list)

.. code-block:: 

	testcombo = runPAGEEnrich(gobject = testcombo,
                          sign_matrix = PAGE_matrix,
                          min_overlap_genes = 2)

	cell_types_subset = colnames(PAGE_matrix)

	# Plot PAGE enrichment result
	spatCellPlot(gobject = testcombo,
				spat_enr_names = 'PAGE',
				cell_annotation_values = cell_types_subset[1:4],
				cow_n_col = 2,coord_fix_ratio = NULL, point_size = 1.25,
				save_param = list(save_name = "5a_PAGE_plot"))

.. image:: /images/other/visium_prostate_integration/5a_PAGE_plot.png 

5.2 Hypergeometric test
============================

.. code-block:: 

	testcombo = runHyperGeometricEnrich(gobject = testcombo,
                                    expression_values = "normalized",
                                    sign_matrix = PAGE_matrix)
	cell_types_subset = colnames(PAGE_matrix)
	spatCellPlot(gobject = testcombo, 
				spat_enr_names = 'hypergeometric',
				cell_annotation_values = cell_types_subset[1:4],
				cow_n_col = 2,coord_fix_ratio = NULL, point_size = 1.75,
				save_param = list(save_name = "5b_HyperGeometric_plot"))


.. image:: /images/other/visium_prostate_integration/5b_HyperGeometric_plot.png 

5.3 Rank Enrichment
=======================

.. code-block:: 

	# Create rank matrix, not that rank matrix is different from PAGE
	# A count matrix and a vector for all cell labels will be needed
	rank_matrix = makeSignMatrixRank(sc_matrix = get_expression_values(giotto_SC,values = "normalized"),
									sc_cluster_ids = pDataDT(giotto_SC)$prostate_label)
	colnames(rank_matrix)<-levels(factor(pDataDT(giotto_SC)$prostate_label))
	testcombo = runRankEnrich(gobject = testcombo, sign_matrix = rank_matrix,expression_values = "normalized")

	# Plot Rank enrichment result
	spatCellPlot2D(gobject = testcombo,
				spat_enr_names = 'rank',
				cell_annotation_values = cell_types_subset[1:4],
				cow_n_col = 2,coord_fix_ratio = NULL, point_size = 1,
				save_param = list(save_name = "5c_Rank_plot"))

.. image:: /images/other/visium_prostate_integration/5c_Rank_plot.png 


5.4 DWLS Deconvolution
============================

.. code-block:: 
	
	# Create DWLS matrix, not that DWLS matrix is different from PAGE and rank
	# A count matrix a vector for a list of gene signatures and a vector for all cell labels will be needed
	DWLS_matrix<-makeSignMatrixDWLSfromMatrix(matrix = as.matrix(get_expression_values(giotto_SC,values = "normalized")),
											cell_type = pDataDT(giotto_SC)$prostate_label,
											sign_gene = top_markers$feats)
	testcombo = runDWLSDeconv(gobject = testcombo, sign_matrix = DWLS_matrix)


	# Plot DWLS deconvolution result
	spatCellPlot2D(gobject = testcombo,
				spat_enr_names = 'DWLS',
				cell_annotation_values = levels(factor(pDataDT(giotto_SC)$prostate_label))[1:4],
				cow_n_col = 2,coord_fix_ratio = NULL, point_size = 1,
				save_param = list(save_name = "5d_DWLS_plot"))

.. image:: /images/other/visium_prostate_integration/5d_DWLS_plot.png 

.. code-block:: 

	# Plot DWLS deconvolution result with Pie plots
        spatDeconvPlot(testcombo, 
               show_image = T, image_name = c("NP-image", "CP-image"),
               radius = 150,
               save_param = list(save_name = "spat_DWLS_pie_plot"))

.. image:: /images/other/visium_prostate_integration/5d_DWLS_plot.png 

