=============================
A history of markup languages
=============================

By Tibs / Tony Ibbs, for PyConUK 2017

.. note:: This is the "paper" that is equivalent to the slideshow. It may or
   may not remainng a separate document.

.. For the moment, we represent TeX and LaTeX as simple text, but I might
   change that in the future

.. |TeX| replace:: TeX

.. |LaTeX| replace:: LaTeX

Introduction
============

"Markup languages" as described here are to be taken as a means of marking up
plain text so that it can be used as the source for a generated output that is
represented in a different (often more complex) manner.

Perhaps calling this a history is a mistake, and it should more accurately be
called an opinionated overview. Yet the intent is to give an overview that
explains a rationale for how markup languages are.

.. note:: Indeed, this is a summary of some of the more obvious bits of the
   history of document markup. It's the sort of stuff that one can find with a
   little bit of memory and some googling. That means that there is doubtless
   interesting stuff I've missed, and there is also bound to be *exciting*
   work going on **right now** that is not mentioned anywhere here - for
   instance, I think Pollen_ looks quite interesting.

.. _Pollen: http://docs.racket-lang.org/pollen/

Why we markup
=============
We've always added markup to text.

When writing by hand, we underline to indicate emphasis.

Typewritten manuscripts would similarly use underlining (of various sorts) to
indicate titles, emphasis, and so on.

Scripts use various abbreviations and conventions to distinguish dialogue,
effects and stage arrangements.

We mark text up in two, overlapping, manners.

The first is to annotate semantics - to give more information about the thing
being marked up. For instance, there are strong conventions on how book titles
are shown in bibliographies, in contrast to articles or shorter works.
Similarly, early computer languages would mark keywords by using upper case,
or by surrounding them by quotes.

Semantic markup techniques are used when one wants to be able to analyse the
text, to mine its information. These have had much success in big industry and
in the military.

The second is in many ways a simpler derivative, and is primarily marking up
to determine presentation - although that presentation may be as high level as
"this is a title" or "this is emphasised".

Such presentational markup techniques are much more about letting the author
write a text without regard to the mechanism by which it will actually be
represented to the reader - so, for instance, in creating man pages, articles
like this, or books of mathematics.

.. note:: Interestingly, almost all of the markup formats I'm going to discuss
   are still in use today.

Things I'm ignoring
===================
* Music
* Mathematics
* Pictures/diagrams/graphs
* Bibliographies and indices
* All sorts of other things

Basically anything that isn't just a text document.

Links and timelines
===================

http://www.math.utah.edu/~beebe/talks/2003/tug2003/tug2003-keynote.pdf has a
very nice timeline. Items marked [T] are from it.

* 1964 TYPSET and RUNOFF https://en.wikipedia.org/wiki/TYPSET_and_RUNOFF
* 1967 William Tunincliffe: the separation of the information content of
  documents from their format - Goldfarb credits him with starting the generic
  coding movement (i.e., the idea of using descriptive tags like
  "heading" rather than "format-17") with this presentation given at a meeting of the
  Canadian Government Printing Office in September 1967
* 1969 GML (Charles Goldfarb, Edward Mosher, Raymond Lorie) at IBM
* [T] "1970s" roff, script, runoff, document
* [T] 1976 nroff and troff (J. Ossanna)
* [T] 1978 bib and refer
* [T] 1977/1978 |TeX| and Metafont ("classic" version, written in SAIL)
* [T] 1978-1980 Scribe (B. Reid) https://en.wikipedia.org/wiki/Scribe_(markup_language)
* [T] 1982 |TeX| and Metafont in WEB/Pascal
* [T] 1983-1985 |LaTeX| (L. Lamport)
* 1984 Postscript (https://en.wikipedia.org/wiki/PostScript has 1982-1984)
* 1986 ISO standard SGML (although the first working draft was in 1980)
* 1987 TEI 
* 1991 Time Berners-Lee wrote "HTML Tags" document, proposing what was
  essentially HTML, built on SGML
* [T] 1989-1991 HTML and HTTP (T. Berners-Lee)
* [T] 1993 PDF (Adobe Systems)
* 1991 setext, Ian Feldman, for use in the TidBITS electronic newsletter
* 1991 Docbook
* 1994/1995 WikiWikiWeb, the first wiki, Ward Cunningham
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

or:

* 1964 TYPSET and RUNOFF
* 1969 GML
* 1970s roff, runoff
* 1976 nroff and troff
* 1977/1978 |TeX| and Metafont
* 1980 Scribe
* 1983-1985 |LaTeX|
* 1984 Postscript
* 1986 SGML
* 1987 TEI
* 1989-1991 HTML
* 1991 setext
* 1991 Docbook
* 1994/1995 WikiWikiWeb
* 1994 Perl 5.000 and pod
* 1996 StructuredText
* 1997 XML
* 2000-2002 reStructuredText
* 2002 AsciiDoc
* 2004 markdown



.. vim: set filetype=rst tabstop=8 softtabstop=2 shiftwidth=2 expandtab:
