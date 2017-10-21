=============================
A history of markup languages
=============================

By Tibs / Tony Ibbs, for PyConUK 2017

.. note:: These are the extended notes to go with the slideshow, together
   with links which I hope will be useful, and perhaps act as a start on
   finding out more about markup languages.

.. warning:: **This document is still a work in progress.**

.. For the moment, we represent TeX and LaTeX as simple text, but I might
   change that in the future

.. |TeX| replace:: TeX

.. |LaTeX| replace:: LaTeX

.. contents::

Introduction
============

*To be redone*

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

*To be redone*

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

Interestingly, almost all of the markup formats I'm going to discuss are still
in use today.

Things I'm ignoring
===================

I'm ignoring anything that isn't just text, so:

* Music
* Mathematics
* Pictures/diagrams/graphs
* Bibliographies and indices
* All sorts of other things

Basically, I'm ignoring anything that isn't just a text document.

Further, there are many more markup formats than I discuss here (perhaps
unsurprisingly, people have been inventing "easier" ways to write HTML
documents since the early days of HTML).

Links and timelines
===================

* 1964 TYPSET and RUNOFF https://en.wikipedia.org/wiki/TYPSET_and_RUNOFF
* 1967 William Tunincliffe: the separation of the information content of
  documents from their format - Goldfarb credits him with starting the generic
  coding movement (i.e., the idea of using descriptive tags like
  "heading" rather than "format-17") with this presentation given at a meeting of the
  Canadian Government Printing Office in September 1967
* 1969 GML (Charles Goldfarb, Edward Mosher, Raymond Lorie) at IBM
* "1970s" roff, script, runoff, document
* 1976 nroff and troff (J. Ossanna)
* 1978 bib and refer
* 1977/1978 |TeX| and Metafont ("classic" version, written in SAIL)
* 1978-1980 Scribe (B. Reid) https://en.wikipedia.org/wiki/Scribe_(markup_language)
* 1982 |TeX| and Metafont in WEB/Pascal
* 1983-1985 |LaTeX| (L. Lamport)
* 1984 Postscript (https://en.wikipedia.org/wiki/PostScript has 1982-1984)
* 1986 ISO standard SGML (although the first working draft was in 1980)
* 1987 TEI 
* 1991 Time Berners-Lee wrote "HTML Tags" document, proposing what was
  essentially HTML, built on SGML
* 1989-1991 HTML and HTTP (T. Berners-Lee)
* 1993 PDF (Adobe Systems)
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

Various sources were used in creating the timeline, but a special mention has
to go to `25 Years of |TeX| and METAFONT\: Looking Back and Looking
Forward`_, and of course to Wikipedia.

General
=======
*Some of these are sensible to keep here, as an "introduction", and some
need a bit more thought as to where to place them - maybe a "Miscellaneous"
section at the end.*

* `Wikipedia on Markup Language`_ - see the taxonomy of (three) types therein, and the history section
* `Wikipedia List of document markup languages`_
* `Charles Goldfarb — the Godfather of Markup Languages`_, Georgi Dalako,
  undated
* `An informal look into the history of digital typography`_, David Walden, 2016

.. _`Wikipedia on Markup Language`: https://en.wikipedia.org/wiki/Markup_language
.. _`Wikipedia List of document markup languages`: https://en.wikipedia.org/wiki/List_of_document_markup_languages
.. _`Charles Goldfarb — the Godfather of Markup Languages`: http://history-computer.com/Internet/Birth/Goldfarb.html
.. _`An informal look into the history of digital typography`: http://www.tug.org/tug2016/walden-digital.pdf


* `Python docstrings`_
* `Docstring Convention: Python vs Emacs Lisp`_, Xah Lee, 2014. This compares
  the difference in how one is meant to write good dosctrings in the two
  different programming languages.

.. _`Python docstrings`: https://en.wikipedia.org/wiki/Docstring
.. _`Docstring Convention: Python vs Emacs Lisp`: http://xahlee.info/comp/python_vs_elisp_docstring_convention.html

* `SGML and PDF--Why We Need Both`_, Bill Kasdorf, Volume 3, Issue 4: *Moving
  from Print to Electronic Publishing*, June, 1998
  
.. _`SGML and PDF--Why We Need Both`: https://quod.lib.umich.edu/j/jep/3336451.0003.406?view=text;rgn=main


RUNOFF and its descendants
==========================

.. note:: 1964 RUNOFF *Presentational*

.. note:: 1970s \*roff *Presentational*. Still in use (as 1990: groff)

RUNOFF
------

.. code:: Groff

  .LINE LENGTH 60
  .LEFT MARGIN 0
  .PARAGRAPH 5
  Call us on our toll free number

  .CENTER
  1-800-555-5555

  and we will respond as soon as convenient.

RUNOFF, roff, nroff, troff, DSR, groff

Simple text layout and pagination, including right justification.

The original RUNOFF and TYPSET were written by
Jerome H. Saltzer for CTSS_ (Compatible Time Sharing System)

  Ported to BCPL and Multics. Ancestor to roff and thus, ultimately, all of
  the roff family.

  This example is (more or less) from the original TYPSET/RUNOFF documentation.

  Commands starting with a dot in the first column.

  Commands could be abbreviated.

  Inline commands shift the "case", for instance in and out of bold case.

An example of Digital Standard Runoff (DSR), showing that the name had an
enduring meaning. I used to use DSR on VMS in the 1980s/90s.

.. code:: Groff

    .TITLE A simpler DSR example
    .CHAPTER This is a chapter

    This is the first paragraph.
    .LIST
    .LIST ELEMENT;This is a list element. We have *bold\* and &underline\&.
    .LIST ELEMENT;This is another list element. I like interrobangs ?%!
    .END LIST

Abbreviated forms are also available, e.g., ``.ls`` instead of
``.list``, and ``.le;`` instead of ``list element;``.

The roffs
---------

roff started as a transliteration of the BCPL version of runoff, for UNIX,
around 1970.

The example is a (fake) man page, using the ``man`` macro package from
Lars Wirzenius' `Writing manual pages`_

.TH = title, .SH = sub-heading, .B = bold, other font usages (e.g., normal
font and underlining) are indicated by the \\f sequences.

Q: **Commonly used with a macro language - essentially programmable?**

.. code:: Groff

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

The following is an example of ``groff``:

.. code:: Groff

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

1990 groff (GNU troff)

  Whilst the roff family are not strictly speaking programmable as
  such, their use of macros (originally m4?) means that in practice they are
  as capable as systems such as |TeX| (although I don't think that DSLs like
  |LaTeX| exist as-such).

* `Wikipedia on TYPSET and RUNOFF`_
* CTSS_ (the Compatible Time Sharing System) which is the machine on which the
  first RUNOFF ran.
* `Wikipedia on Runoff`_
* `Wikipedia on roff`_
* `Wikipedia on nroff`_ ("newer roff")
* `Wikipedia on troff`_ ("typesetter roff")
* `Wikipedia on groff`_ ("GNU troff")
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

.. note:: Also, preceding them in 1963, there is `TJ-2`_:

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

.. note:: 1969 GML, 1986 SGML, 1997: XML

   *Semantic* and *"meta"* (DTDs, schemas)

GML
---

1969 GML

GML stood for Generalized Markup Language, but also for the initials of the
surnames of its inventors (Charles Goldfarb, Edward Mosher, Raymond Lorie).
surnames).

