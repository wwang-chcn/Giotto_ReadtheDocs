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
