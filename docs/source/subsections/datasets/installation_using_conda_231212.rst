============
Installation
============

:Date: 12/12/23

0 Cean up
=========================

Clean conda temporary files

.. container:: cell

   .. code:: shell

      conda clean -a

Clean pip temporary files

.. container:: cell

   .. code:: shell

      pip cache purge

1 Create conda environment
=========================

.. container:: cell

   .. code:: shell

      conda create -y -n giotto_suite python=3.10 r=4.2
      conda activate giotto_suite

      export PKG_CONFIG_PATH=$CONDA_PREFIX/envs/giotto_suite/lib/pkgconfig
      # export PKG_CONFIG_PATH=/sc/arion/work/wangw32/conda-env/envs/giotto_suite_bento_install/lib/pkgconfig

2 Instal Giotto
=========================

2.1 Install dependency packages

These dependency packages are more likely to have troubles during Giotto installation due to network issues. We can install those using conda.
------------------------

.. container:: cell

   .. code:: shell

      conda install -y -c conda-forge -c bioconda -c r -c defaults r-gert
      conda install -y -c conda-forge -c bioconda -c r -c defaults r-magick r-terra r-igraph
      # If you have trouble when installing other dependency packages during installing Giotto, you can try to install it using conda
      # conda install -y -c conda-forge -c bioconda -c r -c defaults r-sf


2.2 Check R_LIB
-----------------------------------------

.. container:: cell

   .. code:: r

      library_paths <- .libPaths()
      print(library_paths)
      # [1] "/sc/arion/work/wangw32/conda-env/envs/giotto_suite/lib/R/library"

2.3 Install devtools & Giotto
-----------------------------------------

.. container:: cell

   .. code:: r

      # Necessary for installation from R
      if(!"devtools" %in% installed.packages()) {
        install.packages("devtools")
      }

      devtools::install_github("drieslab/Giotto")

3 Install python dependency packages
====================================

Install python dependency packages

.. container:: cell

   .. code:: shell

    conda activate giotto_suite
    conda install -y cmake
    pip install pandas python-igraph networkx python-louvain leidenalg scikit-learn smfishHmrf

    # install bento if you need it
    pip install git+https://github.com/wwang-chcn/bento-tools.git

4 Session Info
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
         [1] Giotto_3.2.1

         loaded via a namespace (and not attached):
          [1] Rcpp_1.0.10       pillar_1.9.0      compiler_4.2.2    tools_4.2.2      
          [5] digest_0.6.30     jsonlite_1.8.3    evaluate_0.20     lifecycle_1.0.3  
          [9] tibble_3.2.1      gtable_0.3.3      lattice_0.20-45   pkgconfig_2.0.3  
         [13] rlang_1.1.0       Matrix_1.5-1      cli_3.4.1         rstudioapi_0.14  
         [17] parallel_4.2.2    yaml_2.3.7        xfun_0.38         fastmap_1.1.0    
         [21] terra_1.7-18      dplyr_1.1.1       knitr_1.42        generics_0.1.3   
         [25] vctrs_0.6.1       grid_4.2.2        tidyselect_1.2.0  glue_1.6.2       
         [29] data.table_1.14.6 R6_2.5.1          fansi_1.0.4       rmarkdown_2.21   
         [33] ggplot2_3.4.1     magrittr_2.0.3    scales_1.2.1      codetools_0.2-18 
         [37] htmltools_0.5.4   colorspace_2.1-0  utf8_1.2.3        munsell_0.5.0    
