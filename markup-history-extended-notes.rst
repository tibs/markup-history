=============================
A history of markup languages
=============================

By Tibs / Tony Ibbs

.. note:: These are the extended notes to go with the slideshow, together
   with links which I hope will be useful, and perhaps act as a start on
   finding out more about markup languages.

.. We can represent TeX and LaTeX as simple text:

.. |TeX| replace:: TeX

.. |LaTeX| replace:: LaTeX

.. contents::

Introduction
============

We've always added markup to text.

When writing by hand, we underline to indicate emphasis.

Typewritten manuscripts would similarly use underlining (of various sorts) to
indicate titles, emphasis, and so on.

Play scripts use various abbreviations and conventions to distinguish dialogue,
effects and stage arrangements.

This "history" (or "opinionated overview") will hopefully serve as a starting
point for finding out more about markup languages, why they exist and what a
wide range of possibilities they represent.

I'm taking "markup language" to mean a way of marking up plain text so it can
be turned into something more interesting (for instance, output to a
typesetter), or so it can be analysed more easily.

Interestingly, almost all of the markup formats I'm going to discuss are still
in use today.

.. note:: Basically, these notes are a summary of some of the more obvious
   bits of the history of document markup. It's the sort of stuff that one can
   find with a little bit of memory and some googling. That means that there
   is doubtless interesting stuff I've missed, and there is also bound to be
   *exciting* work going on **right now** that is not mentioned anywhere here
   - for instance, I think Pollen_ looks quite interesting.

.. _Pollen: http://docs.racket-lang.org/pollen/

Types of markup
===============

It is common to distiguish two main ways of marking up text:

* Semantic - what it means
* Presentational - how it should be shown

Semantic markup is intended to give more information about the meaning of the
text. This may be an end in and of itself, for reasons as disparate as
allowing extraction of information about aeroplane parts or determining the
parts of speech in a corpus.

Presentational markup indicates how the text should be presented, for instance
as a man page, or printed using a typesetter.

  (Even at the beginning of our timeline, people had access to typesetters, and
  wanted to drive them.)

These two aren't necessarily entirely distinct, though: one of the important
early realisations was that presentational markup benefits from some degree of
semantics. So, for instance, it is more useful to say "heading", than
"bold font X at size Y".

We can also separate out two other types of markup

* Lightweight markup us designed to be simple to type, and hopefully easier to
  read.

* Programmable markup (wikipedia calls this "procedural") is actually merging
  a programming language with the text. The best know of these is |TeX|.

Things I'm ignoring
===================

I'm ignoring anything that isn't just text, so:

* Music
* Mathematics
* Pictures/diagrams/graphs
* Bibliographies and indices
* All sorts of other things

Further, there are many more markup formats than I discuss here (for instance,
and perhaps unsurprisingly, people have been inventing "easier" ways to write
HTML documents since the early days of HTML).

My own experience
=================
I believe I first used a markup language when writing up my final year
Computer Science project, in 1981. This would have been a Cambridge written
format that ran on the local mainframe.

Later on, at work, I came across DEC's RUNOFF, which became Digital Standard
Runoff (DSR). In the 1980s I wrote a partial bibliography of Joan Aiken using
DSR, but unfortunately no longer have the original sources, as I converted it
to HTML.

HTML I wrote almost from its inception - back then it was quite common to
write HTML by hand (it was a much simpler thing than it is today).

I first wrote |TeX| at work as well, and introduced the use of |LaTeX| for our
in-house API documentation. Personally, I preferred |TeX| to |LaTeX|, but
realise I was in the minority.

When Python converted its documentation from |LaTeX|, I originally thought
this was a bad idea, as clearly (!) anyone could learn |LaTeX| (which was
originally used, before the adoption of reStructuredText). It was explained to
me, though, that the problem wasn't that people couldn't learn |LaTeX|, it was
that they'd look at it and say "I don't *want* to learn that, I can't see why
I should". Which made me change my mind.

Nowadays, reStructuredText is my "how to write text" format for almost all
my own purposes, and like everyone I can also write markdown when necessary
(although not with any great understanding of its edge cases).

A timeline
==========

* 1964 TYPSET and RUNOFF
* 1967 William Tunincliffe: "The separation of the information content of
  documents from their format". Goldfarb credits him with starting the generic
  coding movement (i.e., the idea of using descriptive tags like "heading"
  rather than "format-17") with this presentation given at a meeting of the
  Canadian Government Printing Office in September 1967
* 1969 GML (Goldfarb, Mosher, Lorie) at IBM
* "1970s" roff, script, runoff, document
* 1976 nroff and troff (Ossanna)
* 1978 bib and refer
* 1977/1978 |TeX| and Metafont ("classic" version, written in SAIL, Knuth and others)
* 1978-1980 Scribe (Reid)
* 1982 |TeX| and Metafont in WEB/Pascal
* 1983-1985 |LaTeX| (Lamport)
* 1984 Postscript (`Wikipedia on PostScript`_ has 1982-1984)
* 1986 ISO standard SGML (although the first working draft was in 1980)
* 1987 TEI 
* 1991 Tim Berners-Lee wrote the "HTML Tags" document, proposing what was
  essentially HTML, built on SGML
* 1989-1991 HTML and HTTP (Berners-Lee)
* 1991 setext, (Feldman) for use in the TidBITS electronic newsletter
* 1991 Docbook
* 1993 PDF (Adobe Systems)
* 1994/1995 WikiWikiWeb (Cunningham) the first wiki
* 1994 Perl 5.000 introduces POD
* 1995 Java appears, and with it javadoc
* 1996 StructuredText (Fulton, Zope Corporation / Digital Creations)
* 1997 XML
* 2000 Digital Creations begins development of StructuredTextNG
* 2000 First draft of reStructuredText spec posted to Doc-Utils SIG (Goodger)
* 2001-2002 reStructuredText and Docutils
* 2001-2005 DITA
* 2002 PEP 287 "reStructuredText Standard Docstring Format"
* 2002 AsciiDoc (Rackham)
* 2004 markdown (Gruber and Swartz)
* 2013 Asciidoctor (Waldron and others)

Various sources were used in creating the timeline, but a special mention has
to go to `25 Years of |TeX| and METAFONT\: Looking Back and Looking
Forward`_, and of course to Wikipedia.

General
=======
These are some interesting general links.

* `Wikipedia on Markup Language`_ - In general, this is a good place to start.
  See the taxonomy of (three) types therein, and the history section.
* `Wikipedia List of document markup languages`_ - always fun to look through.
  Notice how several of the "Well-known document markup languages" are
  essentially HTML variants.
* `Charles Goldfarb — the Godfather of Markup Languages`_, Georgi Dalako,
  undated. A quick introduction to one of the important influences on this
  field.
* `Don Knuth's homepage`_, the homepage of Dona;d E. Knuth, Professor Emeritus
  at Stanford University. There are so many reasons to browse these pages.
* `An informal look into the history of digital typography`_, David Walden, 2016.
  This is a good introduction, starting with letter presses and moving on into
  the digital world. Read it for a look at where markup came from, and what it
  is driving.
* `From boiling lead and black art\: An essay on the history of mathematical typography`_,
  Eddie Smith, 2017, is a lovely article on mathematical typesetting, from the
  invention of the printing press to |TeX|.

.. _`Wikipedia on Markup Language`: https://en.wikipedia.org/wiki/Markup_language
.. _`Wikipedia List of document markup languages`: https://en.wikipedia.org/wiki/List_of_document_markup_languages
.. _`Charles Goldfarb — the Godfather of Markup Languages`: http://history-computer.com/Internet/Birth/Goldfarb.html
.. _`Don Knuth's homepage`: http://www-cs-faculty.stanford.edu/~knuth/
.. _`An informal look into the history of digital typography`: http://www.tug.org/tug2016/walden-digital.pdf
.. _`From boiling lead and black art\: An essay on the history of mathematical typography`: http://www.practicallyefficient.com/2017/10/13/from-boiling-lead-and-black-art.html

* `Wikipedia on docstrings`_. My memory is that Python docstrings were
  inspired by the existence of docstrings in Emacs Lisp. This wikipedia page
  gives examples from several different programming languages.
* `Docstring Convention: Python vs Emacs Lisp`_, Xah Lee, 2014. This compares
  the difference in how one is meant to write good dosctrings in the two
  different programming languages.

.. _`Wikipedia on docstrings`: https://en.wikipedia.org/wiki/Docstring
.. _`Docstring Convention: Python vs Emacs Lisp`: http://xahlee.info/comp/python_vs_elisp_docstring_convention.html

* `SGML and PDF--Why We Need Both`_, Bill Kasdorf, Volume 3, Issue 4: *Moving
  from Print to Electronic Publishing*, June, 1998. This essentially talks about the
  difference between semantic and presentational representation. I'm not sure
  that it would occur to anyone now-a-days to ask the question this article
  proposes, but the answer is definitely still valuable.
  
.. _`SGML and PDF--Why We Need Both`: https://quod.lib.umich.edu/j/jep/3336451.0003.406?view=text;rgn=main

RUNOFF and its descendants
==========================

:1964 RUNOFF: *Presentational*
:1970s \*roff: *Presentational*. Still in use.
:1990 groff: *Presentational*. Still in use.

RUNOFF
------
The original RUNOFF and TYPSET were written by Jerome H. Saltzer for CTSS_
(Compatible Time Sharing System). Between them, they provided simple text
layout and pagination, including right justification.

This example is (more or less) from the original TYPSET/RUNOFF documentation:

.. code:: roff

  .LINE LENGTH 60
  .LEFT MARGIN 0
  .PARAGRAPH 5
  Call us on our toll free number

  .CENTER
  1-800-555-5555

  and we will respond as soon as convenient.

Commands start with a dot in the first column - this makes sense as it's not
usual to start a line of English text with a dot.

Commands could be abbreviated, which would have been important with the
keyboards in use at the time. Inline commands can be used to shift the "case",
for instance in and out of bold case.

The following is an example of Digital Standard Runoff (DSR), showing that the
name had an enduring meaning. I used to use DSR on VMS in the 1980s/90s.

.. code:: roff

    .TITLE A simpler DSR example
    .CHAPTER This is a chapter

    This is the first paragraph.
    .LIST
    .LIST ELEMENT;This is a list element. We have *bold\* and &underline\&.
    .LIST ELEMENT;This is another list element. I like interrobangs ?%!
    .END LIST

Abbreviated forms are still available, e.g., ``.ls`` instead of
``.list``, and ``.le;`` instead of ``list element;``.

RUNOFF was ported to BCPL and Multics, and became the ancestor to roff and
thus, ultimately, all of the roff family.

The roffs
---------

roff started as a transliteration of the BCPL version of runoff, for UNIX,
around 1970.

