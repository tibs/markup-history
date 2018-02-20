A history of markup languages
=============================

A slideshow originally produced for `PyConUK 2017`_

.. _`PyConUK 2017`: http://2017.pyconuk.org/
.. _CamPUG: https://www.meetup.com/CamPUG/
.. _`at write the docs cambridge`: https://www.meetup.com/Write-The-Docs-Cambridge/events/246750191/
.. _pandoc: https://pandoc.org/
.. _docutils: http://docutils.sourceforge.net/
.. _reStructuredText: http://docutils.sourceforge.net/rst.html
.. _TeX: https://www.ctan.org/starter

* The current version of the slides is as (to be) presented `at Write the Docs
  Cambridge`_ in February 2018.
* The version presented at `PyConUK 2017`_ can be found at tag
  https://github.com/tibs/markup-history/tree/pycon-uk-2017
* The earlier version given to CamPUG_ can be found at tag
  https://github.com/tibs/markup-history/tree/campug-oct-2017

The slides are in `<markup-history.rst>`_. Notes per slide (for the presenter)
are separated out into `<notes-per-slide.rst>`_. Extended notes (with links) are
in `<markup-history-extended-notes.rst>`_.

(Because this version of the talk is using PDF slides, I shall aim to put the
PDF files up as well, as generating them is non-trivial.)

Making the PDF and HTML files
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
For convenience, you can use the Makefile to create the PDF slides, create the
HTML version of the talk, and so on. For instance::

  $ make slides

will make the PDF files.

For what the Makefile can do, use::

  $ make help

Requirements to build the documents:

* pandoc_ and TeX_ (on mac, BasicTeX should be enough)
* docutils_ (for reStructuredText_)

and an appropriate ``make`` program if you want to use the Makefile.

--------

  |cc-attr-sharealike|

  This slideshow and its related files are released under a `Creative Commons
  Attribution-ShareAlike 4.0 International License`_.

.. |cc-attr-sharealike| image:: cc-attribution-sharealike-88x31.png
   :alt: CC-Attribution-ShareAlike image

.. _`Creative Commons Attribution-ShareAlike 4.0 International License`: http://creativecommons.org/licenses/by-sa/4.0/

.. vim: set filetype=rst tabstop=8 softtabstop=2 shiftwidth=2 expandtab:
