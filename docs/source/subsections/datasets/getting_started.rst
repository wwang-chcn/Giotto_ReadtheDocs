===============
getting_started
===============

:Date: 2022-09-16

Giotto provides a lot of analyses, visualizations and other options to
facilitate your spatial dataset analysis. We are working on providing
easy-to-understand examples or tutorials, but if anything is not clear
or if there is something you would like to see in particular, then do
not hesitate to contact `us <https://github.com/RubD/Giotto/issues>`__.

 

Installation
============

You can install Giotto Suite on any platform in 2 easy steps:

Step 1: install Giotto Suite
----------------------------

.. code:: r

   library(remotes)
   remotes::install_github("RubD/Giotto@suite") 

Step 2: install the Giotto python environment
---------------------------------------------

The python environment only needs to be installed once.

.. code:: r

   library(Giotto)
   installGiottoEnvironment()

This command only needs to be run once and then Giotto will
automatically detect the environment in the future.

For more information:

-  See
   `Installation <https://giottosuite.com/articles/temp_construction.html>`__
   for alternative (manual) installation options.
-  See `Giotto
   Environment <https://giottosuite.com/articles/temp_construction.html>`__
   to learn more about the Giotto environment.
-  See `FAQ <https://giottosuite.com/articles/faq.html>`__ for
   troubleshooting.

 

Getting started
===============

[under construction]

Tutorials for Giotto specific tasks and functionalities.

|image1| |image2| |image3| |image4|

|image5| |image6| |image7|

 

Analyses
========

| Tutorials for Spatial analyses that can be performed with Giotto
  Suite.
| Full dataset examples can be found in the
  `Datasets <../articles/datasets_overview.html>`__ tab.

|image8| |image9| |image10|

|image11| |image12| |image13|

|image14|  

.. |image1| image:: /images/images_pkgdown/icons/getting_started/icons_configuration.png
   :width: 20.0%
   :target: ./configuration.html
.. |image2| image:: /images/images_pkgdown/icons/getting_started/icons_giotto.png
   :width: 20.0%
   :target: ./getting_started_gobject.html
.. |image3| image:: /images/images_pkgdown/icons/getting_started/icons_processing.png
   :width: 20.0%
   :target: ./data_processing.html
.. |image4| image:: /images/images_pkgdown/icons/getting_started/icons_clustering.png
   :width: 20.0%
   :target: ./Dimension_reduction.html
.. |image5| image:: /images/images_pkgdown/icons/getting_started/icons_images.png
   :width: 20.0%
   :target: ./getting_started_images.html
.. |image6| image:: /images/images_pkgdown/icons/getting_started/icons_visualizations.png
   :width: 20.0%
   :target: ./Visualizations.html
.. |image7| image:: /images/images_pkgdown/icons/getting_started/icons_saving.png
   :width: 20.0%
   :target: ./getting_started_saving.html
.. |image8| image:: /images/images_pkgdown/icons/analyses/icons_image_analysis.png
   :width: 30.0%
   :target: ./temp_construction.html
.. |image9| image:: /images/images_pkgdown/icons/analyses/icons_cell_type.png
   :width: 30.0%
   :target: ./temp_construction.html
.. |image10| image:: /images/images_pkgdown/icons/analyses/icons_deconvolution.png
   :width: 30.0%
   :target: ./analyses_deconvolution_Oct2021.html
.. |image11| image:: /images/images_pkgdown/icons/analyses/icons_distribution.png
   :width: 30.0%
   :target: ./temp_construction.html
.. |image12| image:: /images/images_pkgdown/icons/analyses/icons_interaction.png
   :width: 30.0%
   :target: ./temp_construction.html
.. |image13| image:: /images/images_pkgdown/icons/analyses/icons_patterns.png
   :width: 30.0%
   :target: ./temp_construction.html
.. |image14| image:: /images/images_pkgdown/icons/analyses/icons_subcellular.png
   :width: 30.0%
   :target: ./temp_construction.html
