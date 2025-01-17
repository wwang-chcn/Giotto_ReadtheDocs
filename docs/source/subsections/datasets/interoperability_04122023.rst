=========================
Interoperability: AnnData
=========================

:Date: 4/14/23

1 Converting to and from AnnData (squidpy-flavor)
=================================================

This tutorial details how to use the conversion functions
``anndataToGiotto()`` and ``giottoToAnnData()``. A mini Giotto object
will be used for minimal computational requirements. Please note that
these functions are inherently in active development, since changes to
either squidpy or anndata are possible.

2 Start Giotto
==============

.. container:: cell

   .. code:: r

      # Ensure Giotto Suite is installed
      if(!"Giotto" %in% installed.packages()) {
        devtools::install_github("drieslab/Giotto@suite")
      }
      library(Giotto)

      # Ensure Giotto Data is installed
      if(!"GiottoData" %in% installed.packages()) {
        devtools::install_github("drieslab/GiottoData")
      }
      library(GiottoData)

      # Ensure the Python environment for Giotto has been installed
      genv_exists = checkGiottoEnvironment()
      if(!genv_exists){
        # The following command need only be run once to install the Giotto environment
        installGiottoEnvironment()
      }

3 Create a Giotto object
========================

.. container:: cell

   .. code:: r

      # Specify path to which results may be saved
      results_directory = paste0(getwd(),'/giotto_anndata_conversion/') 

      # Optional: Specify a path to a Python executable within a conda or miniconda 
      # environment. If set to NULL (default), the Python executable within the previously
      # installed Giotto environment will be used.
      my_python_path = NULL # alternatively, "/local/python/path/python" if desired.

      mini_gobject = loadGiottoMini(dataset = 'vizgen', 
                                    python_path = my_python_path)

      instrs = showGiottoInstructions(mini_gobject)
      instrs$save_dir = results_directory

      mini_gobject = replaceGiottoInstructions(gobject = mini_gobject,
                                               instructions = instrs)

4 Convert Giotto to AnnData
===========================

Since Giotto is structured hierarchally, converting Giotto to AnnData
will result in multiple ``.h5ad`` files. Each file will correspond to a
Giotto ``spat_unit`` ``feat_type`` pair. Furthermore, each expression
slot will be treated as a ``layer`` in the resulting AnnData slot.

Squidpy anndata objects take different defaults for various operations
compared to Giotto. For instance, the default nearest neighbor network
is a kNN for squidpy, while the default for Giotto is a sNN. We’ll
create a kNN in addition to the sNN within this object already to show
how it they are handled.

.. container:: cell

   .. code:: r

      mini_gobject = createNearestNetwork(gobject = mini_gobject,
                                          spat_unit = "aggregate",
                                          feat_type = "rna",
                                          type = "kNN",
                                          dim_reduction_to_use = "umap",
                                          dim_reduction_name = "umap",
                                          k = 15,
                                          name = "kNN.umap")

The above cell creates a nearest network with almost all default
parameters. We'll change some and make a new network to show how the converter handles this.

.. container:: cell

   .. code:: r

      mini_gobject = createNearestNetwork(gobject = mini_gobject,
                                          spat_unit = "aggregate",
                                          feat_type = "rna",
                                          type = "kNN",
                                          dim_reduction_to_use = "umap",
                                          dim_reduction_name = "umap",
                                          k = 6,
                                          name = "new_network")

Since we have multiple ``spat_unit`` ``feat_type`` pairs, there will be
multiple files created by this function. The names of the ``.h5ad``
files will be returned. In the case of a non-anndata-default nearest
network or spatial network name, the key_added terms will be recorded
and saved in ``.txt`` files named accordingly. Please see the
documentation for further details.

.. container:: cell

   .. code:: r

      anndata_conversions = giottoToAnnData(gobject = mini_gobject,
                                            save_directory = results_directory,
                                            python_path = my_python_path)

5 AnnData to Giotto
===================

To convert an AnnData Object back into a Giotto object, it must first be
saved as a ``.h5ad`` file. The name of said file may then be provided to
``anndataToGiotto()`` for conversion.

If a nearest neighbor network or spatial netowkr was created using the
``key_added`` argument, they may be provided to arguments n_key_added
and/or spatial_n_key_added, respectively. If converting an anndata
object that was originally a giotto object, the ``.txt`` files generated
by ``giottoToAnnData()`` may be provided to these arguments as well.

.. container:: cell

   .. code:: r

      z0_rna_gobject <- anndataToGiotto(anndata_path = "./giotto_anndata_conversion/z0_rna_converted_gobject.h5ad",
                                        python_path = my_python_path)

      z1_rna_gobject <- anndataToGiotto(anndata_path = "./giotto_anndata_conversion/z1_rna_converted_gobject.h5ad",
                                        python_path = my_python_path)

      aggregate_rna_gobject <- anndataToGiotto(anndata_path = "./giotto_anndata_conversion/aggregate_rna_converted_gobject.h5ad",
                                               python_path = my_python_path,
                                               n_key_added = list("sNN.pca","new_network"),
                                               spatial_n_key_added = "aggregate_rna_spatial_network_keys_added.txt")


6 Session Info
==============

.. container:: cell

   .. code:: r

      sessionInfo()

   .. container:: cell-output cell-output-stdout

      ::

         R version 4.2.2 (2022-10-31 ucrt)
         Platform: x86_64-w64-mingw32/x64 (64-bit)
         Running under: Windows 10 x64 (build 22621)

         Matrix products: default

         locale:
         [1] LC_COLLATE=English_United States.utf8 
         [2] LC_CTYPE=English_United States.utf8   
         [3] LC_MONETARY=English_United States.utf8
         [4] LC_NUMERIC=C                          
         [5] LC_TIME=English_United States.utf8    

         attached base packages:
         [1] stats     graphics  grDevices utils     datasets  methods   base     

         other attached packages:
         [1] GiottoData_0.2.1 Giotto_3.2.1    

         loaded via a namespace (and not attached):
          [1] Rcpp_1.0.10       pillar_1.9.0      compiler_4.2.2    tools_4.2.2      
          [5] digest_0.6.30     jsonlite_1.8.3    evaluate_0.20     lifecycle_1.0.3  
          [9] tibble_3.2.1      gtable_0.3.3      lattice_0.20-45   png_0.1-7        
         [13] pkgconfig_2.0.3   rlang_1.1.0       igraph_1.4.1      Matrix_1.5-1     
         [17] cli_3.4.1         rstudioapi_0.14   parallel_4.2.2    yaml_2.3.7       
         [21] xfun_0.38         fastmap_1.1.0     terra_1.7-18      dplyr_1.1.1      
         [25] knitr_1.42        rappdirs_0.3.3    generics_0.1.3    vctrs_0.6.1      
         [29] rprojroot_2.0.3   grid_4.2.2        tidyselect_1.2.0  here_1.0.1       
         [33] reticulate_1.26   glue_1.6.2        data.table_1.14.6 R6_2.5.1         
         [37] fansi_1.0.4       rmarkdown_2.21    ggplot2_3.4.1     magrittr_2.0.3   
         [41] scales_1.2.1      codetools_0.2-18  htmltools_0.5.4   colorspace_2.1-0 
         [45] utf8_1.2.3        munsell_0.5.0     dbscan_1.1-11    