GML was intended to be a mechanism for *describing* markup languages, rather
than a markup language itself. 

1986 [Standard] Generalised Markup Language.

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

.. _`The Roots of SGML -- A Personal Recollection`: http://www.sgmlsource.com/history/roots.htm

Use of GML (specifically, the starter set) is described by:

* `GML Starter Set User's Guide`_, IBM 1980, 1991
* `GML Starter Set Reference`_, IBM 1980, 1991

.. _`GML Starter Set User's Guide`: http://publibfp.boulder.ibm.com/cgi-bin/bookmgr/BOOKS/dsm04m00/CCONTENTS
.. _`GML Starter Set Reference`: http://publibfp.boulder.ibm.com/cgi-bin/bookmgr/BOOKS/dsm05m00/CCONTENTS

SGML
----

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

Q: **Can the <item> elements here be closed implicitly?**

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

Note how SGML (like GML before it) allowed the definition of elements that
were implicitly closed by another element - e.g., <li> and <p>

  - <td> is the document title
  - <ad> is an address, <al> an address line
  - <ab> is the abstract
  - <ci> indicates a citation, which rendered as italics in the resulting paper.
  - <ref> marks up a Reference, collected for the section at the end of the document.
  - &SGML is an "entity reference" that expands to 'Standard Generalized
    Markup Language' - we're familiar with things like &eacute; from HTML.

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

* `Wikipedia on GML`_
* `Wikipedia on SCRIPT`_
* `The Implications of SGML for the Preparation of Scientific Publications`_,
  Joan Smith, *The Computer Journal*, Volume 29, Issue 3, 1 January 1986,
  Pages 193-200
* W3C_ `HTML 4.01 Specification`_, section 3 `On SGML and HTML`_
* `Guidelines for Writing SGML DTDs (Draft)`_, Sandra A. Mamrak, 1989.
* `Wikipedia on Document Type Definition`_

* https://en.wikipedia.org/wiki/Document_type_definition

* `The SGML History Niche`_, Charles F. Goldfarb, 2002/2003. Some personal
  recollections, all of which are well worth reading.

.. _`Wikipedia on GML`: https://en.wikipedia.org/wiki/IBM_Generalized_Markup_Language
.. _Script: `Wikipedia on SCRIPT`_
.. _`Wikipedia on SCRIPT`: https://en.wikipedia.org/wiki/SCRIPT_(markup)
.. _`The Implications of SGML for the Preparation of Scientific Publications`: https://academic.oup.com/comjnl/article-lookup/doi/10.1093/comjnl/29.3.193

.. _`The SGML History Niche`: http://www.sgmlsource.com/history/index.htm, six
   articles by Charles F. Goldfarb, 2002 (and earlier)

.. _W3C: https://www.w3.org/
.. _`HTML 4.01 Specification`: https://www.w3.org/TR/html4/cover.html
.. _`On SGML and HTML`: https://www.w3.org/TR/html4/intro/sgmltut.html
.. _`Guidelines for Writing SGML DTDs (Draft)`: http://www.tei-c.org/Vault/ML/mlw01.htm
.. _`Wikipedia on Document Type Definition`: https://en.wikipedia.org/wiki/Document_type_definition

XML
---

Not itself of direct interest as a markup language, but important because it
is a subset of SGML. In particular, it is a simpler subset of SGML, which
makes parsers easier to write. Other SGML based tools (TEI, Docbook, HTML
itself) have generally moved towards using XML rather than SGML in their
specification.

  wikipedia: "XML is an application profile of SGML"

  A simpler subset of SGML, which makes parsers easier to write. Other SGML
  based tools (TEI, Docbook, HTML itself) have generally moved towards using
  XML rather than SGML in their specification.

  XML was compiled by a working group of eleven members,[30] supported by a
  (roughly) 150-member Interest Group.

  No example because there is no "default" XML - a schema is needed.

* `XML Information`_  is a nested set of pages (I assume course notes).
  Constituent topics are "What is Markup?", "Schemas" and "Special Characters
  and Unicode". Author presumably Beck, undated.
* `Is there a difference between SGML DTDs and XML DTDs?`_ is from the "Schemas"
  section of the above.
* `XML People`_, an article by Tim Bray, originally writing in 1998, and
  republished in 2008. It describes the genesis of XML and the people (and
  organisations) involved.


.. _`XML Information`: https://www.ncbi.nlm.nih.gov/staff/beck/xml/index.html
.. _`Is there a difference between SGML DTDs and XML DTDs?`: https://www.ncbi.nlm.nih.gov/staff/beck/xml/schemas/II-C.html
.. _`XML People`: http://www.tbray.org/ongoing/When/200x/2008/02/10/XML-People

|TeX| and related
=================

|TeX|
-----

.. note:: 1977/1978 |TeX| *Presentational with semantic leanings*.
   Programmable. Still in use.

Designed and mostly written by Donald Knuth.

Driven by the need to guarantee accurate typesetting of mathematics.

In serious use of |TeX|, one starts by defining lots of useful
commands - although `the TeXbook`_ has many useful ideas one can copy.

Most people actually use |LaTeX| (1984) or one of the other markup languages
written in |TeX|. |LaTeX| is still dominant in scientific and mathematical
publishing.

.. _`The TeXbook`: http://www.ctex.org/documents/shredder/src/texbook.pdf

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

|LaTeX|
-------

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

And an another example from a fanzine:

.. code:: TeX

  \begin{center}
  \rule{5in}{0.1mm}
  \end{center}

  \section*{Captain Competent strikes again}

  The superhero is a familiar concept in comics, science fiction and many other
  fields. However, I am more interested in what might be called `the competent
  hero'. This is a subtler form of protagonist---a person who has attained
  {\em competence} in their daily life.

.. note:: |LaTeX| is essentially a DSL written in |TeX|. It's probably still
   the best known, but certainly not the only one.

   I used to write plain |TeX|, but most people actually use |LaTeX|,
   which dates from about 1983/1984, or one of the other systems written in
   |TeX|.

.. note:: 1983 |LaTeX| *Presentational*. Still in use.

  Leslie Lamport.

  Most people use |LaTeX| (or one of the equivalents) instead of directly
  using |TeX|.

   
.. note:: I used to write plain |TeX|, but most people actually use |LaTeX|,
   which dates from about 1983/1984, or one of the other systems written in
   |TeX|.

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

|TeX| (and Metafont) were originally written in SAIL_

 A later version (1982) was re-written in Pascal, using the WEB literate
 programming system

 The point was to allow Knuth to control the typesetting of mathematical
 equations in his books on "The Art of Computer Programming"

   Donald Knuth, a professor of computer science at Stanford University, was
   writing a projected seven-volume survey entitled The Art of Computer
   Programming. Volume 3 was published in 1973, composed with Monotype. By
   then, computer science had advanced to the point where a revised edition
   of volume 2 was in order but Monotype composition was no longer possible.
   The galleys returned to Knuth by his publisher were photocomposed. Knuth
   was distressed: the results looked so awful that it discouraged him from
   wanting to write any more. But an opportunity presented itself in the
   form of the emerging digital output devices—images of letters could be
   constructed of zeros and ones. This was something that he, as a computer
   scientist, understood. Thus began the development of TeX.
  
   `Communication of Mathematics with TeX`_, Barbara Beeton and Richard
   Palais, from "Visible Language" Volume 50 Issue 2, archived on the
   `Author Resource Center`_ page of the `American Mathematical Society`
   (AMS).

.. _`Communication of Mathematics with TeX`: http://www.ams.org/publications/authors/Communication_of_Mathematics_with_TEX.pdf
.. _`American Mathematical Society`: http://www.ams.org/home/page
.. _`Author Resource Center`: http://www.ams.org/publications/authors/authors

* `From boiling lead and black art\: An essay on the history of mathematical typography`_,
  Eddie Smith, 2017, is a lovely article on mathematical typesetting, from the
  invention of the printing press to |TeX|.

.. _`From boiling lead and black art\: An essay on the history of mathematical typography`: http://www.practicallyefficient.com/2017/10/13/from-boiling-lead-and-black-art.html

* `Wikipedia on |TeX|`_
* `Wikipedia on WEB`_
* `Wikipedia on Literate programming`_
* `Wikipedia on Donald Knuth`_
* `Knuth's home page`_

.. _`Wikipedia on |TeX|`: https://en.wikipedia.org/wiki/TeX
.. _`Wikipedia on WEB`: https://en.wikipedia.org/wiki/WEB
.. _`Wikipedia on Literate programming`: https://en.wikipedia.org/wiki/Literate_programming
.. _`Wikipedia on Donald Knuth`: https://en.wikipedia.org/wiki/Donald_Knuth
.. _`Knuth's home page`: http://www-cs-faculty.stanford.edu/~knuth/

If you don't know about Knuth, it's worth following him up - he has done
amazing things.

* `An overview of |TeX|, its children and their friends...`_, Arno Trautman,
  2016
* `TeX family tree with timeline?`_, 2016, a question on https://tex.stackexchange.com
   
* `A Brief History of LaTeX`_, 1998, an email by I Find Karma on the `FoRK Archive`_
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

.. note:: 1980 Scribe *Presentational*, and maybe also programmable

Scribe was another influential early markup language, from around 1908.

An example:

.. code::

    @Heading(The Beginning)
    @Begin(Quotation)
        Let's start at the very beginning, a @i(very good place) to start
    @End(Quotation)

but that can also be written:

.. code::

    @Heading(The Beginning)
    @(Quotation
        Let's start at the very beginning, a @i(very good place) to start
    )

Described in Brian Reid's 1980 doctoral dissertation at Carnegie Mellon
University. Lisp based.

Similar systems still appear to exist.

Note the two representations - the second one being more lisp-like.

Q: **Also, need to check if it is "programmable".**

* `Wikipedia on Scribe`_
* `Scribe\: A Document Specification Language and its Compiler`_, Brian Reid's
  1980 doctoral dissertation at Carnegie Mellon University. My
  first quick scan suggests that this is very worth reading. NB: It mentions
  |TeX| and EQN (the roff-related tool for equations).
* `Scribe\: Introductory User's Manual`_, First Edition, Brian K. Reid, 1978
* Scriba_ is "a markup format similar to Scribe". It references Skribilo_ and
  scribble_ as being similar.

.. _`Wikipedia on Scribe`: https://en.wikipedia.org/wiki/Scribe_(markup_language)
.. _`Scribe\: A Document Specification Language and its Compiler`: http://reports-archive.adm.cs.cmu.edu/anon/scan/CMU-CS-81-100.pdf
.. _`Scribe\: Introductory User's Manual`: http://bitsavers.informatik.uni-stuttgart.de/pdf/cmu/scribe/Scribe_Introductory_Users_Manual_Jul78.pdf
.. _Scriba: https://github.com/CommonDoc/scriba
.. _Skribilo: http://www.nongnu.org/skribilo/
.. _scribble: http://quickdocs.org/scribble/

I think one might argue Pollen_ follows in the same footsteps, although it's
not clear from it's documentation if the author is aware of Scribe_.

  The markup described in `This is Scribe!`_ (Manuel Serrano and Erick
  Gallesio, 2002)  appears to be entirely unrelated.

  .. _`This is Scribe!`: http://www-sop.inria.fr/members/Manuel.Serrano/scribe/doc/scribe.html

TEI
===
.. note:: 1987 TEI *Semantic*. Still in use today.

"The mission of the Text Encoding Initiative is to develop and maintain a
set of high-quality guidelines for the encoding of humanities texts, and to
support their use by a wide community of projects, institutions, and
individuals"

Some mark up of the start of Swinburne's Sestina,
taken from the poetry examples at `TEI By Example`_,
showing the working of the ryhming scheme.

``rhyme="ababab"`` and then on each line the rhyming word and which part (a,
b) of the rhyming scheme it is.

.. _`TEI by example`: http://teibyexample.org/examples/TBED04v00.htm

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

  """The mission of the Text Encoding Initiative is to develop and maintain a
  set of high-quality guidelines for the encoding of humanities texts, and to
  support their use by a wide community of projects, institutions, and
  individuals"""

This alone looks like a whole field of study I haven't even started - I don't
expect to be able to do it justice here.

* `Wikipedia on Text Encoding Initiative`_
* `TEI\: Text Encoding Initiative`_ (homepage), and some interesting things
  there:

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

.. note:: Entirely *Presentational*, still in use.

Not intended to be written by people (although it is possible).

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

.. note:: 1991 HTML *Presentational*. Still in use today (although rather altered).

Tim Berners-Lee, at CERN, specified HTML and wrote browser and server
software in late 1990. The "HTML Tags" document was first mentioned on the
internet in 1991.

HTML 2.0 was published as IETF RFC 1866 in 1995

HTML (at least until HTML5) is an SGML document type - an SGML application.

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

There's not a lot here, as I'm not (in this context) especially interested in
HTML-as-markup, and it's really a specialism of its own, with its own
consideration and politics.

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

.. note:: 1991 Docbook *Semantic*. Still in use today.

"A semantic markup language for technical documentation"

However, I think it is often "semantic" in the same way that |LaTeX| is
"semantic" - often also for presentational purposes (but not *necessarily*).

Same year as HTML

Example of Docbook 4.3 from
http://www.informatik.tu-cottbus.de/~giurca/tutorials/DocBook/index.htm

Before Docbook 5, an SGML language, defined by a DTD

DocBook 5 is an XML language, formally defined by a RELAX NG schema with
integrated Schematron rules.

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

- DocBook before 4.1 - SGML with a DTD
- DocBook from 4.1 but before 5 - SGML/XML with a DTD
- 2005 DocBook 5 and later - XML with a RELAX NG schema, with rule-based
  validation for some constraints using Schematron

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

Wikiwikiweb
===========

.. note:: 1994/1995 wikiwikiweb *Presentational*

The first wiki, invented by Ward Cunningham

I think that newlines within a paragraph are ignored, but it's hard  to
tell.

The lack of capability is deliberate, aiming to promote a particular style
of discourse:

   "This wiki is quite bare bones, and intentionally so. Less formatting
   means you have to concentrate on saying things carefully and clearly.
   Content over form."

Introduced CamelCasedWords as wiki links.

Single quotes - this really distressed me when I first came across it:

- 1 = single quote
- 2 = emphasis
- 3 = bold
- 5 = emphasised bold (2+3)
- 6 are used to stop a CamelCased word from being a WikiLink

Later wiki formats appear not to have understood *why* the design decisions
were taken.

Like most wiki formats, specified by example, with no real rigour.

.. code::

  Paragraphs are not indented.

  * This is a list item
  ** This is a sub-list item

    Indented text is monospaced.

  We have ''emphasis'', '''bold''', '''''bold italic''''', and a LinkToAnotherPage.

  But we can A''''''voidMakingAWikiLink.

  No HTML, tables, headers, maths, scripts. No links within a page.