The roff family are typically used with macro processors, allowing more domain
specific commands to be converted into the actual roff commands. This means
that the system as a whole can be regarded as essentially programmable,
even though the roff program itself is not.

The example given here (from Lars Wirzenius' `Writing manual pages`_)
is a (fake) man page, using the ``man`` macro package:

.. code:: roff

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

In this example, ``.TH`` = title, ``.SH`` = sub-heading, ``.B`` = bold, other
font usages (e.g., normal font and underlining) are indicated by the ``\f``
sequences.

Today, the dominant roff program is probably ``groff``, or GNU roff. Here is
an example of groff:

.. code:: roff

  ..INCLUDE  mission-statement-strings.mom
  .TITLE    "\*[Groff-Mission-Statement]
  .SUBTITLE "\*[2014]
  .INCLUDE  mission-statement-style.mom
  .PP
  As the most widely deployed implementation of troff in use today,
  groff holds an important place in the Unix universe.  Frequently
  and erroneously dismissed as a legacy program for formatting
  Unix manuals (manpages), groff is in fact a sophisticated system
  for producing high-quality typeset material, from business
  correspondence to complex, technical reports and plate-ready books.
  \*[BU3]With an impressive record for backward compatibility, it
  continues to evolve and play a leading role in the development of
  free typesetting software.

Interesting links:

* `Wikipedia on TYPSET and RUNOFF`_
* CTSS_ (the Compatible Time Sharing System) which is the machine on which the
  first RUNOFF ran.
* `Wikipedia on Runoff`_
* `Wikipedia on roff`_
* `Wikipedia on nroff`_ ("newer roff")
* `Wikipedia on troff`_ ("typesetter roff")
* `Wikipedia on groff`_ ("GNU troff")
* A repository of `Historical documents from classical RUNOFF and files using the RUNOFF language`_
* The `OpenVMS Digital Standard Runoff Reference Manual`_ from May 1993.
* The manpage ``ROFF(7)``: `roff - concepts and history
  of roff typesetting`_, part of the `groff`_ distribution. It has an overview
  of the history of the roffs, and a summary of how they work.
* `History of UNIX Manpages`_, Kristaps Dzonsons, 2011. The history of the
  UNIX manpage "based on source code, manuals, and first-hand accounts".
  Also traces the naming of programs RUNOFF through roff, SCRIPT, compose,
  roff (a different thing), nroff and so on.
* The Groff_ manual
* `Groff and mom\: an overview`_, Peter Schaffer, 2017
* Mom_, macros for GNU troff, Peter Schaffter. mom is a flexible typesetting
  and document formatting package that allows you to create high-quality
  Portable Document Format (.pdf) or PostScript (.ps) files. It is a macro set
  that sits on top of groff_.
* `Writing manual pages`_, Lars Wirzenius, 2016
* From `Unix history`_, `William Stewart`_, 1996-2014:V

    In the spring of 1971, the interest in Unix began to grow, so instead of
    writing a new text-processing system as originally proposed, Thompson and
    Ritchie translated the existing "roff" text formatter from the PDP-7 to the
    PDP-11 and made it available to the Patent department on their new Unix
    system. This practical success helped convince Bell Labs of the value of
    Unix, and shortly thereafter they bought the team one of the first, powerful
    PDP-11/45 minicomputers to continue their development. A series of
    progressively better "editions" of Unix were then released.

.. _`Wikipedia on TYPSET and RUNOFF`: https://en.wikipedia.org/wiki/TYPSET_and_RUNOFF
.. _CTSS: https://en.wikipedia.org/wiki/Compatible_Time-Sharing_System
.. _`Historical documents from classical RUNOFF and files using the RUNOFF language`: https://github.com/bwarken/RUNOFF_historical/
.. _`Wikipedia on Runoff`: https://en.wikipedia.org/wiki/Runoff_(program)
.. _`Wikipedia on roff`: https://en.wikipedia.org/wiki/Roff_(computer_program)
.. _`Wikipedia on nroff`: https://en.wikipedia.org/wiki/Nroff
.. _`Wikipedia on troff`: https://en.wikipedia.org/wiki/Troff
.. _`Wikipedia on groff`: https://en.wikipedia.org/wiki/Groff_(software)
.. _`roff - concepts and history of roff typesetting`: https://linux.die.net/man/7/roff
.. _`OpenVMS Digital Standard Runoff Reference Manual`: http://h20565.www2.hpe.com/hpsc/doc/public/display?docId=emr_na-c04623260  
.. _`Writing manual pages`: https://liw.fi/manpages/
.. _`History of UNIX Manpages`: http://manpages.bsd.lv/history.html
.. _Groff: http://www.gnu.org/software/groff/
.. _`Groff and mom\: an overview`: https://www.gnu.org/software/groff/groff-and-mom.pdf
.. _mom: http://www.schaffter.ca/mom/
.. _`Unix history`: https://www.livinginternet.com/i/iw_unix_dev.htm 
.. _`William Stewart`: http://williamstewart.com/

.. note:: Also, preceding RUNOFF, in 1963, there is `TJ-2`_:

      TJ-2 (Type Justifying Program) was published by Peter Samson in May 1963
      and is thought to be the first page layout program. ...  TJ-2 was
      succeeded by TYPSET and RUNOFF, a pair of complementary programs written
      in 1964 for the CTSS operating system. TYPSET and RUNOFF soon evolved
      into runoff for Multics, which was in turn ported to Unix in the 1970s as
      roff.

   -- from the wikipedia page

   .. _`TJ-2`: `Wikipedia on TJ-2`_
   .. _`Wikipedia on TJ-2`: https://en.wikipedia.org/wiki/TJ-2

GML and SGML and XML
====================

:1969 GML: *Semantic* and *meta*
:1986 SGML: *Semantic* and *meta* (DTDs)
:1997 XML: *Semantic* and *meta* (various schema languages)

GML
---

1969 GML

GML stood for Generalized Markup Language, but also for the initials of the
surnames of its inventors (Charles Goldfarb, Edward Mosher, Raymond Lorie).

It was intended to be a mechanism for *describing* markup languages, rather
than a markup language itself.

Here is an example of GML, from `The Roots of SGML -- A Personal
Recollection`_ by Charles F. Goldfarb. It uses the "starter set", implemented
using macros in IBM's Script_:

.. code::

  :h1.Chapter 1:  Introduction
  :p.GML supported hierarchical containers, such as
  :ol
  :li.Ordered lists (like this one),
  :li.Unordered lists, and
  :li.Definition lists
  :eol.
  as well as simple structures.
  :p.Markup minimization (later generalized and formalized in SGML),
  allowed the end-tags to be omitted for the "h1" and "p" elements.

SGML
----
SGML is an ISO standard: "ISO 8879:1986 Information processing – Text and
office systems – Standard Generalized Markup Language (SGML)". The `wikipedia
page on SGML`_ gives more information on the standard and its related
standards.

.. _`wikipedia page on SGML`: `Wikipedia on SGML`_

SGML uses DTDs (Document Type Definitions) to describe the set of
markup declarations that form a *document type* (e.g., SGML itself, XML,
HTML).

Shown is a DTD fragment for defining a simple list:

.. code:: DTD

  <!--      ELEMENT MIN CONTENT             >
  <!ELEMENT list    - - (item)+             >
  <!ELEMENT item    O O (#PCDATA, (list)*)  >

and an example of the list structure described:

.. code:: XML

  <list>
  <item>First item</item>
  <item>Second item</item>
  <item>Last item</item>
  </list>

.. note:: SGML (like GML before it) allows the definition of elements that
    were implicitly closed by another element - e.g., <li> and <p> in HTML.

    In our example::

        <!ELEMENT list - - (item)+ >

    * The element being defined is ``list``.
    * The two hyphens indicate that both the start tag ``<list>`` and the end tag
      ``</list>`` for this element are required.
    * The ``+`` means that there must be "at least one ``<item>`` element".

    In::

      <!ELEMENT item O O (#PCDATA, (list)*)  >

    * The two ``O`` ("oh", not "zero") characters mean that both the start and end
      tags can be omitted.
    * The end of the specification tells us that an ``item`` may contain
      ``PCDATA`` (text) or zero or more ``list`` elements.

Sensibly, SGML also came with a "starter set", drafted by Joan Smith and
Janet Vandore.

The following example of SGML, using that starter set, is transcribed from
Figure 3 of the paper named in the example. The ellipses are mine.

.. code:: XML

  <td> The Implication of SGML for the Preparation of Scientific Publications
  <au> Joan M. Smith
  <ad>
  <al> National Computing Centre, Oxford Road, Manchester M1 7ED
  <ab> The &SGML (SGML) is a draft international standard for publishing.
  ...
  <h1>Introduction
  <p> The official title of SGML, currently, is ISO/DIS 8879,
  <ci> Information Processing &end Text and Office Systems &end &SGML (SGML)
  </ci>. <ref> ISO/DIS 8879 <ci> Information Processing &end Text and Office
  Systems &end &SGML (SGML). ISO, Geneva (1985). </ref>
  ...
  <p>There are several points worthy of note here:
  <ul>
  <li> the normal publishing delay with ISO standards...
  ...
  </ul>

where:

  - ``<td>`` is the document title
  - ``<ad>`` is an address, <al> an address line
  - ``<ab>`` is the abstract
  - ``<ci>`` indicates a citation, which rendered as italics in the resulting paper.
  - ``<ref>`` marks up a Reference, collected for the section at the end of the document.
  - ``&SGML`` is an "entity reference" that expands to 'Standard Generalized
    Markup Language'. You may be familiar with entity references from things
    like ``&eacute;`` in HTML.
  - ``<li>`` and ``<p>`` are implicitly closed by following elements.

An SGML document must declares a DOCTYPE to say what DTD it is conforming to.
The following example should look very familiar:

.. code:: html

  <!DOCTYPE html>
  <html>
    <head>
      <title>This is a title</title>
    </head>
    <body>
      <p>Hello world!</p>
    </body>
  </html>

Interesting links:

* `Wikipedia on GML`_
* `Wikipedia on SCRIPT`_
* `Wikipedia on SGML`_
* `Wikipedia on Document Type Definition`_ (i.e., DTD)
* Use of GML (specifically, the starter set) is described by:

  * `GML Starter Set User's Guide`_, IBM 1980, 1991
  * `GML Starter Set Reference`_, IBM 1980, 1991

* `The Implications of SGML for the Preparation of Scientific Publications`_,
  Joan Smith, *The Computer Journal*, Volume 29, Issue 3, 1 January 1986,
  Pages 193-200. This is the paper from which my SGML example is taken.
* W3C_ `HTML 4.01 Specification`_, section 3 `On SGML and HTML`_
* `Guidelines for Writing SGML DTDs (Draft)`_, Sandra A. Mamrak, 1989.
* `The SGML History Niche`_, Charles F. Goldfarb, 2002/2003. Some personal
  recollections by Goldfarb, all of which are well worth reading.

.. _`The Roots of SGML -- A Personal Recollection`: http://www.sgmlsource.com/history/roots.htm
.. _`Wikipedia on GML`: https://en.wikipedia.org/wiki/IBM_Generalized_Markup_Language
.. _Script: `Wikipedia on SCRIPT`_
.. _`Wikipedia on SGML`: https://en.wikipedia.org/wiki/Standard_Generalized_Markup_Language
.. _`Wikipedia on Document Type Definition`: https://en.wikipedia.org/wiki/Document_type_definition
.. _`GML Starter Set User's Guide`: http://publibfp.boulder.ibm.com/cgi-bin/bookmgr/BOOKS/dsm04m00/CCONTENTS
.. _`GML Starter Set Reference`: http://publibfp.boulder.ibm.com/cgi-bin/bookmgr/BOOKS/dsm05m00/CCONTENTS
.. _`Wikipedia on SCRIPT`: https://en.wikipedia.org/wiki/SCRIPT_(markup)
.. _`The Implications of SGML for the Preparation of Scientific Publications`: https://academic.oup.com/comjnl/article-lookup/doi/10.1093/comjnl/29.3.193

.. _`The SGML History Niche`: http://www.sgmlsource.com/history/index.htm, six
   articles by Charles F. Goldfarb, 2002 (and earlier)

.. _W3C: https://www.w3.org/
.. _`HTML 4.01 Specification`: https://www.w3.org/TR/html4/cover.html
.. _`On SGML and HTML`: https://www.w3.org/TR/html4/intro/sgmltut.html
.. _`Guidelines for Writing SGML DTDs (Draft)`: http://www.tei-c.org/Vault/ML/mlw01.htm

XML
---

XML (Extensible Markup Language) was compiled by a working group of eleven
members, supported by a (roughly) 150-member Interest Group. It's
specification is managed by the W3C_.

Whilst XML is not itself of direct interest as a markup language, it is
important because it is *used* as the basis for many markup formats.

XML is a subset of SGML (wikipedia: "XML is an application profile of SGML").
In particular, it is much simpler than SGML, which makes parsers easier to
write. Many SGML based tools (TEI, Docbook, HTML itself) have generally moved
towards using XML rather than SGML in their specification.

There is no example for XML because there is no "starter set" for XML.

Interesting links:

* `Wikipedia on XML`_ is a good overview, and includes discussion of
  various schema and validation mechanisms.
* `XML Information`_  is a nested set of pages (I assume course notes).
  Constituent topics are "What is Markup?", "Schemas" and "Special Characters
  and Unicode". Author presumably Beck, undated.
* `Is there a difference between SGML DTDs and XML DTDs?`_ is from the "Schemas"
  section of the above.
* `XML People`_ is an article by Tim Bray, originally writing in 1998, and
  republished in 2008. It describes the genesis of XML and the people (and
  organisations) involved.

.. _`Wikipedia on XML`: https://en.wikipedia.org/wiki/XML
.. _`XML Information`: https://www.ncbi.nlm.nih.gov/staff/beck/xml/index.html
.. _`Is there a difference between SGML DTDs and XML DTDs?`: https://www.ncbi.nlm.nih.gov/staff/beck/xml/schemas/II-C.html
.. _`XML People`: http://www.tbray.org/ongoing/When/200x/2008/02/10/XML-People

|TeX| and |LaTeX|
=================

:1977/1978 |TeX|: *Presentational with semantic leanings*. Programmable. Still in use.
:1983 |LaTeX|: *Presentational*. Still in use.

|TeX|
-----

|TeX| was designed and mostly written by Donald Knuth, driven by the need to
guarantee accurate typesetting of mathematics.

Here is an example from a fanzine I used to edit (name redacted because I
don't know if they'd want it used in an example like this!):

.. code:: TeX

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

In serious use of |TeX|, one starts by defining lots of useful
commands - although `the TeXbook`_ has many useful ideas one can copy.

In this example, only the ``\item`` was predefined for me.

.. _`The TeXbook`: http://www.ctex.org/documents/shredder/src/texbook.pdf

|LaTeX|
-------

Most people don't write |TeX| itself, they use |LaTeX| (1984) or one of the
other markup languages written in |TeX|. |LaTeX| in particular is still
dominant in scientific and mathematical publishing.

Here is an example of |LaTeX|:

.. code:: TeX

   \beginsection
   A new section

   Paragraphs are separated by blank lines. `Quotation marks' differ. {\it
   Italics are done so}. Equations are important, and can be inline:
   $$|y - z| < \epsilon$$. Hyphen (-), ranges (1--4) and dashes (---) are all
   distinct.

   However, more people use systems {\it written} in \TeX, such as \LaTeX,
   because they provide ready-made support for most document elements.

   \bye

And an example from the first issue of the aforementioned fanzine (before I
switched from |LaTeX| back to |TeX|):

.. code:: TeX

  \begin{center}
  \rule{5in}{0.1mm}
  \end{center}

  \section*{Captain Competent strikes again}

  The superhero is a familiar concept in comics, science fiction and many other
  fields. However, I am more interested in what might be called `the competent
  hero'. This is a subtler form of protagonist---a person who has attained
  {\em competence} in their daily life.

* `25 Years of |TeX| and METAFONT\: Looking Back and Looking Forward`_:
  TUG’2003 Keynote Address, Nelson H. F. Beebe. Including sections on "What
  did |TeX| do right" and "What did |TeX| do wrong".
* `Wikipedia on SAIL`_
* `SAIL Tutorial`_, Nancy W. Smith, 1976

.. _`25 Years of |TeX| and METAFONT\: Looking Back and Looking Forward`: http://www.math.utah.edu/~beebe/talks/2003/tug2003/tug2003-keynote.pdf
.. _SAIL: `Wikipedia on SAIL`_
.. _`Wikipedia on SAIL`: https://en.wikipedia.org/wiki/SAIL_(programming_language)
.. _`SAIL Tutorial`: http://i.stanford.edu/pub/cstr/reports/cs/tr/76/575/CS-TR-76-575.pdf

The history
-----------

   Donald Knuth, a professor of computer science at Stanford University, was
   writing a projected seven-volume survey entitled The Art of Computer
   Programming. Volume 3 was published in 1973, composed with Monotype. By
   then, computer science had advanced to the point where a revised edition
   of volume 2 was in order but Monotype composition was no longer possible.  The galleys returned to Knuth by his publisher were photocomposed. Knuth
   was distressed: the results looked so awful that it discouraged him from
   wanting to write any more. But an opportunity presented itself in the
   form of the emerging digital output devices—images of letters could be
   constructed of zeros and ones. This was something that he, as a computer
   scientist, understood. Thus began the development of TeX.
  
 From `Communication of Mathematics with TeX`_, Barbara Beeton and Richard
 Palais, from "Visible Language" Volume 50 Issue 2, archived on the `Author
 Resource Center`_ page of the `American Mathematical Society` (AMS).

|TeX| (and Metafont) were originally written in SAIL_.  
In 1982, |TeX| was re-written in Pascal, using the WEB `literate programming`_
system.

.. _`literate programming`: `Wikipedia on literate programming`_

.. _`Communication of Mathematics with TeX`: http://www.ams.org/publications/authors/Communication_of_Mathematics_with_TEX.pdf
.. _`American Mathematical Society`: http://www.ams.org/home/page
.. _`Author Resource Center`: http://www.ams.org/publications/authors/authors

There are many interesting articles about |TeX| and its world, many from the
various |TeX| user group (TUGs).

Some interesting links:

* `Wikipedia on |TeX|`_
* `Wikipedia on WEB`_
* `Wikipedia on Literate programming`_
* `Wikipedia on Donald Knuth`_
* `Knuth's home page`_.  If you don't know about Knuth, it's worth following
  him up - he has done amazing things.

.. _`Wikipedia on |TeX|`: https://en.wikipedia.org/wiki/TeX
.. _`Wikipedia on WEB`: https://en.wikipedia.org/wiki/WEB
.. _`Wikipedia on Literate programming`: https://en.wikipedia.org/wiki/Literate_programming
.. _`Wikipedia on Donald Knuth`: https://en.wikipedia.org/wiki/Donald_Knuth
.. _`Knuth's home page`: http://www-cs-faculty.stanford.edu/~knuth/


* `An overview of |TeX|, its children and their friends...`_, Arno Trautman,
  2016
* `TeX family tree with timeline?`_, 2016, a question on https://tex.stackexchange.com
   
* `A Brief History of LaTeX`_, 1998, an email by 'I Find Karma' on the `FoRK Archive`_
* `How (La)TeX changed the face of Mathematics`_, an E-interview with Leslie
  Lamport, 2000
* `The (La)TeX project: A case study of open source software`, Alexandre Gaudeul, 2003
* `A brief history of TeX, volume II`_, Arthur Reutenauer, 2007. This is a
  successor article to `A Brief History of TeX`_, Philip Taylor 1995. Taylor's
  article also talks about Postscript, HTML, PDF and other matters.

.. _`An overview of |TeX|, its children and their friends...`: https://github.com/alt/tex-overview "An overview of |TeX|, its children
.. _`TeX family tree with timeline?`: https://tex.stackexchange.com/questions/42594/tex-family-tree-with-timeline
.. _`A Brief History of LaTeX`: http://www.xent.com/FoRK-archive/feb98/0307.html
.. _`FoRK Archive`: http://www.xent.com/FoRK-archive/
.. _`How (La)TeX changed the face of Mathematics`: https://www.microsoft.com/en-us/research/wp-content/uploads/2016/12/TeX-changed-the-face-of-Mathematics.pdf
 .. _`The (La)TeX project: A case study of open source software`: http://tug.org/TUGboat/tb24-1/gaudeul.pdf
.. _`A brief history of TeX, volume II`: http://www.tug.org/TUGboat/tb29-1/tb91reutenauer.pdf
.. _`A Brief History of TeX`: https://tug.org/TUGboat/tb17-4/tb53tayl.pdf


Choosing |TeX| or troff
=======================

.. _`TeX/troff/typesetting markups`: http://minnie.tuhs.org/pipermail/tuhs/2017-April/009638.html ::

`TeX/troff/typesetting markups`_ is an email conversation from 2017 comparing
use of |TeX| and troff::

  [TUHS] TeX/troff/typesetting markups - Re: SunOS 4 documentation
  Toby Thain toby at telegraphics.com.au
  Sun Apr 16 01:09:15 AEST 2017

      Previous message (by thread): [TUHS] TeX/troff/typesetting markups - Re: SunOS 4 documentation
      Next message (by thread): [TUHS] TeX/troff/typesetting markups - SunOS 4 documentation
      Messages sorted by: [ date ] [ thread ] [ subject ] [ author ]

  On 2017-04-15 10:23 AM, Michael Kerpan wrote:
  > Comparing documents produced by Heirloom troff and modern versions of
  > LaTeX, I just can't see a huge difference. The main thing TeX has going
  > for it is LyX, which makes composing documents a whole lot more
  > comfortable for folks raised on WYSIWYG. If a tool like that was
  > available for troff...

  I'm not only talking about the _output_. But my intention isn't to 
  denigrate troff but to show that they are completely different animals. 
  A glance through the TeXbook would confirm.

  TeX is a complete domain-specific language, page model, and runtime 
  environment (without even discussing its layered frameworks like LaTeX). 
  I admit it took me a few weeks or months of study back in the late 1980s 
  to understand this distinction; previously I had been using a 
  troff-level markup (perhaps even troff-inspired) on Mac called 
  "JustText", which generated PostScript of course.

  One _can_ typeset books in both troff and TeX, but that doesn't make 
  them at all equivalent. The process and possibilities are different. For 
  example, that simple task of producing two different output formats from 
  the same manuscript, that I mentioned upthread, is made possible by TeX 
  macros. But the sophistication of its page model is also required for 
  any nontrivial layout, table, diagram, math, or just typographic 
  refinement.

  Some projects _have_ tried to replace TeX. 
  https://tex.stackexchange.com/questions/120271/alternatives-to-latex

  --------

  Clem Cole clemc at ccc.com
  Sun Apr 16 01:27:49 AEST 2017

      Previous message (by thread): [TUHS] TeX/troff/typesetting markups - SunOS 4 documentation
      Next message (by thread): [TUHS] TeX/troff/typesetting markups - Re: SunOS 4 documentation
      Messages sorted by: [ date ] [ thread ] [ subject ] [ author ]

  On Fri, Apr 14, 2017 at 6:24 PM, Toby Thain <toby at telegraphics.com.au>
  wrote:
  >
  >
  > No matter how far you tart up the former, Troff and TeX just aren't
  > playing the same ballgame.


  Toby - that's a tad inflammatory - at least to my American sensibilities.
  Saying one or the other has been "dressed up" (using a derogatory term or
  not) is to me the same as the vi/emacs wars or rugby/American Football
  argument.   Some people like the taste of one, others do not, and thank
  goodness we have choices.   I've used the afore mentioned systems (and
  played the games too at a fairly high level in my day); and frankly it is a
  matter if taste.  They all have their place.

  If you grew up with an affinity for one, you are more likely to find it
  more comfortable for your needs.  I find a TeX just as ugly and unreadable
  as  the runoff family with troff is a member.   It's just a different view
  of beauty.  Frankly, Brian Reid's Scribe on the "Twinex" and VMS was the
  "best" document product system I ever really used (for those that do not
  know, LaTex was an attempt to bring Scribe-like functions into TeX).    But
  as Brian Kernighan points out in his "Page Makeup" paper, even Scribe had
  some flaws (it's too bad Scribe seems to have been lost to IP and source
  issues - I've often wonder how it would have played out in the modern
  world).

  Anyway - it fine to say you don't like troff - please feel free to suggest
  that you don't think that it can be made to your style/preferences.   But
  please don't sling to many insults as the truth is, that troff is still
  useful to many people and a lot people do still like it.

  In my own case, I'll use TeX if a colleague wants too, but I'm a fair bit
  faster with troff than almost any other doc prep system for any document of
  almost any size; but particularly when the documents get large such as
  book.   But that's me; although I note it is also a lot of other people.
  As Brian points out, many of the Pearson and Wiley texts use troff; and of
  course you have to note that my old deskmate, Tim O'Reilly founded his
  empire on it 😂 (I still have a copy of the his original style manual they
  wrote for the Masscomp engineers and doc writers in the mid 80s).
  Clem

Personally, my conclusion would be the opposite, as I think |TeX| being a
language (albeit a macro language, with the problems that is recognised as
entailing) is a big benefit. But it's an interesting comparison, nonetheless.

Scribe
======

:1980 Scribe: *Presentational*

Scribe was another influential early markup language [#]_,
described in Brian Reid's 1980 doctoral dissertation
`Scribe\: A Document Specification Language and its Compiler`_,
at Carnegie Mellon
University.

.. [#] Lamport explicitly acknowledges its influence on |LaTeX|.

An example:

.. code::

    @Heading(The Beginning)
    @Begin(Quotation)
        Let's start at the very beginning, a @i(very good place) to start
    @End(Quotation)

which can also be written in a more LISP-like style:

.. code::

    @Heading(The Beginning)
    @(Quotation
        Let's start at the very beginning, a @i(very good place) to start
    )

* `Wikipedia on Scribe`_
* `Scribe\: A Document Specification Language and its Compiler`_, Brian Reid's
  1980 doctoral dissertation at Carnegie Mellon University.
 
  .. note:: My first quick scan suggests that this is well worth reading. NB:
     It mentions |TeX| and EQN (the roff-related tool for equations) as
     influences.

* `Scribe\: Introductory User's Manual`_, First Edition, Brian K. Reid, 1978
* Scriba_ is "a markup format similar to Scribe", with last commit in 2015. It
  references Skribilo_ and scribble_ as being similar.
* I think one might argue Pollen_ follows in the same footsteps, although it's
  not clear from it's documentation if the author is aware of Scribe_.
* The markup described in `This is Scribe!`_ (Manuel Serrano and Erick
  Gallesio, 2002)  appears to be entirely unrelated.

.. _`Wikipedia on Scribe`: https://en.wikipedia.org/wiki/Scribe_(markup_language)
.. _`Scribe\: A Document Specification Language and its Compiler`: http://reports-archive.adm.cs.cmu.edu/anon/scan/CMU-CS-81-100.pdf
.. _`Scribe\: Introductory User's Manual`: http://bitsavers.informatik.uni-stuttgart.de/pdf/cmu/scribe/Scribe_Introductory_Users_Manual_Jul78.pdf
.. _Scriba: https://github.com/CommonDoc/scriba
.. _Skribilo: http://www.nongnu.org/skribilo/
.. _scribble: http://quickdocs.org/scribble/
.. _`This is Scribe!`: http://www-sop.inria.fr/members/Manuel.Serrano/scribe/doc/scribe.html

TEI
===
:1987 TEI: *Semantic*. Still in use today.

"The mission of the Text Encoding Initiative is to develop and maintain a
set of high-quality guidelines for the encoding of humanities texts, and to
support their use by a wide community of projects, institutions, and
individuals"

Some mark up of the start of Swinburne's Sestina,
taken from the poetry examples at `TEI By Example`_,
showing the working of the ryhming scheme:

.. code:: XML

  <lg type="sestina">
  <lg type="sestet" rhyme="ababab">
  <l>I saw my soul at rest upon a <rhyme label="a" xml:id="A">day</rhyme></l>
  <l>As a bird sleeping in the nest of <rhyme label="b" xml:id="B">night</rhyme>,</l>
  <l>Among soft leaves that give the starlight <rhyme label="a" xml:id="C">way</rhyme></l>
  <l>To touch its wings but not its eyes with <rhyme label="b" xml:id="D">light</rhyme>;</l>
  <l>So that it knew as one in visions <rhyme label="a" xml:id="E">may</rhyme>,</l>
  <l>And knew not as men waking, of <rhyme label="b" xml:id="F">delight</rhyme>.</l>
  </lg>

We can see it declaring the rhyme scheme, ``rhyme="ababab"``, and then on each
line the rhyming word and which part (a, b) of the rhyming scheme it is.

.. _`TEI by example`: http://teibyexample.org/examples/TBED04v00.htm

TEI and its use is a whole field of study I haven't even started - I shan't
attempt to be able to do it justice here.

Interesting links:

* `Wikipedia on Text Encoding Initiative`_
* `TEI\: Text Encoding Initiative`_ (homepage), and some of the things there:

  * `The TEI Archive`_ 1988-1999 articles on the Text Encoding Initiative, with
    a link to another part for 1987-1988
  * `A Bibliography of Publications Related to the Text Encoding Initiative`_,
    ...-2013, which are not just related to TEI itself

* `The TEI and XML`_, from "What is the Text Encoding Initiative?", Lou
  Burnard, OpenEdition Press, 2014
* `The TEI By Example Project`_ "offers a series of freely
  available online tutorials walking individuals through the different stages
  in marking up a document in TEI (Text Encoding Initiative)."

.. _`Wikipedia on Text Encoding Initiative`: https://en.wikipedia.org/wiki/Text_Encoding_Initiative
.. _`TEI\: Text Encoding Initiative`: http://www.tei-c.org/index.xml
.. _`The TEI Archive`: http://www.tei-c.org/Vault/
.. _`A Bibliography of Publications Related to the Text Encoding Initiative`: http://www.tei-c.org/Support/Learn/tei_bibliography.xml
.. _`The TEI and XML`: http://books.openedition.org/oep/680
.. _`The TEI By Example Project`: http://teibyexample.org/

Postscript
==========

:1984 PostScript: Entirely *Presentational*, still in use.
:1993 PDF: Entirely *Presentational*, still in use.

It's probably worth mentioning PostScript briefly, even though it was not
intended to be written by people (although I've seen it done).

An example from wikipedia:

.. code:: postscript

   %!PS
   /Courier             % name the desired font
   20 selectfont        % choose the size in points and establish 
                        % the font as the current one
   72 500 moveto        % position the current point at 
                        % coordinates 72, 500 (the origin is at the 
                        % lower-left corner of the page)
   (Hello world!) show  % stroke the text in parentheses
   showpage             % print all on the page

PDF then uses PostScript to describe each page - it is even further from a
human-writable markup.

* `Wikipedia on PostScript`_
* `Wikipedia on PDF`_
* The WikiWikiWeb_ article `Forth Postscript Relationship`_ discusses whether
  Postscript *is a* Forth, or is just similar to Forth (basically, the latter
  seems more sensible).

.. _`Wikipedia on PostScript`: https://en.wikipedia.org/wiki/PostScript
.. _`Forth Postscript Relationship`: http://wiki.c2.com/?ForthPostscriptRelationship

.. _`Wikipedia on PDF`: https://en.wikipedia.org/wiki/Portable_Document_Format

HTML
====

:1991 HTML: *Presentational*. Still in use today (although rather altered).

Tim Berners-Lee, at CERN, specified HTML and wrote browser and server
software in late 1990. The "HTML Tags" document was first mentioned on the
internet in 1991.

HTML 2.0 was published as IETF RFC 1866 in 1995

HTML (at least until HTML5) was an SGML application - hence the specification
of its DOCTYPE:

.. code:: HTML

  <!DOCTYPE html>
  <html>
    <head>
      <title>This is a title</title>
    </head>
    <body>
      <p>Hello world!</p>
    </body>
  </html>

There's not a lot of discussion of HTML here, as I'm not (in this context)
especially interested in HTML-as-markup, and it's really a specialism of its
own, with its own consideration and politics (and considerable text about it
on the internet).

Some links:

* `Wikipedia on HTML`_
* `The Evolution of Web Documents`_, Dan Connolly, Rohit Khare, and Adam
  Rifkin, 1997. HTML, SML, SGML.
* `XML People`_, Tim Bray, 1998 (republished 2008). A look at the people who
  influenced development of XML
*  `A brief history of markup`_, Jeremy Keith, 2010. From HTML 2.0 through XHTML to HTML5.
* https://www.ukessays.com/essays/information-technology/the-history-of-markup-languages-information-technology-essay.php

.. _`Wikipedia on HTML`: https://en.wikipedia.org/wiki/HTML
.. _`The Evolution of Web Documents`: https://www.xml.com/pub/a/w3j/s3.connolly.html
.. _`XML People`: http://www.tbray.org/ongoing/When/200x/2008/02/10/XML-People
.. _`A brief history of markup`: https://alistapart.com/article/a-brief-history-of-markup

* `A Brief History of Markup`_, Jeremy Keith, 2010, HTML and its friends
* `A Brief History of Markup Languages`_, Melody Smith, 2012, again HTML and
  W3C
* `The Evolution of Web Documents`_: The Ascent of XML, Dan Connolly, Rohit
  Khare, Adam Rifkin, 1997

.. _`A Brief History of Markup`: https://alistapart.com/article/a-brief-history-of-markup
.. _`A Brief History of Markup Languages`: http://taxodiary.com/2012/12/a-brief-history-of-markup-languages/
.. _`The Evolution of Web Documents`: https://www.xml.com/pub/a/w3j/s3.connolly.html

Docbook
=======

:1991 Docbook: *Semantic*. Still in use today.

Docbook dates from the same year as HTML.

Docbook is "a semantic markup language for technical documentation".
However, I think it is often "semantic" in the same way that |LaTeX| is
"semantic", i.e., used for mainly presentational purposes.

An example of Docbook 4.3 from
http://www.informatik.tu-cottbus.de/~giurca/tutorials/DocBook/index.htm

.. code:: XML

  <?xml version="1.0" encoding="UTF-8"?>
  <!DOCTYPE article PUBLIC "-//OASIS//DTD Simplified DocBook XML V1.0//EN"
  "http://www.oasis-open.org/docbook/xml/simple/1.0/sdocbook.dtd">
  <article>
    <title>DocBook Tutorial</title>
    <articleinfo>
      <author>
        <firstname>Adrian</firstname>
        <surname>Giurca</surname>
      </author>
      <date>April 5, 2005</date>
    </articleinfo>
    <section>
      <title>What is DocBook ?</title>
      <para>DocBook is an SGML dialect developed by O'Reilly and HaL Computer
      Systems in 1991.
      </para>
    </section>
  </article>

Before Docbook 5, it was an SGML language, defined by a DTD.

DocBook 5 is an XML language, formally defined by a RELAX NG schema with
rule-based validation for some constraints using Schematron.

An example of Docbook 5 (taken from wikipedia):

.. code:: XML

   <?xml version="1.0" encoding="UTF-8"?>
   <book xml:id="simple_book" xmlns="http://docbook.org/ns/docbook" version="5.0">
     <title>Very simple book</title>
     <chapter xml:id="chapter_1">
       <title>Chapter 1</title>
       <para>Hello world!</para>
       <para>I hope that your day is proceeding <emphasis>splendidly</emphasis>!</para>
     </chapter>
     <chapter xml:id="chapter_2">
       <title>Chapter 2</title>
       <para>Hello again, world!</para>
     </chapter>
   </book>

Some links:

* `Wikipedia on DocBook`_
* `The DocBook Project`_ on Sourceforge
* `DocBook.org`_ is the homepage for both "DocBook: The Definitive Guide" and
  "DocBook Publishers: The Definitive Guide". Both are by Norman Walsh, and
  both are available free online from this page, in their various versions,
  specific to different versions of DocBook itself.

  "DocBook 5: The Definitive Guide", Norman Walsh, O'Reilly Media, 2010, is
  the current published version of the book.

* `Overview of the DocBook format`_ at https://workaround.org/ is a quick
  introduction to DocBook

.. _`Wikipedia on DocBook`: https://en.wikipedia.org/wiki/DocBook
.. _`The DocBook Project`: http://docbook.sourceforge.net/
.. _`DocBook.org`: http://docbook.org/
.. _`Overview of the DocBook format`: https://workaround.org/docbook/

DITA
====

:2001/2005 DITA: *Semantic* and *Presentational*, still in use.

DITA, the "Darwin Information Typing Architecture", appears to be a semantic
(maps and topics) technical documentation format, with a basic vocabulary
modeled on HTML. A quick look around for information about it suggested that
people are keen to write markdown and then convert to DITA, rather than
writing it directly.

An example from `DITA for the impatient`_:

.. code:: xml

  <topic id="docbook_or_dita">
    <title>DITA or DocBook?</title>

    <shortdesc>Both DITA and DocBook are both mature, feature rich, document types,
    so which one to choose?</shortdesc>

    <body>
      <p>DocBook 5 is a mature document type. It is well-documented (DocBook:
      The Definitive Guide, DocBook XSL: The Complete Guide), featuring decent
      XSL stylesheets allowing conversion to a variety of formats, based on the
      best schema technologies: RELAX NG and Schematron.</p>

      <p>DITA concepts (topics, maps, specialization, etc) have an immediate
      appeal to the technical writer, making this document type more attractive
      than DocBook. However the DocBook vocabulary is comprehensive and very
      well thought out. So choose DITA if its technical vocabulary is
      sufficiently expressive for your needs or if, anyway, you intend to
      specialize DITA.</p>
    </body>

    <related-links>
      <link format="html" href="http://www.docbook.org/" scope="external">
        <linktext>DocBook 5</linktext>
      </link>

      <link format="html"
            href="http://www.oasis-open.org/committees/tc_home.php?wg_abbrev=dita"
            scope="external">
        <linktext>DITA</linktext>
      </link>
    </related-links>
  </topic>

* `Wikipedia on DITA`_
* `What is DITA?` at xml.com. This suggests that "DITA's closest peer is
  DocBook, which is also designed primarily for technical documentation".
* `DITA for the impatient`_
* `DITA: Specializations (task, concept, reference)`_ gives a flavour of
  what DITA is about.

.. _`Wikipedia on DITA`: https://en.wikipedia.org/wiki/Darwin_Information_Typing_Architecture
.. _`What is DITA?`: https://www.xml.com/articles/2017/01/19/what-dita/
.. _`DITA for the impatient`: http://www.xmlmind.com/tutorials/DITA/
.. _`DITA: Specializations (task, concept, reference)`: https://idratherbewriting.com/specializations/

Wikiwikiweb
===========

:1994/1995 wikiwikiweb: *Presentational*

Wikiwikiweb was the first wiki, invented by Ward Cunningham.

.. Pygments doesn't seem to have a lexer for wiki text. Not entirely
.. surprising given the lack of any consistency between them.

.. code::

  Paragraphs are not indented.

  * This is a list item
  ** This is a sub-list item

    Indented text is monospaced.

  We have ''emphasis'', '''bold''', '''''bold italic''''', and a LinkToAnotherPage.

  But we can A''''''voidMakingAWikiLink.

  No HTML, tables, headers, maths, scripts. No links within a page.

Apart from introducing the whole idea of wikis, it is perhaps most notable for
the use of CamelCasedWords as wiki links.

Single quotes are used, oddly (and indeed this really distressed me when I
first came across it):

- 1 = single quote
- 2 = emphasis
- 3 = bold
- 5 = emphasised bold (2+3)
- 6 are used to stop a CamelCased word from being a WikiLink

Like most wiki formats, specified by example, with no real rigour. However,
I suspect this may have been done deliberately, to encourage learning by
exploration.

I think that newlines within a paragraph are ignored, but it's hard  to
tell from the documentation, and the original Wikiwikiweb is now frozen.

Cunningham wrote:

   "This wiki is quite bare bones, and intentionally so. Less formatting
   means you have to concentrate on saying things carefully and clearly.
   Content over form."

This lack of capability led to a particular and characteristic type of
discussion, which makes WikiWikiWeb pages very recognisable.

Later wiki formats appear not to have understood *why* the design decisions
were taken, and have mostly had ungainly markups. The adoption of (some form
of) markdown in many current wikis is thus a good thing.

(One of my pet hates with wiki markups is treating a list as composed only
of single-block list items - i.e., there can be no internal block structure
to a list in most wikis. That means you cannot, for instance, do:

.. code::

    * This is a list item

       Which is continued into a second paragraph.

       And contains an example:

       {example}
       Some example text.
       {/example}

Such a restriction made sense in the original wikiwikweb, where the idea
was to keep the text structure very simple, but it doesn't fare well when
trying to discuss technical matters, which is what many modern wikis are
used for. Thus users end up forcing the formatting to give something that
*looks like* the semantics they want, even to the extent of "drawing"
list item enumeration markers by hand.)

Some links:

* WikiWikiWeb_ itself (now readonly).
* `Wikipedia on Wiki`_ talks about wiki pages themselves.
* `Wikipedia on WikiWikiWeb`_ talks about the first wiki. I don't particularly
  propose to talk about the (many) ways of marking up wiki text here. However,
  `Text Formatting Rules`_ is the page on wikiwikiweb about the markup it
  supported. It really did use differing numbers of single quotes to mean
  different sorts of markup. And inline meaningful tabs. Which is why I don't
  want to talk about it.
* `Wiki Wiki Hypercard`_ is an interesting note on the influence of
  HyperCard on WikiWikiWeb

.. _WikiWikiWeb: http://wiki.c2.com/
.. _`Wikipedia on Wiki`: https://en.wikipedia.org/wiki/Wiki
.. _`Wikipedia on WikiWikiWeb`: https://en.wikipedia.org/wiki/WikiWikiWeb.
.. _`Text formatting rules`: http://wiki.c2.com/?TextFormattingRules
.. _`Wiki Wiki Hypercard`: http://acroom.wikity.cc/wiki-wiki-hypercard


Programming language internal documentation
===========================================
API documentation in programming languages is its own distinct problem domain.

Here we consider two of the more important examples, POD (from Perl) and
javadoc (from Java). Both of these are the dominant API documentation
mechanisms for their respective languages.

POD
---

:1994 POD: *Presentational*. Still in use today.

Perl's POD (or Plain Old Documentation)

.. code:: perl

  =pod

  =head1 DESCRIPTION

  This is not I<really> representative of POD usage.

  =over 2

  =item This is a list item.

  =item This is another list item.

  =back

  =cut

This was introduced the same year as wikiwikweb

It is an example of markup to a specific purpose, and clearly very successful.

Note that the blank lines are required around the POD commands.

I don't think you can do multi-paragraph list items. The POD definitions
contains ambuguities, although how to handle some of them is explained in
the POD documentation.

* `The Timeline of Perl and its Culture`_ explains that POD was introduced in
  1995 at the same time as Perl 5.001. This is a very nice brief history of
  the significant events in Perl, from the 1960s to 2002, with links at the
  end.
* perlpodspec_ is the format specification and notes for Perl's Plain Old
  Documentation.

.. _`The Timeline of Perl and its Culture`: http://history.perl.org/PerlTimeline.html
.. _perlpodspec: https://perldoc.perl.org/perlpodspec.html

javadoc
-------

:1995 javadoc: *Presentational*. Still in use today.


.. code:: java

  /**
   * Short one line description.
   * <p>
   * Longer description. If there were any, it would be here.
   * <p>
   * And even more explanations to follow in consecutive
   * paragraphs separated by HTML paragraph breaks.
   *
   * @param  variable Description text text text.
   * @return Description text text text.
   */
  public int methodName (...) {
      // ...
  }

The java toolchain understands how to extract javadoc and produce HTML API
documentation from it. As well as the ``@param`` style annotations, it may
also contain HTML, although the javadoc specification has never specified what
subset of HTML it allows [#]_.

.. [#] Perhaps it is better now-a-days, but somehow I doubt it.

* `Wikipedia on Javadoc`_

.. _`Wikipedia on Javadoc`: https://en.wikipedia.org/wiki/Javadoc

Lightweight markup
==================

With the exception of wikiwikiweb, all of the markups we have looked at so far
introduce significant extra text into the actual document being written. This
can distract from the actual writing of the document. As a consequence, the
idea of *lightweight markup* arose, partly as a result of seeing what people
would write in emails (which back then were plain text only) to convey
presentational ideas.

There is, of course, a trade-off between keeping the markup light and
unintrusive, and adding more capabilities to it. Quite often the lightweight
markup chosen by an individual reflects where on that spectrum they are
comfortable.

setext
======

:1991 setext: *Presentational*. Lightweight.

1991 was the same year as HTML and Docbook.

setext was invented by Ian Feldman as an alternative to RTF and SGML. He used
it to format the electronic newsletter TidBITS_ ("Apples news for the rest of
us") from issue 100 - before that the magazine was distributed as a HyperCard_
stack. 

An example, excerpted from a document called `"Why setext"`_:

.. Unsurprisingly, there isn't a Pygments highlighter for setext

.. code:: reST

  Why setext?
  -----------

    I agree that FAQ's would best be written in something like setext_.
    Why?  Because this document is written in setext and it includes
    the ability to embed HTML hypertext links without being obnoxious.

    As you can see it's easy to write setext documents, and as Edward
    pointed out, it uses existing text conventions for **bold** and _italic_
    words and titles.

  .. _setext http://www.bsdi.com/setext/
  ..

The specification of the format was by example, spread over several documents,
and is not entirely clear. It probaly evolved over time according to the
author's needs.

Body text must be indented by two spaces.

Using underlines to indicate italics (``_italic_``) is suggestive of the use
of underlining in typewritten manuscripts to mean that the relevant text should
be set using an italic font.

Two dots were used for comments or special meaning.

It is not clear if lists were actually supported.

Here is another example (I hope I've got the syntax correct):

.. code:: reST

   This is the title. There can be only one.
   =========================================
     Body text must be indented by two spaces.

   A subheading
   ------------
     **Bold words** and ~italic~ are supported (although ~multiword~italics~
     seems to have been an extension). _Underlined_words_ are also supported.
     `Backquoted words` are not touched.

   > This text will be represented using a monospaced font.

   * This text will have a bullet mark before it.

   .. Two dots introduce text that can be ignored, and two dots alone mean
   .. the logical end of text
   ..

* `Wikipedia on setext`_ 
* The `docutils`_ site holds a `Setext Documents Mirror`_ which preserves copies
  of some of the setext documentation.
* The `wayback machine`_ also has some `setext documents`_

.. _TidBits: http://tidbits.com/
.. _HyperCard: https://en.wikipedia.org/wiki/HyperCard
.. _`Wikipedia on setext`: https://en.wikipedia.org/wiki/Setext
.. _`docutils`: http://docutils.sourceforge.net/
.. _`wayback machine`: https://web.archive.org
.. _`Setext Documents Mirror`: http://docutils.sourceforge.net/mirror/setext.html
.. _`setext documents`: https://web.archive.org/web/20010424104701/http://www.bsdi.com/setext/
.. _`"Why setext"`: http://docutils.sourceforge.net/mirror/setext/why_setext.etx.txt


Python's Doc-SIG
================
Python's Doc-SIG was started to look at documentation matters for Python, and
in particular had two main interests - how to write the text in docstrings,
and how to write "external" documentation.

For docstrings, it was a perceived wisdom that one had to be able to mark up
the names of function arguments, variable names and so on, so that tools could
use this information for some unspecified purpose. And in fact, there were
systems that *did* do exactly that - Zope_ being an example, where typing
information was taken from the docstring.

.. note:: It's not clear when docstrings_ were invented. I believe that Python
   took the idea from Lisp, and specifically from Emacs Lisp. Of course, the
   nice thing about docstrings is that they are part of the program data, so
   they can be inspected and manipulated like the rest of Python code.

   `This article`_ from 2013 is an interesting comparison of how to write Python
   vs Emacs Lisp docstrings.

.. _docstrings: `Wikipedia on docstrings`_
.. _`this article`: `Docstring Convention: Python vs Emacs Lisp`_

There was also a feeling that this was a generally good thing to do -
contrasting the relaxed way one might write::

    The arguments are:
    - 'first' which must give the person's "first" name
    - 'last' which must give their "last" name
    'first' and 'last' should be interpreted when possible as if they were
    "christian" and "surname" (or family name) respectively.

    A hash made from those two components will be returned.

rather than a more formal (and invented - not an actual markup language)
approach like::

    @param[string] first: the person's "first" name
    @param[string] last: the person's "last" name
    @return[integer] a hash made from those two components

    'first' and 'last' should be interpreted when possible as if they were
    "christian" and "surname" (or family name) respectively.

.. note:: Interestingly, later on the requirement to formally document one's
   arguments in a docstring has tended to go away, replaced by informal
   documentation, and, if one must, use of the 'mypy_' style annotation in the
   code itself. I think there are interesting cultural reasons for this, and
   in part it allows one to not bother documenting function arguments whose
   intent is entirely obvious from their use and name.

.. _mypy: http://mypy-lang.org/
.. _zope: `Wikipedia on Zope`_
.. _`Wikipedia on Zope`: https://en.wikipedia.org/wiki/Zope

StructuredText
==============

:1996 StructuredText: *Presentational*. Lightweight.

StructuredText was created by Jim Fulton of Digital Creations (later Zope
Foundation) for use in Zope_.

It was clearly influenced by setext, although much extended.

For instance:

.. code:: reST

   This is a heading

     This is a paragraph. Body text is indented.

     - This is a list item. Words can be *emphasized*, _underlined_,
     **strong** or 'inline' - yes, that's using single quotes [1].

     o This is a list item as well. Each list item must be separated by a
     blank line from other entities.

     This is a sub-heading

       Sub-section body text is indented even further. We know the sub-header
       is such because it is followed by this indented text.

   .. [1] Or we could use ``backquotes``.

It retains the idea of significant indentation, although in an extended form.
I think it is now agreed that this is a good idea in a programming language,
but not so much when writing plain text.

A heading is a heading because it is followed by a non-heading(!).

Footnotes are fairly simple to write. Note the use of two dots to introduce the
actual footnote.

All block entities must be separated by blank lines.

Note that "o" can be a list delimiter - this was regarded as a serious
ambiguity, especially when writing Spanish, where "o" is a valid word.

Links are done as::

    visit the "Python website" :http://www.python.org/.

i.e., quoted text followed by a colon and then a URL.

The StructuredText documentation was much better than that for setext, but
still relied on example rather than specification, and left important
ambiguities.

Some links:

* `MoinMoin on StructuredText`_ is a short summary of StructuredText
* `Jim Fulton`_'s `Older Projects`_ page has a section on his
  StructuredText work:

    In 1996, I created StructuredText as a light weight text markup for
    generating various forms of documentation, especially HTML documents. It
    was inspired by Setext. Like Python, it used indentation to provide
    document structure.

    StructuredText was widely used in the Python, and especially in the Zope
    community for a few years. The extensive use of indentation was eventually
    recognized as a mistake.

    StructuredText was ultimately replaced by the superior ReStructuredText.

.. _`MoinMoin on StructuredText`: https://moinmo.in/StructuredText
.. _`Jim Fulton`: http://jimfulton.info/
.. _`Older Projects`:  http://jimfulton.info/site/older-projects.html

* `An Introduction to Structured Text`_, Paul Everitt, undated.
* `zope.structuredtext`_ on github
  https://github.com/zopefoundation/zope.structuredtext
  is an implementation of a StructuredText parser, and appears to be the best
  source of examples.

StructuredTextNG was an attempt to refactor StructuredText, but a final
specification and implementation were never completed. I did make an attempt,
at `StructuredTextNG - Format`_, to work out what it was meant to be, but the
need for this was superceded by later work, and in particular by
reStructuredText.

.. _`StructuredTextNG - Format`: http://www.tibsnjoan.co.uk/docutils/STNG-format.html

Whilst StructuredText was not perfect, it was very influential in the Python
world, and I think that the dissatisfaction with it showed how close it came
to being the right system. It is significant that reStructuredText uses that
name.

* `Problems with StructuredText`_ is David Goodger's analysis of the problem.V

.. _`An Introduction to Structured Text`: http://old.zope.org/Documentation/Articles/STX/
.. _`zope.structuredtext`: https://github.com/zopefoundation/zope.structuredtext
.. _`Problems with StructuredText`: http://docutils.sourceforge.net/docs/dev/rst/problems.html

reStructuredText
================

:2001/2002 reStructuredText: *Presentational*. Lightweight.

reStructuredText was designed by David Goodger, who also wrote the original
implementation.  I think it is significant that Daivd had a professional
background in SGML.  In particular, it meant that he used very keen judgement
to decide what capabilities should be included, and what not.

reStructuredText was, of course, explicitly influenced by both setext and
StructuredText, but with more rigor.

The main aims of reStructuredText are to be:

* readable
* output agnostic
* well specified
  
Being readable means that the actual marked up text, as written, is a first
class document. As far as I know, reStructuredText is the only lightweight
markup with this aim, and it aligns well with Python's own philosophy that
readability comes first. It does, of course, mean that sometimes it is a
little harder to *write* reStructuredText, but that is regarded as an
acceptable cose.

.. note:: The `reStructuredText specification`_ is itself written in
   reStructuredText, which is not surprising, but importantly it is also
   intended to be readable in that form.

Being output agnostic means that it does not have to worry about fitting
itself to HTML, PDF, Docbook or any other particular output engine.

Finally, being well specified makes it possible to work out if a document is
valid, and also facilitates writing other implementations.

.. note:: I'm particularly fond of the implementation in VimL, the programming
   language within the Vim editor.

For instance, here is text similar to the StructuredText example, but in
reStructuredText:

.. code:: reST

   This is a heading
   =================

   This is a paragraph. Body text is not indented.

     - This is a list item. Words can be *emphasized*, **strong** or
       ``inline`` - yes, that's paired backquotes [1]_.
     - This is a list item as well. We can't use "o" as a list delimiter,
       as it is too ambiguous. We don't need blank lines between list items.

   This is a sub-heading
   ---------------------

   Sub-section body text is not indented either. What makes sense for
   programming languages is irritating for text.

   .. [1] Lines after the first line of a list item must be indented appropriately.

Body text isn't indented, but things must line up when appropriate (see the lists).

Double backquotes are used for inline text because single backquotes are used
for grouping, for instance in specifying links:

.. code:: reST

  Section One
  ===========

  `This is a link to something external`_ and this is a link to this section,
  `Section One`_.

  .. _`This is a link to something external`: http://docutils.sourceforge.net/docs/user/rst/quickref.html

Being able to name links but put the URL outside the actual text is part of
reStructuredText's attempt to foster readability.

Given its intended use in the Python world, where ``__init__`` is a thing, the
underscore character is *not* overloaded for any special purpose.

It was also a design consideration that < and > are not special, as
programmers often use these in text (specifically, when writing about HTML or
XML).

reStructuredText isn't perfect - for instance, the various forms of inline
markup (``*..*``, ``**..``, etc.) cannot, at time of writing, be nested - but
I find that it is a good solution for most purposes when I just want to write
text, and perhaps convert it to another format.

* `Wikipedia on reStructuredText`_
* `reStructuredText specification`_
* 2012 `An Introduction to reStructuredText`_, David Goodger. This also
  includes David's recounting of its history, which I'd say is accurate if a
  little too modest.

  It's also worth looking at:

  * `A Record of reStructuredText Syntax Alternatives`_, David Goodger, 2012 -
    i.e.. the roads not taken, and why not.
  * `Problems With StructuredText`_, David Goodger, 2012 - yes, the project
    acknowledges various known shortcomings.

* Sphinx_ was first introduced as a means of using reStructuredText to write
  the Python documenation, instead of |LaTeX|.
* `Kernel documentation with Sphinx`_, part 1 of an `LWN.net`_ article from
  2016, on how the Linux Kernel documentation is now using reStructuredText
  and Sphinx
* `CMake 3.0.0 Release Notes`_: CMake has also moved to reStructuredText and
  Sphinx

.. _`Wikipedia on reStructuredText`: https://en.wikipedia.org/wiki/ReStructuredText
.. _`reStructuredText specification`: http://docutils.sourceforge.net/docs/ref/rst/restructuredtext.html
.. _`An Introduction to reStructuredText`: http://docutils.sourceforge.net/docs/ref/rst/introduction.html
.. _`A Record of reStructuredText Syntax Alternatives`: http://docutils.sourceforge.net/docs/dev/rst/alternatives.html
.. _`Problems With StructuredText`: http://docutils.sourceforge.net/docs/dev/rst/problems.html
.. _Sphinx: http://www.sphinx-doc.org/
.. _`Kernel documentation with Sphinx`: https://lwn.net/Articles/692704/
.. _`LWN.net`: https://lwn.net/
.. _`CMake 3.0.0 Release Notes`:  https://cmake.org/cmake/help/v3.0/release/3.0.0.html

AsciiDoc
========

:2002 AsciiDoc: *Presentational*. Lightweight.
:2013 Asciidoctor: newer AsciiDoc toolchain.

AsciiDoc was originally written by Stuart Rackham. It is 
aimed specifically as a lightweight way of producing docbook.

Of course, producing docbook means that toolchains exist to produce almost
anything else.

The original Asciidoc implementation was written in Python in 2002.

Asciidoctor_ came out in 2013, and is written in Ruby.

AsciiDoc is well specified, allowing other implementations which behave in the
same way.

The AsciiDoc user guide says:

  AsciiDoc is a plain text human readable/writable document format that can be
  translated to DocBook or HTML using the asciidoc(1) command. You can then
  either use asciidoc(1) generated HTML directly or run asciidoc(1) DocBook
  output through your favorite DocBook toolchain or use the AsciiDoc a2x(1)
  toolchain wrapper to produce PDF, EPUB, DVI, LaTeX, PostScript, man page,
  HTML and text formats.

An example:

.. There doesn't seem to be a Pygments highlighter for DocBook

.. code:: reST

   Top level heading
   =================
   Or, alternatively, that could have been += Top level heading =+.
   Sub-heading
   -----------
   Like |TeX|, open and closing quote marks don't match, so instead one uses
   `single' or ``double'' quoting. This means that both 'this' and _that_ can
   be used to emphasize text. *strong* text and +monospaced+ text are also
   available.

   Listing blocks are one type of DelimitedBlock - there are several more:
   ---------------------------
   #include <stdio.h>
   ---------------------------

   * List items
   +
   can continue into another paragraph, but it must be explicitly joined on.

Here is an example similar to the setext example:

.. code:: reST

  = This is a title heading

  This is a paragraph. Body text is not indented.

  - This is a list item. Words can be _italic_, *bold* or
   +mono+ - yes, that's paired plus-signs.
  - This is a list item as well. We don't need blank lines between list items.
  +
  This is more of the second list item. It is "`joined on`" by the
  `+`.footnote:[Note the quotation marks around _joined on_.]

  == This is a sub-heading

  Sub-section body text is not indented either. What makes sense for
  programming languages is irritating for text.

Note the use of underlines to indicate emphasis, again looking back to the
meaning of underlining in typewritten manuscripts.

Paired plus signs are used for monotyped text, freeing up other quotation
marks for other uses.

AsciiDoc has a distinctive solution to continuing body elements such as lists,
using a + sign to continue a list item into a second paragraph.

The use of ``"\``` and ``\`"`` to indicate explicit opening and closing quotes
is nice.

Note that footnotes are written inline - this is less readable (in the
original asciidoc), but more convenient to write, and doesn't require the
author worrying about what footnore marker to use.

Headings can also be delimited in "setext" style, with underlining
characters, but that doesn't seem to be the normal convention (although
https://asciidoclive.com still shows that style in its example).

Some links:

* `Wikipedia on AsciiDoc`_
* AsciiDoc_ homepage
* AsciiDoctor_ - "Asciidoctor is a fast text processor and publishing toolchain
  for converting AsciiDoc content to HTML5, DocBook 5 (or 4.5) and other
  formats."
* `What is AsciiDoc? Why do we need it?`_, which also includes a list of
  organisations using it.
* `AsciiDoc Syntax Quick Reference`_
* `AsciiDoc Writer's Guide`_

.. _`Wikipedia on AsciiDoc`: https://en.wikipedia.org/wiki/AsciiDoc
.. _AsciiDoc: http://asciidoc.org/
.. _AsciiDoctor: http://asciidoctor.org/
.. _`AsciiDoc User Guide`: http://asciidoc.org/userguide.html
.. _`What is AsciiDoc? Why do we need it?`: http://asciidoctor.org/docs/what-is-asciidoc/
.. _`AsciiDoc Syntax Quick Reference`: http://asciidoctor.org/docs/asciidoc-syntax-quick-reference/
.. _`AsciiDoc Writer's Guide`: http://asciidoctor.org/docs/asciidoc-writers-guide/

The tradeoffs made for a particular form of lightweight markup are always very
personal - one person's just-simple-enough is another person's step too far.
This means that developers keep trying to come up with a form of markup that
suits *their* sweet spot. Markup to fit their individual needs and wants.

So it shouldn't be a surprise that when I gave a lightning talk on "which
should I use, reStructuredText or Markdown?" I got a couple of people
asking afterwards why I hadn't talked about AsciiDoc. The answer was, in fact,
mostly ignorance on my part. There are many lightweight markup formats, and I
just hadn't realised how much use is made of AsciiDoc, and in particular of
the Asciidoctor system.

The `AsciiDoc User Guide`_ seems comprehensive and to define the markup well.
It is clear that its ambitions are much more complex than those of
reStructuredText - it clearly aims to support a substantial portion of
docbook, whilst remaining (more) readable.

I'd say it's definitely further away from "looking like an email", but this
makes sense as its ambitions are greater.

.. note:: Jonathan Corbet did look at using AsciiDoc for the kernel
  documentation, but Sphinx appears to have been a main contributor to the
  decision to use reStructuredText instead. However, the article at
  `Kernel documentation with Sphinx`_ explaining the decision does have a
  decent summary of AsciiDoc

    The AsciiDoc format, ... is semantically equivalent to DocBook XML, with
    the DocBook constructs expressed in terms of lightweight markup. AsciiDoc
    is easier for humans to read and write than XML, but since it is designed
    to translate to DocBook, it fits nicely in front of an existing DocBook
    toolchain. The original Python AsciiDoc tool has been around for a long
    time, but has been superseded by a Ruby reimplementation called
    Asciidoctor in recent years. 

Markdown
========

:2004 markdown: *Presentation*. Lightweight.

Markdown was originally written by John Gruber, collaborating with Aaron
Swartz on the syntax.

It was explicitly aimed at being an easier way to write HTML:

   From the syntax page: "Markdown’s syntax is intended for one purpose: to be
   used as a format for *writing* for the web." Their emphasis.

It has suffered from an ambiguous specification and first implementation, and
the fact that the original author does not wish these to be corrected.

However, despite this, it has been immensely successful, suggesting that there
is a clear niche for a markup format at just about its (perceived) level of
complexity, and I myself recommend its use when reStructuredText is not
appropriate.

Here is the equivalent of our setext example:

.. There doesn't seem to be a Pygments highlighter for markdown

.. code:: reST

   # This is a heading

   This is a paragraph. Body text is not indented.

   - This is a list item. Words can be *emphasized*, **strong** or
   `inline` - that's single backquotes.
   - This is a list item as well. We don't need blank lines between list items.

       This is more of the second list item. It's first line must be indented
     by 4 spaces or a tab.

   ## This is a sub-heading

   Sub-section body text is not indented either. What makes sense for
   programming languages is irritating for text.

   (We don't do footnotes, but you can include <tt>HTML</tt>.)

Actually, headings can be specified with underlining as well (setext style),
but I've never seen anyone actually doing that.

And here is a more specific example:

.. code:: reST

   # A first-level header

   * Lists work as you might expect.
   * This is an unnumbered list.

     Multiple paragraphs are allowed per list item, which is good.
   Although the indentation doesn't need to be kept consistent after
   the first line.

   ## A sub heading

   > A blockquote.
   >
   > 1. The first line of a blockquoted list.

   Blocks of code must be indented by four spaces:

       so this is code

   and `inline code` can be done as well.

It's not well defined whether a blank line is needed before a list - that is,
whether::

  This paragraph has a hyphen starting its next line
  - does that constitute the start of a list item?

and it is specified that::

  1986. What a great season.

does start a numbered list item, so would need to be written as::

  1986\. What a great season.

The problems of markdown are, in the end:

* The amibiguous specification means that different implementations
  have different interpretations of markdown. Bugs in the original
  implementation mean that it's not possible to refer to that for
  arbitration.
* Markdown as originally specified is generally regarded as being a little
  *too* unambitious, and thus most of the implementations also include (often
  incompatible) extensions.

Thus it's not really sufficient to say one is using markdown, one has also to
say which dialect (e.g., github markdown) one is using.

Personally, I also think it is a problem that it allows embedded HTML
(although not specifying *what* HTML), and that means that, in order to keep
writing it reasonably simple, it has to try to "guess" an author's intent when
they use characters that might conceivably be HTML and not plain text.

.. note:: Would markdown be hurt **in any real way** by just removing the
   ability to embed HTML?

Hopefully CommonMark_ will improve the situation - for instance,
github-flavoured markdown is at least now based on CommonMark.

.. _CommonMark: http://commonmark.org/
.. _`CommonMark specification`: http://spec.commonmark.org/

The `CommonMark specification`_ is rigorous, and well written, but inevitably
very long, which rather undoes the perceived "simplicity" of markdown. Also,
it is only really atttempting to specify the common ground of the markdown
variants, and thus does not, for instance, include table.  

Note that it calls the underlined heading style "setext headings", which is
nice.

  CommonMark is very explicit (!) about how HTML may be included into its
  documents: https://spec.commonmark.org/0.28/#html-block

    Note that the CommonMark spec quotes the later purpose for markdown,
    readability, and not its original purpose of being an easier way to write
    HTML.

  The rules are bit complicated, but quite explicit, which is good, and appear
  always to require an opening ``<HTML-tag>`` and a closing matching ``<HTML-tag>``
  (where "``<HTML-tag>``" is my term - there must be a better way to describe
  that - entity?).

    https://spec.commonmark.org/0.28/#raw-html explains exactly how it
    recognises those ``<any-old-text>`` strings. It still means one has to
    escape thing like <this> to use them in mark[whatever], though. So one
    has to backtick escape it (https://spec.commonmark.org/0.28/#code-spans), or
    use https://spec.commonmark.org/0.28/#backslash-escapes as in the example of
    ``\<br/> not a tag``.

  Although it still has https://spec.commonmark.org/0.28/#entity-references but
  at least it's explicit that this is ``&`` plus an allowed entity reference
  name plus ``;``, which is reasonably deterministic (even if it relies on
  external documentation to say what entity references exist!).

  And finally, https://spec.commonmark.org/0.28/#textual-content says:

    Any characters not given an interpretation by the above rules will be parsed
    as plain textual content.

  which I still find itchy.

Markdown claims to be both easy-to-read and easy-to-write - i.e., the
`original introduction to markdown`_ said:

      Markdown is a text-to-HTML conversion tool for web writers. Markdown allows
      you to write using an easy-to-read, easy-to-write plain text format, then
      convert it to structurally valid XHTML (or HTML).

The `original article on markdown's syntax`_ clarifies that a bit:

      Markdown is intended to be as easy-to-read and easy-to-write as is feasible.

      Readability, however, is emphasized above all else. A Markdown-formatted
      document should be publishable as-is, as plain text, without looking like
      it’s been marked up with tags or formatting instructions. While Markdown’s
      syntax has been influenced by several existing text-to-HTML filters —
      including Setext, atx, Textile, reStructuredText, Grutatext, and EtText —
      the single biggest source of inspiration for Markdown’s syntax is the format
      of plain text email.

Personally, I think that doesn't recognise the tension between easy-to-read
and easy-to-write (they're not entirely compatible).

For interest, here are links to the sources mentioned:

    * `setext`_
    * `atx`_ - appears very simple, not very sophisticated
    * Textile_ - shortcuts for HTML
    * reStructuredText_
    * Grutatxt_ - appears to date from 2000 onwards. Simple but ambiguous
      documentation.
    * EtText_ - explicitly influenced by setext_, wikiwikiweb_, txt2html,
      Userland's Frontier, and StructuredText_.

.. _setext: `setext documents mirror`_

Of those, I think only reStructuredText_ has a decent definition. Also,
compared with the others (i.e., not reStructuredText), I think markdown looks
not too bad!

I'm surprised that AsciiDoc_ isn't mentioned in the influences.

Other links:

* `Wikipedia on markdown`_
* CommonMark_ is an attempt to provide a well-specified successor form of
  markdown. The page explains the problem they're trying to solve well. It was
  initially to be called "Standard Markdown", but that led to problems, as
  documented at `Standard Markdown is now Common Markdown`_, and hence the
  name change.

* Note that the IETF `RFC 7763: The text/markdown Media Type`_ (from 2016)
  explicitly says, in section 1.1:

      [MDSYNTAX] explicitly rejects the notion of validity: there is no such
      thing as "invalid" Markdown.

  which one might, perhaps, find distressing.

* Various people have written articles on the shortcomings of markdown. For
  instance:

  * `Why You Shouldn’t Use “Markdown” for Documentation`_, Eric Holscher, 2016
  * `markdown considered harmful (or perhaps just a loved but irritating old uncle)`_,
    bowerbird intelligentleman, 2013 (although he still likes markdown, despite
    the problems). This is also an interesting history of why markdown is where
    it is today (or, anyway, when the author was writing). He goes on to propose
    "Zen markup language" - see `beyond markdown, part 1`_, 2014 - although I
    don't know if it has ever materialised beyond the articles.
  * `Why Markdown is not my favourite language`_ (from 2012) shares many of my
    grumbles about markdown, gives a reasoned look at reStructuredText, and
    decides that actually the best hope is actually Creole_. Unfortunately, I
    don't think there's been much adoption of Creole.

.. _atx: http://www.aaronsw.com/2002/atx/
.. _Textile: http://www.booked.net/textism.html
.. _Grutatxt: http://triptico.com/software/grutatxt.html
.. _EtText: http://ettext.taint.org/doc/
.. _`Wikipedia on markdown`: https://en.wikipedia.org/wiki/Markdown
.. _`original introduction to markdown`: https://daringfireball.net/projects/markdown/a
.. _`original article on markdown's syntax`: https://daringfireball.net/projects/markdown/syntax
.. _CommonMark: http://commonmark.org/
.. _`Standard Markdown is now Common Markdown`: https://blog.codinghorror.com/standard-markdown-is-now-common-markdown/
.. _`RFC 7763: The text/markdown Media Type`: https://tools.ietf.org/html/rfc7763
.. _`Why You Shouldn’t Use “Markdown” for Documentation`: http://ericholscher.com/blog/2016/mar/15/dont-use-markdown-for-technical-docs/
.. _`markdown considered harmful (or perhaps just a loved but irritating old uncle)`: https://medium.com/the-bower/markdown-considered-harmful-495ccfe24a52
.. _`beyond markdown, part 1`: https://medium.com/the-bower/beyond-markdown-part-1-2300665659f7
.. _`Why Markdown is not my favourite language`: http://www.wilfred.me.uk/blog/2012/07/30/why-markdown-is-not-my-favourite-language/
.. _Creole: http://www.wikicreole.org/

Some more comparisons
=====================

* `Why we need constrainable lightweight markup languages`_, Mark Baker, 2016,
  and sam_ (Semantic Authoring Markdown), his proposed solution (still under
  active development)
* `Common markup for Markdown and reStructuredText`_, Alexander Dupuy, 2017 -
  an attempt to describe the commonality between the two markups, so that text
  can be written to satisfy both.
* `reStructuredText vs Markdown for documentation`_, Victor Zverovich, 2016 -
  a short comparison.
  
.. _`Why we need constrainable lightweight markup languages`:  http://everypageispageone.com/2016/06/05/why-we-need-constrainable-lightweight-markup-languages/
.. _sam: https://github.com/mbakeranalecta/sam
.. _`Common markup for Markdown and reStructuredText`: https://gist.github.com/dupuy/1855764
.. _`reStructuredText vs Markdown for documentation`:  http://zverovich.net/2016/06/16/rst-vs-markdown.html

Other lightweight markups
=========================
A very scattershot section.

`Org-Mode Is One of the Most Reasonable Markup Language to Use for Text`_,
Karl Voit, 2017. Emacs org-mode considered as a general markup language

.. _`Org-Mode Is One of the Most Reasonable Markup Language to Use for Text`: http://karl-voit.at/2017/09/23/orgmode-as-markup-only/

I don't really discuss org-mode as a markup format because it is so
Emacs-specific. It appears to be defined by its usage, without separating out
in a clear fashion the underlying text representation.

Pollen_, a lightweight programmable markup written in Racket_, Matthew
Butterick, 2017. I admit to finding this quite interesting - in some ways it
can be seen as a re-imagining of |TeX|.

.. _Pollen: http://docs.racket-lang.org/pollen/
.. _Racket: https://racket-lang.org/

`A Brief History of the Development of SMDL and HyTime`_. OK, just one link
to an article about marking up music. Although I actually find Lilypond_
(1996 and later) more interesting. Which is a second.

.. _`A Brief History of the Development of SMDL and HyTime`: http://www.sgmlsource.com/history/hthist.htm
.. _Lilypond: http://lilypond.org/

`Mathematical Markup Language (MathML™) 1.01 Specification`_ of the W3C_
Mathematical Markup Language. The Introduction_ gives its history and
background.

.. _`Mathematical Markup Language (MathML™) 1.01 Specification`: https://www.w3.org/TR/REC-MathML/
.. _`Introduction`: https://www.w3.org/TR/REC-MathML/chapter1.html

Fin
===

* 1960s TYPSET and RUNOFF, GML
* 1970s roff, runoff, nroff/troff, |TeX| in SAIL
* 1980s Scribe, |TeX| in WEB/Pascal, |LaTeX|, PostScript, SGML, TEI
* 1990s groff, HTML, setext, Docbook, WikiWikiWeb, POD, javadoc, StructuredText, XML
* 2000s reStructuredText, AsciiDoc, markdown

This document was written using reStructuredText_.

The source for this and the corresponding slide show can be found at
https://github.com/tibs/markup-history

You may also be interested in Write the Docs: http://www.writethedocs.org/

.. vim: set filetype=rst tabstop=8 softtabstop=2 shiftwidth=2 expandtab:
