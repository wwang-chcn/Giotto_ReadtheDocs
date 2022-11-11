.. _datasets:

################################
Tutorials
################################

.. toctree::
    :maxdepth: 1
    :caption: Tutorials
    :hidden:

    Stereo-Seq Mouse Embryo <subsections/datasets/SSeq-E12-5_E1S3-Tutorial>
    Nanostring CosMx Lung <subsections/datasets/Nanostring_Lung12_jan26_21>
    MERFISH <subsections/datasets/merFISH_hypot_preopt_region>
    Visium Mouse Kidney <subsections/datasets/mouse_visium_kidney>
    Visium Mouse Brain <subsections/datasets/mouse_visium_brain>
    Visium Prostate Integration <subsections/datasets/visium_prostate_integration>
    Mini SeqFISH <subsections/datasets/mini_seqFISH>
    SeqFISH+ Cortex <subsections/datasets/seqFISH_cortex>
    osmFISH SS Cortex <subsections/datasets/osmFISH_mouse_SS_cortex>
    Vizgen Brain <subsections/datasets/vizgen_mouse_brain>
    Resolve Biosciences <subsections/datasets/resolve_bc_210928> 
    CODEX Spleen <subsections/datasets/mouse_CODEX_spleen>
    scRNA-seq Prostate <subsections/datasets/singlecell_prostate_standard>
    scRNA-seq Integration <subsections/datasets/singlecell_prostate_integration>
    Other technologies <subsections/datasets/other_technologies_coming_soon>
    
Most of these tutorials use data which is stored within a helper extension of Giotto Suite, GiottoData. To run these tutorials, please first install this small package.
Please note that some of the tutorials do require a manual download from an external site.

.. code-block:: r

    devtools::install_github("drieslab/GiottoData")

****************************
Array Based
****************************

Stereo-seq
=================
..
    .. grid::

    .. grid-item-card::

        .. image:: images/dataset_page/Stereo-seq.png
            :target: ./subsections/datasets/SSeq-E12-5_E1S3-Tutorial.html

.. card-carousel:: 1

    .. card::
        :link: /subsections/datasets/SSeq-E12-5_E1S3-Tutorial
        :link-type: doc

        .. image:: images/dataset_page/Stereo-seq.png


Visium datasets
=================

..
    .. grid::

    .. grid-item-card::

        .. image:: images/dataset_page/visium_kidney_image_summary.png
            :target: ./subsections/datasets/seqFISH_cortex.html

        .. button-ref:: /subsections/datasets/seqFISH_cortex
            :ref-type: doc
            :color: muted
            :click-parent:
            :expand:

    .. grid-item-card::

        .. image:: images/dataset_page/visium_brain_image_summary.png
            :target: ../build/html/html/subsections/datasets/mouse_visium_brain.html

    .. grid-item-card::

        .. image:: images/dataset_page/visium_prostate_summary.png
            :target: ../build/html/html/subsections/datasets/mouse_visium_brain.html


.. card-carousel:: 3

    .. card::
        :link: /subsections/datasets/mouse_visium_kidney
        :link-type: doc

        .. image:: images/dataset_page/visium_kidney_image_summary.png

    .. card::
        :link: /subsections/datasets/mouse_visium_brain
        :link-type: doc

        .. image:: images/dataset_page/visium_brain_image_summary.png

    .. card::
        :link: subsections/datasets/visium_prostate_integration
        :link-type: doc

        .. image:: images/dataset_page/visium_prostate_summary.png


**************
Single-Cell
**************

2D Datasets
==============

.. .. grid:: 3

    .. grid-item-card::

        .. image:: images/dataset_page/cortex_image_summary.png
            :target: ../../build/html/html/subsections/datasets/seqFISH_cortex.html

    .. grid-item-card::

        .. image:: images/dataset_page/cortex_image_summary.png
            :target: ../../build/html/html/subsections/datasets/seqFISH_cortex.html

    .. grid-item-card::

        .. image:: images/dataset_page/osmFISH_SS_cortex_image_summary.png
            :target: ../../build/html/subsections/datasets/osmFISH_mouse_SS_cortex.html

.. card-carousel:: 3

    .. card::
        :link: subsections/datasets/mini_seqFISH
        :link-type: doc

        .. image:: images/dataset_page/mini_seqFISH.png

    .. card::
        :link: subsections/datasets/seqFISH_cortex
        :link-type: doc

        .. image:: images/dataset_page/cortex_image_summary.png

    .. card::
        :link: subsections/datasets/osmFISH_mouse_SS_cortex
        :link-type: doc

        .. image:: images/dataset_page/osmFISH_SS_cortex_image_summary.png

3D Datasets
================
.. .. grid:: 3

    .. grid-item-card::

        .. image:: images/dataset_page/merFISH_hypoth_image_summary.png
            :target: ../../build/html/html/subsections/datasets/merFISH_hypot_preopt_region.html



.. card-carousel:: 3

    .. card::
        :link: /subsections/datasets/merFISH_hypot_preopt_region
        :link-type: doc

        .. image:: images/dataset_page/merFISH_hypoth_image_summary.png

**********************
Subcellular
**********************

.. card-carousel:: 3

    .. card::
        :link: subsections/datasets/vizgen_mouse_brain
        :link-type: doc

        .. image:: images/dataset_page/vizgen_brain_summary.png

    .. card::
        :link: subsections/datasets/resolve_bc_210928
        :link-type: doc

        .. image:: images/dataset_page/resolve_bioscience_cancer_summary.png

    .. card::
        :link: subsections/datasets/Nanostring_Lung12_jan26_21
        :link-type: doc

        .. image:: images/dataset_page/nanostring_overview_icon.png

**********************
Protein Multiplexing
**********************

.. card-carousel:: 3

    .. card::
        :link: subsections/datasets/mouse_CODEX_spleen
        :link-type: doc

        .. image:: images/dataset_page/CODEX_spleen_image_summary.png


*****************************
Single Cell RNA Sequencing
*****************************

.. card-carousel:: 3

    .. card::
        :link: subsections/datasets/singlecell_prostate_standard
        :link-type: doc

        .. image:: images/dataset_page/SC_RNAseq_standard.png

    .. card::
        :link: subsections/datasets/singlecell_prostate_integration
        :link-type: doc

        .. image:: images/dataset_page/SC_RNAseq_integration.png


*****************************
Other Technologies
*****************************

.. .. grid:: 3

    .. grid-item-card::

        .. image:: images/dataset_page/coming_soon_summary.png
            :target: ../../build/html/html/subsections/datasets/mouse_visium_kidney.html

.. card-carousel:: 3

    .. card::
        :link: /subsections/datasets/other_technologies_coming_soon
        :link-type: doc

        .. image:: images/dataset_page/coming_soon_summary.png
