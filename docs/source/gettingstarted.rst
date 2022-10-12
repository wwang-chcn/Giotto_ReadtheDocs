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


:octicon:`light-bulb` Encountering errors? Checkout out the :ref:`Common Errors and Solutions <https://giottosuite.readthedocs.io/en/latest/faqs.html>` for installation troubleshooting help.  

.. raw:: html

    <div class="sphx-glr-thumbnails">


.. raw:: html

    </div>
    
**************************
Learn more about Giotto Suite
**************************

.. raw:: html

    <div class="sphx-glr-thumbnails">


.. raw:: html

    <div class="sphx-glr-thumbcontainer" tooltip="Learn how to configure and setup the Giotto object">

.. only:: html

  .. image:: images/getting_started/icons_configuration.png
    :alt: Configuration & Set-up

  :ref:`configuration.rst`

.. raw:: html

      <div class="sphx-glr-thumbnail-title">Configuration & Set-up</div>
    </div>


.. raw:: html

    <div class="sphx-glr-thumbcontainer" tooltip="Learn more about Giotto objects & classes">

.. only:: html

  .. image:: images/getting_started/icons_giotto.png
    :alt: Giotto Objects & Classes

  :ref:`sphx_glr_tutorials_introductory_images.rst`

.. raw:: html

      <div class="sphx-glr-thumbnail-title">Giotto Objects & Classes</div>
    </div>


.. raw:: html

    </div>
