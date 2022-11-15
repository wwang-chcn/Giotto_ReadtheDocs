.. _terrainformation:

##########
Terra
##########

======================================
Launching Giotto on the Cloud
======================================

You can run all your pipelines using Giotto on the Cloud through the Terra platform.

Setting up your Terra account
======================================

Go to `Terra <https://app.terra.bio/>`__ on the Chrome browser and `Sign Up` using the same email address that you will use for the Google Cloud billing account.


Creating a Billing Account
======================================

- Create an account on the `Google Cloud Platform <https://cloud.google.com />`__. You can start a free trial with a $300 credit.
- Set Terra as a billing user on your Google account by following these `steps <https://support.terra.bio/hc/en-us/articles/360026182251-How-to-set-up-billing-in-Terra/>`__.
- Select your Google account to create a billing project on Terra.

For additional information about billing accounts go to this `link <https://support.terra.bio/hc/en-us/articles/360048632271-Understanding-Terra-costs-and-billing>`__ .


Create A Workspace
======================================

- Create a workspace under your billing account.

.. note::
        All users with access permissions to your workspace will share the same billing account.

- You can upload your own data or download data from public databases to the workspace.
- Launch a Cloud environment or Virtual Machine to start the analysis.


Create a Cloud Environment
======================================

In Terra, you can run Cloud Environments using Jupyter notebooks or the RStudio App. We recommend using the Juypyter notebook + Python + Bioconductor or the RStudio + Bioconductor options.

.. image:: /images/img_terra/01_environments.png
   :width: 50.0%

You can customize the memory usage, the number of CPUs, and the persistent disk size for your virtual machine.

.. image:: /images/img_terra/01_vm.png
   :width: 50.0%

Once you launched either a Jupyter notebook or the RStudio App, you can install the Giotto package:

.. container:: cell

   .. code:: r

      ## Install the master branch
      remotes::install_github("drieslab/Giotto")

      ## Install the suite branch
      remotes::install_github("drieslab/Giotto@suite")


If you prefer to launch a Juptyter notebook ready to run analysis with Giotto, you can use our Terra-based Docker image for the `master <https://hub.docker.com/repository/docker/josschavezf/terra-jupyter-python-bioconductor-giotto>`__ or `suite <https://hub.docker.com/repository/docker/josschavezf/terra-jupyter-python-bioconductor-giotto_suite>`__ branch.

You can also launch the RStudio app using the Giotto's startup script for the `master <https://github.com/josschavezf/giotto_cloud/blob/main/startup_script.sh>`__ or `suite <https://github.com/josschavezf/giotto_cloud/blob/main/startup_script_suite.sh>`__ branch.


Customizing your Cloud Environment using Giotto's Docker image
============================================================================

Under Application configuration, use the option Custom Environment and introduce the link to the Docker container, named josschavezf/terra-jupyter-bioconductor-giotto:latest or josschavezf/terra-jupyter-python-bioconductor-giotto_suite:latest

.. image:: /images/img_terra/02_docker.png
   :width: 50.0%

Customizing your Cloud Environment using a Startup Script
============================================================================

You can download the Startup Script from this `link <https://github.com/josschavezf/giotto_cloud/>`__ .

- Upload the Startup Script to your Workspace Files.

.. image:: /images/img_terra/03_upload.png
   :width: 50.0%

- Click on the startup_script.sh document and copy the gs link.

.. image:: /images/img_terra/03_view.png
   :width: 50.0%

- Copy and paste the link under the Startup Script option to launch the Cloud environment.

.. image:: /images/img_terra/03_cloud.png
   :width: 50.0%

- Click on Create Environment



Share your workspace with collaborators
=========================================

You can share your workspace with collaborators, including data, notebooks, and workflows stored in your workspace.

- Go to the Dashboard tab on your workspace and click the three dots in the upper right corner.
- Select the Share option.
- Add the email of your collaborator. They will receive an invitation for joining the workspace.
- You can select the permissions granted to your collaborator (reader, writer, or owner).
- Click the save button.

.. image:: /images/img_terra/04_share.png
   :width: 50.0%


.. dropdown:: :octicon:`alert` Considerations when collaborating in Terra

    - All Cloud environments (virtual machines) launched within the same workspace are linked to the same billing account.
    - Simultaneous modification of notebooks is not allowed.
    - Opening the notebook while someone else is editing will show a message, but the current editor is not notified when someone else is trying to open the notebook.

