===================================
install_giotto_environment_specific
===================================

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/python_environment.R#L95

===========

installation of giotto environment

Usage
=====

.. code:: r

   install_giotto_environment_specific(
     packages_to_install = c("pandas", "networkx", "python-igraph", "leidenalg",
       "python-louvain", "python.app", "scikit-learn"),
     python_version = "3.6",
     verbose = TRUE
   )
