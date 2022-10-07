# Configuration file for the Sphinx documentation builder.
#
# This file only contains a selection of the most common options. For a full
# list see the documentation:
# https://www.sphinx-doc.org/en/master/usage/configuration.html

# -- Path setup --------------------------------------------------------------

# If extensions (or modules to document with autodoc) are in another directory,
# add these directories to sys.path here. If the directory is relative to the
# documentation root, use os.path.abspath to make it absolute, like shown here.

import os
import sys
# import sphinx_rtd_theme

# sys.path.insert(0, os.path.abspath('.'))


# -- Project information -----------------------------------------------------

project = 'Giotto Suite'
copyright = '2022, Ruben Dries and Guo-Cheng Yuan'
author = 'Developed by labs of Ruben Dries and Guo-Cheng Yuan.'

# The full version, including alpha/beta/rc tags
release = '1.1.0'


# -- General configuration ---------------------------------------------------

# Add any Sphinx extension module names here, as strings. They can be
# extensions coming with Sphinx (named 'sphinx.ext.*') or your custom
# ones.



master_dox = 'index'
extensions = [
#'sphinx_rtd_theme', #added to fix bullet-point issue
'sphinx.ext.autosectionlabel', # may cause duplicate label warnings
'sphinx.ext.autodoc',
'sphinx_design',
'sphinx_copybutton',
'sphinx_toolbox', 
'sphinx_toolbox.shields',
'sphinx_toolbox.github',
"sphinx.ext.autosummary",
"sphinx.ext.todo",
"sphinx.ext.viewcode",
#'sphinx_rtd_dark_mode'
#'sphinx_last_updated_by_git', #fatal error on readthedocs
#'recommonmark',
#'m2r2', -- moved to requirements.txt
#'sphinxcontrib.images'
#'myst_parser' #myst_parser caused a fatal error
#'sphinxcontrib.spelling' #spell checker fatal error
]

#Added for m2r2 extension
source_suffix = ['.rst', '.md']

# Configuration for sphinx_toolbox
github_repository = "Giotto"
github_username = "RubD" 

# Add any paths that contain templates here, relative to this directory.
templates_path = ['_templates']

# List of patterns, relative to source directory, that match files and
# directories to ignore when looking for source files.
# This pattern also affects html_static_path and html_extra_path.

suppress_warnings = [
#'Unknown directive type dropdown', 
'autosectionlabel.*',
'epub.duplicated_toc_entry']

#autosectionlabel_prefix_document = True #caused many warnings 
#autosectionlabel_maxdepth = 1 #caused many warnings

# -- Options for HTML output -------------------------------------------------

# The theme to use for HTML and HTML Help pages.  See the documentation for
# a list of builtin themes.

# Add any paths that contain custom static files (such as style sheets) here,
# relative to this directory. They are copied after the builtin static files,
# so a file named "default.css" will overwrite the builtin "default.css".
#html_theme = "sphinx_rtd_theme"
html_theme = "pydata_sphinx_theme"
#html_theme_path = [sphinx_rtd_theme.get_html_theme_path()]
#html_static_path = ["_static"]
html_logo = "images/GiottoLogo.png"

html_theme_options = {
    "github_url": "https://github.com/RubD/Giotto",
    'display_version': True,
    "show_toc_level": 1,
    #Toc Tree Options
    'collapse_navigation': True,
    'sticky_navigation': True,
    "use_edit_page_button": False,
    "logo": {
        "text": "Giotto Suite",
        "alt_text": "Giotto Suite",
    }
}

html_sidebars = { '**': ['globaltoc.html', 'relations.html', 'sourcelink.html', 'searchbox.html'] }
html_css_files = ["css/theme_edits.css"]
panels_add_fontawesome_latex = True
panels_add_bootstrap_css = True

# Toc Tree options
navtree_root_links = True
navtree_shift = False

def setup(app):
    app.add_css_file("css/theme_edits.css")

#Link badges
def get_badge_inputs(text, cls: str = ""):
    return text, cls.split()

def get_link_badge_inputs(link, text=None, type="link", cls: str = "", tooltip=None):
    return link, text or link, type, cls.split(), tooltip

#Copy clipboard image 
#To use a different image for your copy buttons, do the following:
#Place the image in the _static/ folder of your site.
#Set the copybutton_image_path variable in your conf.py to be the path to your image file, relative to _static/.
#copybutton_image_path = "_static/AdditionalImages/copyclipboard.png"

# EXCLUDE DOCUMENTS #
exclude_patterns = []
