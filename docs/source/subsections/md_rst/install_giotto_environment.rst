==========================
install_giotto_environment
==========================

:Date: 2022-09-22

Description
===========

installation options of giotto environment

Usage
=====

.. code:: r

   install_giotto_environment(
     force_environment = FALSE,
     packages_to_install = c("pandas", "networkx", "python-igraph", "leidenalg",
       "python-louvain", "python.app", "scikit-learn"),
     python_version = "3.6",
     verbose = TRUE
   )