* WikiWikiWeb_ itself (now readonly).
* `Wikipedia on Wiki`_ talks about wiki pages themselves.
* `Wikipedia on WikiWikiWeb`_ talks about the first wiki. I don't particularly
  propose to talk about the (many) ways of marking up wiki text here. However,
  `Text Formatting Rules`_ is the page on wikiwikiweb about the markup it
  supported. It really did use differing numbers of single quotes to mean
  different sorts of markup. And inline meaningful tabs. Which is why I don't
  want to talk about it.

.. _WikiWikiWeb: http://wiki.c2.com/
.. _`Wikipedia on Wiki`: https://en.wikipedia.org/wiki/Wiki
.. _`Wikipedia on WikiWikiWeb`: https://en.wikipedia.org/wiki/WikiWikiWeb.
.. _`Text formatting rules`: http://wiki.c2.com/?TextFormattingRules


Programming language internal documentation
===========================================
Two examples, POD (from Perl) and javadoc (from Java), both of which are the
dominant standards for their respective languages.

POD
---

.. note:: 1994 POD *Presentational*. Still in use today.

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

The same year as wikiwikweb

  An example of markup to a specific purpose, and clearly very successful.

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

javadoc
-------

.. note:: 1995 javadoc *Presentational*. Still in use today.

Has never specified the subset of HTML it allows.

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

* `Wikipedia on Javadoc`_

.. _`The Timeline of Perl and its Culture`: http://history.perl.org/PerlTimeline.html
.. _perlpodspec: https://perldoc.perl.org/perlpodspec.html
.. _`Wikipedia on Javadoc`: https://en.wikipedia.org/wiki/Javadoc

Lightweight markup
==================

*Some sort of general introduction to why we want lightweight markups, and
what the trade-offs are.*

* `Why we need constrainable lightweight markup languages`_, Mark Baker, 2016,
  and sam_ (Semantic Authoring Markdown), his proposed solution (still under
  active development)
 
.. _`Why we need constrainable lightweight markup languages`:  http://everypageispageone.com/2016/06/05/why-we-need-constrainable-lightweight-markup-languages/
.. _sam: https://github.com/mbakeranalecta/sam

* `Common markup for Markdown and reStructuredText`_, Alexander Dupuy, 2017 -
  an attempt to describe the commonality between the two markups, so that text
  can be written to satisfy both.

.. _`Common markup for Markdown and reStructuredText`: https://gist.github.com/dupuy/1855764

* `reStructuredText vs Markdown for documentation`_, Victor Zverovich, 2016 -
  a short comparison.
  
.. _`reStructuredText vs Markdown for documentation`:  http://zverovich.net/2016/06/16/rst-vs-markdown.html

setext
======

.. note:: 1991 setext *Presentational*. Lightweight.

Ian Feldman, for use in writing the TidBITs electronic newsletter.

Partly a reaction to SGML. Clearly influential on all of the succeeding
lightweight markups.

Same year as HTML and Docbook

Note: the body text must be indented.

Underlining should really mean italics, following typewritten text
conventions.

Two dots for comments or special meaning.

Unclear if lists actually were supported. Specification not very clear,
specified by examples, not rigorous at all. Really just what he needed for his
own purposes.

  **Maybe** add an example of a link? (Links look very similar to one of the
  forms that reStructuredText supports)

-----------------

setext was invented by Ian Feldman as an alternative to RTF and SGML. He used
it to format the online magazine TidBITS from issue 100 - before that the
magazine was distributed as a HyperCard_ stack. 

An example:

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

.. note:: 1991 setext *Presentational*. Lightweight.

  Ian Feldman, for use in writing the TidBITs electronic newsletter.

  Excerpted from a document called "Why setext".

  Partly a reaction to SGML. Clearly influential on
  all of the succeeding lightweight markups.

  Same year as HTML

* `Wikipedia on setext`_ 
* The `docutils`_ site holds a `Setext Documents Mirror`_ which preserves copies
  of some of the setext documentation.
* The `wayback machine`_ also has some `setext documents`_

.. _HyperCard: https://en.wikipedia.org/wiki/HyperCard
.. _`Wikipedia on setext`: https://en.wikipedia.org/wiki/Setext
.. _`docutils`: http://docutils.sourceforge.net/
.. _`wayback machine`: https://web.archive.org
.. _`Setext Documents Mirror`: http://docutils.sourceforge.net/mirror/setext.html
.. _`setext documents`: https://web.archive.org/web/20010424104701/http://www.bsdi.com/setext/


Python's Doc-SIG
================
Python's Doc-SIG was started to look at documentation matters for Python, and
in particular had two main interests - how to write the text in docstrings,
and how to write "external" documentation.

For docstrings, it was a perceived wisdom that one had to be able to mark up
the names of function arguments, variable names and so on, so that tools could
use this information for some unspecified purpose. And in fact, there were
systems that *did* do exactly that - Zope being an example, where typing
information was taken from the docstring.

.. note:: It's not clear when docstrings_ were invented. I believe that Python
   took the idea from Lisp, and specifically from Emacs Lisp. Of course, the
   nice thing about docstrings is that they are part of the program data, so
   they can be inspected and manipulated like the rest of Python code.

   `This article`_ from 2013 is an interesting comparison of how to write Python
   vs Emacs Lisp docstrings.

.. _docstrings: `Python docstrings`_
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
   documentation, and, if one must, use of the 'mypy' style annotation in the
   code itself. I think there are interesting cultural reasons for this, and
   in part it allows one to not bother documenting function arguments whose
   intent is entirely obvious from their use and name.


