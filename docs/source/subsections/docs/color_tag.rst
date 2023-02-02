Colorize print text
-------------------

Description
~~~~~~~~~~~

Colorize print text

Usage
~~~~~

::

   color_tag()

   use_color_text()

   ansi_colors()

   is_emacs_with_color()

   emacs_version()

Details
~~~~~~~

supported colors checking is modified from cli
`aab-num-ansi-colors.R <https://github.com/r-lib/cli/blob/HEAD/R/num-ansi-colors.R>`__

Functions
~~~~~~~~~

-  ``use_color_text()``: Determine if system should print color

-  ``ansi_colors()``: Determine if system can print at least 8 colors

-  ``is_emacs_with_color()``: Determine if emacs can print color

-  ``emacs_version()``: Determine emacs version
