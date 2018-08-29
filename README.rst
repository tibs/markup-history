A history of markup languages
=============================

This is a slideshow originally produced for `PyCon UK 2017`_

This branch (writethedocs-prague-2018) is where I'm amending the slides for
presentation at `Write the Docs Prague 2018`_, and also making such other
improvements as I can't resist.

History
~~~~~~~
* The current version of the slides on master is as presented at `Write the Docs
  Cambridge`_ in `February 2018`_. This is meant to be about 40-45 minutes
  long.
  
  I also gave this version of the talk at work in May 2018.

* The version presented at `PyCon UK 2017`_ can be found at tag pycon-uk-2017_.
  You can see it on video_. This version was 30 minutes long.
* The earlier version given to CamPUG_ in `October 2017`_ can be found at tag
  campug-oct-2017_. It was about 45 minutes long.

The files
~~~~~~~~~
All sources are in reStructuredText_, and thus intended to be readable as
plain text.

* The sources for the slides are in `<markup-history.rst>`_ and
  `<markup-history-wide.rst>`_ (customised for 4x3 and 16x9 respectively,
  although they're actually the same bar some formatting).
* Notes per slide (for the presenter) are separated out into `<notes-per-slide.rst>`_.
* Extended notes (with links) are in `<markup-history-extended-notes.rst>`_.

(Note that github will present the ``.rst`` files in rendered form as HTML,
albeit using their own styling (which makes notes a bit odd). If you want
to see the original reStructuredText source, you have to click on the "Raw"
link at the top of the file's page.)

Since this version of the talk uses PDF slides, which I produce via pandoc_
and TeX_, I'm including the resultant PDF files in the repository. These
will not always be as up-to-date as the source files, so check their
timestamps.

* The 4x3 aspect ratio slides are `<markup-history-4x3.pdf>`_.
* The 16x9 aspect ratio slides are `<markup-history-16x9.pdf>`_.
* There is a PDF version of the notes per slide in `<notes-per-slide.pdf>`_.

Making the PDF and HTML files
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
For convenience, you can use the Makefile to create the PDF slides, create the
HTML version of the extended notes, and so on. For instance::

  $ make pdf

will make the PDF files.

For what the Makefile can do, use::

  $ make help

Requirements to build the documents:

* pandoc_ and TeX_ (on mac, BasicTeX should be enough)
* docutils_ (for reStructuredText_)

and an appropriate ``make`` program if you want to use the Makefile.

.. _`Write the Docs Prague 2018`: https://www.writethedocs.org/conf/prague/2018/
.. _`PyCon UK 2017`: http://2017.pyconuk.org/
.. _CamPUG: https://www.meetup.com/CamPUG/
.. _`write the docs cambridge`: https://www.meetup.com/Write-The-Docs-Cambridge/events/246750191/
.. _`February 2018`: https://www.meetup.com/Write-The-Docs-Cambridge/events/246750191/
.. _`October 2017`: https://www.meetup.com/CamPUG/events/tpcsxlywnbfb/
.. _video: https://www.youtube.com/watch?v=qQMXPXzrE_s
.. _campug-oct-2017: https://github.com/tibs/markup-history/tree/campug-oct-2017
.. _pycon-uk-2017: https://github.com/tibs/markup-history/tree/pycon-uk-2017
.. _pandoc: https://pandoc.org/
.. _docutils: http://docutils.sourceforge.net/
.. _reStructuredText: http://docutils.sourceforge.net/rst.html
.. _TeX: https://www.ctan.org/starter

--------

  |cc-attr-sharealike|

  This slideshow and its related files are released under a `Creative Commons
  Attribution-ShareAlike 4.0 International License`_.

.. |cc-attr-sharealike| image:: cc-attribution-sharealike-88x31.png
   :alt: CC-Attribution-ShareAlike image

.. _`Creative Commons Attribution-ShareAlike 4.0 International License`: http://creativecommons.org/licenses/by-sa/4.0/

.. vim: set filetype=rst tabstop=8 softtabstop=2 shiftwidth=2 expandtab:
