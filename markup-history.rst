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


----

RUNOFF
------

Presentational. 1964 and descendants on into the 1980s (and perhaps beyond)

One of the first markups - not very capable (by modern standards) in its first
incarnation, but clearly the ancestor of later forms of RUNOFF, and I used DSR
(Digital Standard Runoff) in the 1980s.

Commands starting with a dot in the first column, and able to be abbreviated
right from the beginning.

This makes good sense, as one doesn't normally start any English sequence with
a dot.

----

GML and SGML
------------

Semantic. Meta-description. 1969 (GML), 1986 (SGML)

A mechanism for *describing* markup languages. Use of the DTD.

----

roff, nroff, troff
------------------

Presentation. 1970s and onwards, and still going strong today.

Again, keywords starting with a dot in the first column, but the abbreviation
as the original (I think?).

----

|TeX|
-----

Presentation, and programmable. 1977 and onwards, and still going strong
today.

Driven by the need to guarantee accurate typesetting of mathematics, but led
to new mechanisms for paragraph layout, and an important landmark in literate
programming.



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

An example of markup to a specific purpose, and clearly very successful.


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