StructuredText
==============

.. note:: 1996 StructuredText *Presentational*. Lightweight.

Created by Jim Fulton of Digital Creations (later Zope Foundation) for use
in Zope.

Clearly influenced by setext.

Significant indentation - good idea in a programming language, not so much
when writing plain text.

A heading is a heading because it is followed by a non-heading (!)

Single quotes or doubled backquotes for "inline" text.

Footnotes are fairly simple. Note the use of two dots to introduce the
actual footnote.

All block entities must be separated by blank lines.

Note that "o" can be a list delimiter - regarded as a serious ambiguity.

Specified by example, somewhat ambiguously.

----------------------

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

StructuredText was used extensively in the Zope world, in part to convey type
information [citation needed]. However there were various problems with it,
[give examples]. A start was made on a replacement format, StructuredTextNG
(for "Next Generation"), but that never really got finished, and to an
outsider it appeared to still have some of the same problems.

Some attempts were made on the Doc-SIG to start to come up with a replacement
that could be officially accepted, but Guido was not very receptive to the
idea - he disliked StructuredText, mainly, I think, because of its use of
indentation and its poor specification. He was also insistent that things
programmers might commonly want to type (like __init__ and <variable>)
should not require any escaping.

`An Introduction to reStructuredText`_ describes the influence of
StructuredText on reStructuredText. It wasn't very formally defined (although
no worse than many other similar markups).

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

Whilst StructuredText was not perfect, it was very influential in the Python
world, and I think that the dissatisfaction with it showed how close it came
to being the right system. It is significant that reStructuredText uses that
name.

.. _`MoinMoin on StructuredText`: https://moinmo.in/StructuredText
.. _`Jim Fulton`: http://jimfulton.info/
.. _`Older Projects`:  http://jimfulton.info/site/older-projects.html

* `An Introduction to Structured Text`_, Paul Everitt, undated - but all of
  the actual StructuredText has just been rendered as HTML, rendering the page
  fairly useless
 
* `zope.structuredtext`_ on github
  https://github.com/zopefoundation/zope.structuredtext
  is an implementation of a StructuredText parser, and appears to be the best source of examples.

* `Problems with StructuredText`_ is David Goodger's analysis of the problem.V

.. _`An Introduction to Structured Text`: http://old.zope.org/Documentation/Articles/STX/
.. _`zope.structuredtext`: https://github.com/zopefoundation/zope.structuredtext
.. _`Problems with StructuredText`: http://docutils.sourceforge.net/docs/dev/rst/problems.html

StructuredTextNG was an attempt to refactor StructuredText, but a final
specification and implementation were never completed. I did make an attempt,
at `StructuredTextNG - Format`_, to work out what it was meant to be, but the
need for this was superceded by later work, and in particular by
reStructuredText.

.. _`StructuredTextNG - Format`: http://www.tibsnjoan.co.uk/docutils/STNG-format.html

reStructuredText
================

.. note:: 2001/2002 reStructuredText *Presentational*. Lightweight.

David Goodger had a professional background in SGML.

Original mailing of the idea to the Doc-Sig was in Nov 2000

* Readable is the main aim.
* Output agnostic.
* Well specified, allowing other implementations which behave in the same way.

Clearly influenced by setext and StructuredText, but with more rigor.

Body text isn't indented, but things must line up when appropriate (see the lists).

NB: no underlining.
Consciously designed to allow doing certain things but not others - basically,
if a document is too complex for reStructuredText, use something like Docbook.

Sphinx was first introduced as a means of using reStructuredText to write
the Python documenation, instead of |LaTeX|.

Maybe mention that < and > are not special.

------------------

An example. Similar text to that for StructuredText:

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

The various forms of inline markup (``*..*``, ``**..``, etc.) cannot be nested
- this has been a known limitation for the life of reStructuredText, but no
final solution has been proposed yet.

The primary aims of reStructuredText are (a) readbility and (b)
predicatability. The first makes sense for a markup language designed for use
with Python, whose first aim is also to be readable. The second is natural
when the developer comes from a professional structured markup background -
David Goodger had worked on SGML-based documentation systems.

As you will have noticed, the earlier lightweight markup systems tended to be
informally specified, with ambiguities in their implementation. This means
that it was not always possible to predict the resultant output from a
document just by looking at it, and also that even if a second implementation
were made, it could only be consistent with the first by essentially
duplicating all of the minutiae of its source code.

So reStructuredText aims to be readble first, even if that means some
constructs are somewhat harder to write (for example, titles needing to be
underlined, or over and underlined, which is clearly harder to do than just
prepending N characters per title level). The original document is meant to
have equal standing with those produced by processing it.

Secondly, having a detailed specification (although I'd argue it is still very
readable) means one can know what an author meant by the document structure
they typed. This means that one can tell them when they got it wrong
(something some people appear not to like). It also makes it much easier to
produce alternate implementations, which either behave identically in their
understanding of the input text, or can be specific about where they are going
to differ. And this last has definitely benefited use of reStructuredText.

.. note:: I'm particularly fond of the implementation in VimL, the programming
   language within the Vim editor.

A much subtler, but I'd argue equally important aim, was to be entirely
agnostic about output format. Most lightweight markup formats, even today,
clearly favour one output format over another - for instance, markdown looks
like a simpler way of creating HTML, and asciidoc targets docbooks. That's not
necessarily a bad thing, partiuclarly when one output format can often be
turned into another with reasonable ease, but I like the purity of regarding
the actual final presentation as a detail. It has also allowed
reStructuredText to adopt forms that are related to the final form wanted,
rather than how it might be obtained - for instance, footnotes.

