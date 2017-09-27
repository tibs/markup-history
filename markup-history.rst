.. title: A history of markup languages

----

A history of markup languages
=============================

By Tibs / Tony Ibbs, for PyConUK 2017

Written using reStructuredText_.  Presented using hovercraft_.

.. _reStructuredText: http://docutils.sourceforge.net/docs/ref/rst/restructuredtext.html
.. _hovercraft: https://github.com/regebro/hovercraft


.. |TeX| replace:: TeX

.. |LaTeX| replace:: LaTeX

----

Timeline
--------

* 1964 TYPSET and RUNOFF https://en.wikipedia.org/wiki/TYPSET_and_RUNOFF
* 1967 William Tuncliffe: the separation of the information content of
  documents from their format
* 1969 GML (Charles Goldfarb, Edward Mosher, Raymond Lorie) at IBM
* [T] "1970s" roff, script, runoff, document
* [T] 1976 nroff and troff (J. Ossanna)
* [T] 1978 bib and refer
* [T] 1977/1978 |TeX| and Metafont ("classic" version, written in SAIL)
* [T] 1978-1980 Scribe (B. Reid) https://en.wikipedia.org/wiki/Scribe_(markup_language)
* [T] 1982 |TeX| and Metafont in Pascal
* [T] 1983-1985 |LaTeX| (L. Lamport)
* 1984 Postscript (https://en.wikipedia.org/wiki/PostScript has 1982-1984)
* 1986 ISO standard SGML (although the first working draft was in 1980)
* 1987 TEI
* 1991 Time Berners-Lee wrote "HTML Tags" document, proposing what was
  essentially HTML, built on SGML
* [T] 1989-1991 HTML and HTTP (T. Berners-Lee)
* [T] 1993 PDF (Adobe Systems)
* 1991 setext Ian Feldman, for use in the TidBITS electronic newsletter
* 1991 Docbook
* 1994/1995 WikiWikiWeb, the first wiki Ward Cunningham
* 1994 Perl 5.000 introduces pod (http://history.perl.org/PerlTimeline.html)
* 1995 Java appears, and thus its use of (some parts of) HTML in its javadoc
  (https://en.wikipedia.org/wiki/Javadoc)
* 1996 StructuredText (Jim Fulton, Zope Corporation / Digital Creations)
* 1997 XML
* 2000 Digital Creations began development of StructuredTextNG
* 2000 First draft of reStructuredText spec posted to Doc-Utils SIG
* 2001-2002 reStructuredText and Docutils developed fully
* 2002 PEP 287 "reStructuredText Standard Docstring Format"
* 2002 AsciiDoc
* 2004 markdown John Gruber and Aaron Swartz
* 2013 Asciidoctor

----

Categories of markup
--------------------

...

----

RUNOFF
------

Presentational. 1964 and descendants on into the 1980s (and perhaps beyond)

::

  .LINE LENGTH 60
  .LEFT MARGIN 0
  .PARAGRAPH 5
  Call us on our toll free number

  .CENTER
  1-800-555-5555

  and we will respond as soon as convenient.

.. note:: One of the first markups - not very capable (by modern standards) in
   its first incarnation, but clearly the ancestor of later forms of RUNOFF,
   and I used DSR (Digital Standard Runoff) in the 1980s.

   The original documentation suggests the original had the basics for doing
   right-justification, centering and single/double spacing, and perhaps not
   much more - although, of course, what it provided was doubtless useful.

   Commands starting with a dot in the first column, and able to be
   abbreviated right from the beginning.

   This makes good sense, as one doesn't normally start any English sequence
   with a dot.

----

Digital Standard Runnoff, using abbreviated forms

::

    .hl1This is a title

    This is the first paragraph.
    .ls
    .le; This is a list element.
    .le; This is another list element.
    .els

----

GML and SGML
------------

Semantic. Meta-description. 1969 (GML), 1986 (SGML)

A mechanism for *describing* markup languages. Use of the DTD.

----

roff, nroff, troff, groff
-------------------------

Presentation. 1970s and onwards, and still going strong today.

Part of a:w
n example (fake) man page::

  .TH CORRUPT 1
  .SH NAME
  corrupt \- modify files by randomly changing bits
  .SH SYNOPSIS
  .B corrupt
  [\fB\-n\fR \fIBITS\fR]
  [\fB\-\-bits\fR \fIBITS\fR]
  .IR file ...
  .SH DESCRIPTION
  .B corrupt
  modifies files by toggling a randomly chosen bit.
  .SH OPTIONS
  .TP
  .BR \-n ", " \-\-bits =\fIBITS\fR
  Set the number of bits to modify.  Default is one bit.

.. note:: Again, keywords starting with a dot in the first column, but the
   abbreviation as the original (I think?).

   Example taken from Lars Wirzenius' `Writing manual pages`_

   .TH = title, .SH = sub-heading, .B = bold, other font usages (e.g., normal
   font and underlining) are indicated by the \\f sequences.

.. _`Writing manual pages`: https://liw.fi/manpages/,

----

|TeX|
-----

Presentation, and programmable. 1977 and onwards, and still going strong
today.

Driven by the need to guarantee accurate typesetting of mathematics, but led
to new mechanisms for paragraph layout, and an important landmark in literate
programming.

::

  \name{Name Redacted} wrote:

  \beginletter
  Thoughts on ``Why I like children's books'':

  \beginlist

  \item{\blob} They aren't afraid to show a sense of wonder.

  \item{\blob} They aren't `duty bound' to include love interest for the sake of
  it.

  \item{\blob} They are rarely cynical, rarely bitter---but the best do not avoid
  tragedy and truth.

  \item{\blob} They are willing to teach the simple lessons of being human---which
  adult books so often scorn, but which we all need to learn and relearn.

  \endlist

.. note:: In serious use of |TeX|, one starts by defining lots of useful
   commands - although `the TeXbook`_ has many useful ideas one can copy.

.. _`The TeXbook`: http://www.ctex.org/documents/shredder/src/texbook.pdf

----

|LaTeX|
-------

::

  \begin{center}
  \rule{5in}{0.1mm}
  \end{center}

  \section*{Captain Competent strikes again}

  The superhero is a familiar concept in comics, science fiction and many other
  fields. However, I am more interested in what might be called `the competent
  hero'. This is a subtler form of protagonist---a person who has attained
  {\em competence} in their daily life.

.. note:: I used to write plain |TeX|, but most people actually use |LaTeX|,
   which dates from about 1983/1984, or one of the other systems written in
   |TeX|.

----

Postscript
----------

Presentation, and programmable. Not really intended to be written by people.
1984 and onwards, and still in use today (and, of course, also used in PDF)

----

TEI
---

Semantic. 1987. Still going strong and in use today.

----

HTML
----

Presentaton, still going strong today (although rather altered). 1991 and
onwards.


----

setext
------

Presentation. Lightweight. Partly a reaction to SGML. Clearly influential on
all of the succeeding lightweight markups. 1991

----

Docbook
-------

Semantic. 1991 and onwards. Still going today.

----

POD
---

Perl's "Plain Old Documentation". Clearly influenced by ... and ...

1994

::

  =pod

  =head1 DESCRIPTION

  This is not I<really> representative of POD usage.

  =over 2

  =item This is a list item.

  =item This is another list item.

  =back

  =cut

.. note:: An example of markup to a specific purpose, and clearly very
   successful.

   Note that the blank lines are required around the POD commands.

   I don't think you can do multi-paragraph list items. And, of course, the
   POD definitions contains ambuguities, although how to handle some of them
   is explained.


----

StructuredText
--------------

Presentation. Lightweight. 1996. Ancestral to...

----

reStructuredText
----------------

Presentation. Lightweight. 2000 and beyond.

Now used for Python documentation, Linux, and others.

-----

Asciidoc
--------

Presentation. Lightweight. 2002. Aimed specifically as a lightweight way of
producing docbook.

----

markdown
--------

Presentation. Lightweight. 200Presentation. Lightweight. 2002. Aimed
specifically as a lightweight way of producing docbook.4

----

Fin
---

Written using reStructuredText_.  Presented using hovercraft_.

Source and a longer article at https://github.com/tibs/markup-history

.. vim: set filetype=rst tabstop=8 softtabstop=2 shiftwidth=2 expandtab:
