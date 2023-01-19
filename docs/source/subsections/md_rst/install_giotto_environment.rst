==========================
install_giotto_environment
==========================

:Date: 1/19/23

``install_giotto_environment``
==============================

install_giotto_environment

Description
-----------

installation options of giotto environment

Usage
-----

.. code:: r

   install_giotto_environment(
     force_environment = FALSE,
     packages_to_install = c("pandas", "networkx", "python-igraph", "leidenalg",
       "python-louvain", "python.app", "scikit-learn"),
     python_version = "3.10.2",
     verbose = TRUE
   )
