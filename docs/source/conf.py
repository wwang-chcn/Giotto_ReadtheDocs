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
import furo
# import pydata_sphinx_theme
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
"sphinx.ext.viewcode"
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
github_username = "drieslab" 

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
# html_theme = "pydata_sphinx_theme"
html_theme = "furo"
html_logo = "images/GiottoLogo.png"
html_favicon = "images/GiottoLogo_favicon.svg"
html_sourcelink_suffix = ""

html_css_files = [
      "https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/fontawesome.min.css",
      "https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/solid.min.css",
      "https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/brands.min.css",
]

html_theme_options = {
    "sidebar_hide_name": True,
    "github_url": "https://github.com/drieslab/Giotto/tree/suite",
    #'display_version': True,
    # "show_toc_level": 1,
    'collapse_navigation': False,
    # 'sticky_navigation': True,
    # "use_edit_page_button": False,
    "logo": {
        "text": "Giotto Suite",
        "image_dark": "images/GiottoLogo.png",
        "alt_text": "Giotto Suite",
    },
    "light_css_variables": {
        "color-brand-primary": "#7e69ad",
        "color-brand-content": "#ed1890",
    },
    "navigation_depth": 1,
#     "announcement": "<em>Important</em> announcement!",
    "top_of_page_button": "edit",
    "footer_icons": [
        {
            "name": "GitHub",
            "url": "https://github.com/drieslab/Giotto/tree/suite",
            "html": """
                <svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 16 16">
                    <path fill-rule="evenodd" d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.013 8.013 0 0 0 16 8c0-4.42-3.58-8-8-8z"></path>
                </svg>
            """,
            "class": "",
        },
    ],
}

# html_sidebars = { '**': ['search-field.html', 'globaltoc.html', 'edit-this-page.html'] }
# globaltoc.html = table of contents
# relations.html = prev/next page
# sourcelink.html = "This Page" and "show source"

# html_sidebars = {
#     "index": [
#         "search-field.html", 'globaltoc.html' 
#     ],
#     "gettingstarted": [
#         "search-field.html", 'globaltoc.html' 
#     ],
#     "documentation": [
#         "search-field.html", 
#     ],
#     "contribute": [
#         "search-field.html", 'globaltoc.html' 
#     ],
#     "datasets": [ #tutorials
#         "search-field.html", 'globaltoc.html' 
#     ],
#     "faq": [
#         "search-field.html", 'globaltoc.html' 
#     ],
#     "trygitto": [
#         "search-field.html", 
#         "globaltoc.html"
#     ],
#     "errorsfaqsandtips": [ 
#         "search-field.html", 'globaltoc.html' 
#     ],
#      "github_issues": [ 
#         "search-field.html", 'globaltoc.html' 
#     ]
# }

#html_sidebars = { '**': ["search-field.html"] }
# html_css_files = ["css/theme_edits.css"]
panels_add_fontawesome_latex = True
panels_add_bootstrap_css = True

# Toc Tree options
navtree_root_links = True
navtree_shift = False

def setup(app):
    app.add_css_file("css/theme_edits.css")
    app.add_stylesheet("css/custom.css")

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
