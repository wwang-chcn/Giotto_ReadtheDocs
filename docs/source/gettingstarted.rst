.. _gettingstartedpage: 

#######################
Getting Started 
#######################

Giotto Suite is installed via R **but there are required Python modules** which **must** be installed in order for Giotto Suite to function properly. 
Below are the instructions for both the installation of the Giotto Suite package (Step 1) and required Python environment (Step 2). 

*************
Requirements
*************
* R (>= 3.5.1)
* Python (>= 3.0)
* `Windows, MacOS or Linux specific installation tools.`_

.. _Windows, MacOS or Linux specific installation tools.: https://support.rstudio.com/hc/en-us/articles/200486498-Package-Development-Prerequisites

.. _Installation_Section:

*************
Installation
*************

**Step 1: Install Giotto Suite**

.. code-block:: r

    library(remotes)
    remotes::install_github("RubD/Giotto@suite") 

**Step 2: Install the Giotto Python environment**

This step only needs to be run once. Giotto Suite will automatically detect the environment in the future.

.. code-block:: r

    library(Giotto)
    installGiottoEnvironment()


:octicon:`light-bulb` Encountering errors? Checkout out the :ref:`Common Errors and Solutions <faqs>` for installation troubleshooting help.  


**************************
Learn more about Giotto Suite
**************************

.. grid:: 4

    .. grid-item-card::

        .. image:: images/getting_started/icons_configuration.png
			:target: https://ed2uiz-giotto-readthedocs.readthedocs.io/en/latest/subsections/datasets/configuration.html


    .. grid-item-card::

        .. image:: images/getting_started/icons_giotto.png
            :target: ../build/html/subsections/datasets/mini_visium.html


    .. grid-item-card::
        
        .. image:: images/getting_started/icons_processing.png
            :target: ../../build/html/subsections/datasets/mini_visium.html
    

    .. grid-item-card::
        
        .. image:: images/getting_started/icons_clustering.png
            :target: ../../build/html/subsections/datasets/mini_visium.html


    .. grid-item-card::

        .. image:: images/getting_started/icons_images.png
            :target: ../../build/html/subsections/tipsandtricks/howtovisualizeandsaveplots.html
        

    .. grid-item-card::

        .. image:: images/getting_started/icons_visualizations.png
            :target: ../../build/html/subsections/datasets/mini_3D_STARmap.html 


    .. grid-item-card::
        
        .. image:: images/getting_started/icons_saving.png
            :target: ../../build/html/subsections/datasets/mini_visium.html

**************************
Analyses
**************************

Tutorials for Spatial analyses that can be performed with Giotto Suite.
Full dataset examples can be found in the `Datasets <datasets>`_ tab.

			
.. grid:: 4

    .. grid-item-card::

        .. image:: images/getting_started/icons_distribution.png
            :target: ../../build/html/subsections/tipsandtricks/howtovisualizeandsaveplots.html
        

    .. grid-item-card::

        .. image:: images/getting_started/icons_cell_type.png
            :target: ../../build/html/subsections/datasets/mini_3D_STARmap.html 


    .. grid-item-card::
        
        .. image:: images/getting_started/icons_deconvolution.png
            :target: ../../build/html/subsections/datasets/mini_visium.html


    .. grid-item-card::

        .. image:: images/getting_started/icons_distribution.png
            :target: ../../build/html/subsections/tipsandtricks/howtovisualizeandsaveplots.html
        

    .. grid-item-card::

        .. image:: images/getting_started/icons_interaction.png
            :target: ../../build/html/subsections/datasets/mini_3D_STARmap.html 


    .. grid-item-card::
        
        .. image:: images/getting_started/icons_patterns.png
            :target: ../../build/html/subsections/datasets/mini_visium.html

    .. grid-item-card::

        .. image:: images/getting_started/icons_subcellular.png
            :target: ../../build/html/subsections/tipsandtricks/howtovisualizeandsaveplots.html

.. .. tip:: 
	
	Check out the :ref:`Examples Section <datasets>` to get a better understanding of the Giotto workflow.
