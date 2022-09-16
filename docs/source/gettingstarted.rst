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
            :target: https://ed2uiz-giotto-readthedocs.readthedocs.io/en/latest/subsections/datasets/getting_started_gobject.html


    .. grid-item-card::
        
        .. image:: images/getting_started/icons_processing.png
            :target: https://ed2uiz-giotto-readthedocs.readthedocs.io/en/latest/subsections/datasets/data_processing.html
    

    .. grid-item-card::
        
        .. image:: images/getting_started/icons_clustering.png
            :target: https://ed2uiz-giotto-readthedocs.readthedocs.io/en/latest/subsections/datasets/Dimension_reduction.html


    .. grid-item-card::

        .. image:: images/getting_started/icons_images.png
            :target: https://ed2uiz-giotto-readthedocs.readthedocs.io/en/latest/subsections/datasets/getting_started_images.html
        

    .. grid-item-card::

        .. image:: images/getting_started/icons_visualizations.png
            :target: https://ed2uiz-giotto-readthedocs.readthedocs.io/en/latest/subsections/datasets/Visualizations.html


    .. grid-item-card::
        
        .. image:: images/getting_started/icons_saving.png
            :target: https://ed2uiz-giotto-readthedocs.readthedocs.io/en/latest/subsections/datasets/getting_started_saving.html