* `Wikipedia on reStructuredText`_
* reStructuredText_
* 2012 `An Introduction to reStructuredText`_, David Goodger. This also
  includes David's recounting of its history, which I'd say is accurate if a
  little too modest.

.. _`Wikipedia on reStructuredText`: https://en.wikipedia.org/wiki/ReStructuredText
.. _reStructuredText: 
.. _`An Introduction to reStructuredText`: http://docutils.sourceforge.net/docs/ref/rst/introduction.html

* `Kernel documentation with Sphinx`_, part 1 of an `LWN.net`_ article from
  2016, on how the Linux Kernel documentation is now using reStructuredText
  and Sphinx
* `CMake 3.0.0 Release Notes`_: CMake has also moved to reStructuredText and
  Sphinx

.. _`Kernel documentation with Sphinx`: https://lwn.net/Articles/692704/
.. _`LWN.net`: https://lwn.net/
.. _`CMake 3.0.0 Release Notes`:  https://cmake.org/cmake/help/v3.0/release/3.0.0.html

It's also worth looking at:

* `A Record of reStructuredText Syntax Alternatives`_, David Goodger, 2012 -
  i.e.. the roads not taken, and why not.
* `Problems With StructuredText`_, David Goodger, 2012 - yes, the project
  acknowledges various known shortcomings.

.. _`A Record of reStructuredText Syntax Alternatives`: http://docutils.sourceforge.net/docs/dev/rst/alternatives.html
.. _`Problems With StructuredText`: http://docutils.sourceforge.net/docs/dev/rst/problems.html

AsciiDoc
========

.. note:: 2002 Asciidoc *Presentational*. Lightweight.

Stuart Rackham

Aimed specifically as a lightweight way of producing docbook.

Producing docbook means that toolchains exist to produce almost anything else.

The original Asciidoc implementation was written in Python in 2002.

Asciidoctor came out in 2013, and is written in Ruby.

Well specified, allowing other implementations which behave in the same way.

Note the use of underlines to indicate emphasis, a nice look back to
typewritten manuscripts.

Paired plus signs for monotyped text.

Use of a + sign to continue a list item into a second paragraph.

Nice (easy to type) way of distinguishing opening and closing quotes.

Footnotes done inline - less readable, but more convenient.

---------------------

.. code:: reST

  This is a heading
  -----------------

  This is a paragraph. Body text is not indented.

  - This is a list item. Words can be _italic_, *bold* or
   +mono+ - yes, that's paired plus-signs.
  - This is a list item as well. We don't need blank lines between list items.
  +
  This is more of the second list item. It is "`joined on`" by the
  `+`.footnote:[Note the quotation marks around _joined on_.]

  This is a sub-heading
  ~~~~~~~~~~~~~~~~~~~~~

  Sub-section body text is not indented either. What makes sense for
  programming languages is irritating for text.

The tradeoffs made for a particular form of lightweight markup are always very
personal - one person's just-simple-enough is another person's step too far.
This means that developers keep trying to come up with a form of markup that
suits *their* sweet spot. Markup to fit their individual needs and wants.

So it shouldn't be a surprise that when I gave a lightning talk on "which
should I use, reStructuredText or Markdown?" I got a couple of people
asking why I hadn't talked about asciidoc. The answer was, in fact, mostly
ignorance on my part. There are many lightweight markup formats, and I just
hadn't realised how much use is made of asciidoc, and in particular of the
asciidoctor system.

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

The `AsciiDoc User Guide`_ seems comprehensive and to define the markup well.
It is clear that its ambitions are much more complex than those of
reStructuredText - it clearly aims to support a substantial portion of
docbook, whilst remaining (more) readable.

I'd say it's definitely further away from "looking like an email", but this
makes sense as its ambitions are greater.

.. note:: Jonathan Corbet did look at using AsciiDoc for the kernel
  documentaion, but Sphinx appears to have been a main contributor to the
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

Markdown
========

.. note:: 2004 markdown *Presentation*. Lightweight.

John Gruber, collaborating with Aaron Swartz on the syntax

*So* nearly a wonderful success.

Yes, I know headings can be underline as well, but I've never seen
anyone actually doing that.

* Aimed at producing HTML.

   From the syntax page: "Markdown’s syntax is intended for one purpose: to be
   used as a format for *writing* for the web." Their emphasis.

* Poorly specified. Ambiguous.
* Allows embedded HTML.
* Most implementations extend it, incompatibly.

Very successful because (the most popular variants) hit a good compromise on
the simplicity/capability curve.

Personally, I *think* that markdown would be improved a lot by just removing
the ability to embed HTML.

Hopefully CommonMark_ will improve the situation - for instance,
github-flavoured markdown is at least now based on CommonMark.

.. _CommonMark: http://commonmark.org/

  The Common Mark spec is at http://spec.commonmark.org/. It is clearly aimed
  to be a rigourous specification, which is excellent. Note that it calls
  the underlined heading style "setext headings", which is nice. It still
  retains the ability to embed HTML in a document, which is not so nice.

  The CommonMark specification is also an interesting summary of the problems
  and incompatibilities of the different implementations, and tries to explain
  *why* they have made the choices they have made. It is worth reading
  (although quite long).

  However, by the time we've got the rigour of a CommonMark, the complexity of
  the language seems to me to be at least that of reStructuredText, without
  the tidyness of that latter. I think there are many more surprises in how
  CommonMark "works".

----------------

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

...it should have been so wonderful... (me, just now)

.. note:: Would markdown be hurt **in any way** by just removing the ability
   to embed HTML?

