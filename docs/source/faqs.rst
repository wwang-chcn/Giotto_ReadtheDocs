#############################
FAQs
#############################

*******************************
Frequently Asked Questions
*******************************

Installation 
==================
:octicon:`question` :ref:`First time R package installation <first_time_r_installation>`

:octicon:`question` :ref:`Manual python installation <part2_python_giotto_requirements>`

:octicon:`question` :ref:`Errors on MacOS <error_on_mac>`

    :octicon:`question` :ref:`Clang Error on MacOS <clang_error_mac>`

    :octicon:`question` :ref:`R 3.6.3 and Catalina issue <r_363_and_catalina_error>`

:octicon:`question` :ref:`Errors on Windows <error_on_windows>`

    :octicon:`question` :ref:`Error: ‘make’ not found <make_not_found>`

:octicon:`question` :ref:`Error converted from warning <error_converted_warning>`


Data Availability 
=====================

.. dropdown:: :octicon:`question` Where to find seqFISH+ and other ready-to-use datasets?
    :open:

    Checkout `RubD/spatial-datasets <https://github.com/RubD/spatial-datasets>`__ to find already preprocessed datasets

.. dropdown:: :octicon:`question` Where to find other spatial datasets?
    :open:

    Checkout `SpatialDB <https://www.spatialomics.org/SpatialDB/>`__ to download expression matrix and location information

.. dropdown:: :octicon:`question` How to automatically download tutorial datasets? (merFISH example)
    :open:

    .. code-block:: r

        # choose your directory
        my_working_dir = getwd()

        # standard download data to working directory
        getSpatialDataset(dataset = 'merfish_preoptic', directory = my_working_dir)

        # use wget to  download data to working directory (much faster)
        getSpatialDataset(dataset = 'merfish_preoptic', directory = my_working_dir, method = 'wget')

        # avoid certification issues with wget
        getSpatialDataset(dataset = 'merfish_preoptic', directory = my_working_dir, method = 'wget', extra = '--no-check-certificate')

        # see download.file for more options
        ?download.file