The `original introduction to markdown`_ said:

  Markdown is a text-to-HTML conversion tool for web writers. Markdown allows
  you to write using an easy-to-read, easy-to-write plain text format, then
  convert it to structurally valid XHTML (or HTML).

The `original article on markdown's syntax`_ said:

  Markdown is intended to be as easy-to-read and easy-to-write as is feasible.

  Readability, however, is emphasized above all else. A Markdown-formatted
  document should be publishable as-is, as plain text, without looking like
  it’s been marked up with tags or formatting instructions. While Markdown’s
  syntax has been influenced by several existing text-to-HTML filters —
  including Setext, atx, Textile, reStructuredText, Grutatext, and EtText —
  the single biggest source of inspiration for Markdown’s syntax is the format
  of plain text email.

Personally, I think that aim is compromised by allowing HTML within markdown
documents, and especially the consequent need to treat "<" and "&" (but not
(">") specially in some cases (there are rules as to when).

Whilst markdown does support using underlines for headings (it specifies what
sort of underlining for each level), it also supports the use of multiple "#"
characters instead, and this seems to be the more colloquial usage.

An example:

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

It's worth reading the document as a whole. Unfortunately, it is *not* a
precise description of markdown, which has led to differences in
interpretation. Equally unfortunately, John Gruber has refused to update the
specification beyond that first document, so the problems may be expected to
remain.

Regardles, markdown has appeared to hit a "sweet spot" between readbility
versus capability, which has led to its use as a default markup language for
many purposes. I *think* that github-flavoured markdown may be the dominant
version at the moment.

    There's clearly a space for something very like markdown - something
    simpler than reStructuredText or Asciidoc, but still readable. However,
    whilst markdown has some of that, it still isn't really *it*.

.. note:: The markdown documentation lists various influences - here they are
   with links:

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
    compared with the others, I think markdown looks not too bad.

    I'm surprised that AsciiDoc_ isn't mentioned in the influences.

* `Wikipedia on markdown`_
* CommonMark_ is an attempt to provide a well-specified successor form of
  markdown. The page explains the problem they're trying to solve well. It was
  initially to be called "Standard Markdown", but that led to problems, as
  documented at `Standard Markdown is now Common Markdown`_, and hence the
  name change.

.. _`Wikipedia on markdown`: https://en.wikipedia.org/wiki/Markdown
.. _`original introduction to markdown`: https://daringfireball.net/projects/markdown/a
.. _`original article on markdown's syntax`: https://daringfireball.net/projects/markdown/syntax
.. _CommonMark: http://commonmark.org/
.. _`Standard Markdown is now Common Markdown`: https://blog.codinghorror.com/standard-markdown-is-now-common-markdown/

Note that the IETF `RFC 7763: The text/markdown Media Type`_ (from 2016)
explicitly says, in section 1.1:

      [MDSYNTAX] explicitly rejects the notion of validity: there is no such
      thing as "invalid" Markdown.

which one might, perhaps, find distressing.

.. _`RFC 7763: The text/markdown Media Type`: https://tools.ietf.org/html/rfc7763

.. _atx: http://www.aaronsw.com/2002/atx/
.. _Textile: http://www.booked.net/textism.html
.. _Grutatxt: http://triptico.com/software/grutatxt.html
.. _EtText: http://ettext.taint.org/doc/

* `Why You Shouldn’t Use “Markdown” for Documentation`_, Eric Holscher, 2016

* `markdown considered harmful (or perhaps just a loved but irritating old uncle)`_,
  bowerbird intelligentleman, 2013 (although he still likes markdown, despite
  the problems). This is also an interesting history of why markdown is where
  it is today (or, anyway, when the author was writing). He goes on to propose
  "Zen markup language" - see `beyond markdown, part 1`_, 2014 - although I
  don't know if it has ever materialised beyond the articles.

.. _`Why You Shouldn’t Use “Markdown” for Documentation`: http://ericholscher.com/blog/2016/mar/15/dont-use-markdown-for-technical-docs/
.. _`markdown considered harmful (or perhaps just a loved but irritating old uncle)`: https://medium.com/the-bower/markdown-considered-harmful-495ccfe24a52
.. _`beyond markdown, part 1`: https://medium.com/the-bower/beyond-markdown-part-1-2300665659f7

* `Why Markdown is not my favourite language`_ (from 2012) shares many of my
  grumbles about markdown, gives a reasoned look at reStructuredText, and
  decides that actually the best hope is actually Creole_. Unfortunately, I
  don't think there's been much adoption of Creole.

.. _`Why Markdown is not my favourite language`: http://www.wilfred.me.uk/blog/2012/07/30/why-markdown-is-not-my-favourite-language/
.. _Creole: http://www.wikicreole.org/

Other lightweight markups
=========================
A very scattershot section.

`Org-Mode Is One of the Most Reasonable Markup Language to Use for Text`_,
Karl Voit, 2017. Emacs org-mode considered as a general markup language

.. _`Org-Mode Is One of the Most Reasonable Markup Language to Use for Text`: http://karl-voit.at/2017/09/23/orgmode-as-markup-only/
  considered as markup

Pollen_, a lightweight programmable markup written in Racket_, Matthew
Butterick, 2017

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
* 1990s HTML, setext, Docbook, WikiWikiWeb, POD, javadoc, StructuredText, XML
* 2000s reStructuredText, AsciiDoc, markdown

Written using reStructuredText_.

Source and extended notes at https://github.com/tibs/markup-history

You may also be interested in Write the Docs: http://www.writethedocs.org/

.. vim: set filetype=rst tabstop=8 softtabstop=2 shiftwidth=2 expandtab:
