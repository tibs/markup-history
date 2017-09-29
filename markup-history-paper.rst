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

How I'm going to split the world
================================

There are different sorts of markup, with different purposes, but I am going
to concentrate on three main types, which I shall categorise as:

1. Presentational markup

   This uses markup to direct the presentation of the text, for instance as a
   man page, on a screen, or on a typeset page.

   Traditional examples are the ``*roff`` family (roff, nroff, troff, groff
   and the various sorts of RUNOFF) and the |TeX| family (|TeX|, |LaTeX|, etc.)

2. Semantic markup

   This uses markup to add meaning to the text, typically by annotating
   textual elements to say what they are (e.g., part number, book title,
   address).

   Traditional examples are the markups described by SGML (or, lighter weight,
   XML), including Docbook.

3. Readable plaintext

   This attempts to get some of the benefits of one of the other types
   (typically concentrating on presentation) whilst preserving the readability
   of the original text. Interestingly, these have been around about as long
   as the other forms, but are less talked about.

   The ur-language for this form is probably setext, but obvious examples
   include StructuredText, reStructuredText and markdown.

   The art of design of these markups is judging what capabilities are wanted
   - the more things the markup can represent, the more complex the
   restrictions on what may be typed as free text, and what has accidental
   meaning.

   .. note:: The classic aim is to be "close to what one would write in an
      email" - a stricture that meant more when emails could only contain
      ASCII text.

   .. note:: I think this is why some people object to reStructuredText but
      are happy with markdown. reStructuredText aims to provide a lot of
      capability (such that one rarely needs to stray into something like
      |TeX| or Docbook), whereas markdown puts that balance a lot closer to
      plain text.

.. note:: I think that means it is also sensible to separate out the three
   timelines. There will obviously have been cross-fertilisation, but it's
   probably much simpler not to mix them up, because that can lead to an
   artificial expectation of causation across the timelines, which I am
   suspicious of.

   (I'm not convinced the roffs and the SGMLs were well related in the early
   days, for instance. And that's irrespective of whether the different
   developers knew of each others work.)

Presentational markup
=====================
The early days
--------------
This started with output to teletype (underlining, bolding, and otherwise
overstruct characters) and to line printers. Eventually, output to
monotype/linotype/etc. got added in.

For instance: nroff/troff, DSR (Digital Standard Runnoff)

The need was to type basic alphanumerics and symbols (i.e., ASCII or EBCDIC)
but output to something with the ability to represent more. For teletypes,
this might just mean the use of the backspace character to allow overwriting
text - but doing that in the original text file would not necessarily be
portable or readable.

Needs:

* Use portable character sets (not necessarily only ASCII and EBCDIC!)
* Don't want to type in the "magic codes" to do unerlining, etc., especially
  as they're not necessarily going to be the same codes for different output
  devices.

Programmable markup
-------------------

.. note:: Wikipedia calls this "Procedural markup"

There is an important subset of presentation markup, which is actually a
progamming language that privides markup. The obvious examples are |TeX| and
Postscript (and to a lesser extent, PDF).

|TeX| is essentially a macro expansion language, and this means that the
(perhaps more familiar) |LaTeX| is written in |TeX| itself.

Postscript is perhaps not normally thought of as a markup lanugage,
but is essentially a Forth derivative that works on text to produce a
printable output.

As such, both of these languages can be used to do non-text processing as well,
although perhaps not in a manner that feels natural (to their intent).

PDF incorporates a subset of Postscript, but is much more page oriented (pages are
independent) and less general in its applicability, so is arguably not quite
in our area of interest.

Semantic markup
===============

.. note:: Wikipedia calls this Descriptive markup

* SGML (and DTDS)

  leading to:

  * HTML
  * XML
  * XHTML
  * Docbook

  and so on.

(SGML originally derived from GML)

Readable plaintext
==================

.. note:: Wikipedia seems to put these together with such things as wiki
   markup as Lightweight markup. I'd argue there's a difference between
   lightweight markup and the subset therein which is readable, and it's that
   latter subset I'm most interested in.

.. note:: It would be nice to get an actual timeline from setext to structured
   text to reStructuredText and any other intermediaries.

setext -> structured text

The big ideas of reStructuredText:

  1. prioritise readability of the source text
  2. not to specify the form of the output (i.e., don't just assume HTML)
  3. be well specified

Other examples:

* markdown (I'd argue less readable, because it's meant to be slightly easier
  to write, and it originally was designed for output to HTML, and it's
  *definitely* not well specified)

* asciidoctor (how does this differ on those three axes?)

Talking points for the slideshow
================================

"Why markup languages are older than you think, and some of the major
examples"

All four have different reasons for existing, but clearly influence each
other.

*So*, for each pick a major example - perhaps:

* nroff/troff (different programs, but same input format - does *it* have a
  name?)
* SGML/HTML/XML and maybe a brief nod to Docbook
* |TeX|/|LaTeX| (more people use |LaTeX| than bare |TeX|)
* setext -> structured text -> reStructuredText

Want dates for each

Driving forces:

- I want portable documentation
- I want good (but controllable) typesetting
- I want to mark up the meaning of the elements of my text, for analysis
- I want readable source

Initial links
=============
The results of a quick link trawl:

* https://en.wikipedia.org/wiki/Markup_language - see the taxonomy of (three) types therein, and the history section
 
* https://en.wikipedia.org/wiki/List_of_document_markup_languages
 
* https://alistapart.com/article/a-brief-history-of-markup - 2010, HTML and its friends
* http://taxodiary.com/2012/12/a-brief-history-of-markup-languages/ - 2012
* http://digitalhumanities.org/answers/topic/history-of-markup-and-markup-languages - 6 years ago
* https://www.ukessays.com/essays/information-technology/the-history-of-markup-languages-information-technology-essay.php - 2015, XML/HTML/SGML/TeX
* https://www.xml.com/pub/a/w3j/s3.connolly.html - 1997 - The Evolution of Web Documents: The Ascent of XML
* http://www.cs.cornell.edu/courses/cs431/2008sp/Lectures/public/lecture_2_11_08.pdf - 2008, SGML/HTML/XML/XHTML, slides
* http://www.adkinsuhs.com/uploads/7/6/9/4/76943899/markup_languages.pdf - somewhat ditto, slides
* https://www.timetoast.com/timelines/markup-languages-evolution - timeline, weirdly restrictive in what it covers
* https://chnm.gmu.edu/digitalhistory/links/pdf/chapter3/3.19a.pdf - 1992, Brief History of Document Markup
* http://pustakalaya.org/wiki/wp/m/Markup_language.htm - 2008 (?) but *very*
  useful
 
 
* http://history-computer.com/Internet/Birth/Goldfarb.html - Charles Goldfarb—the Godfather of Markup Languages
 
* https://www.w3.org/TR/REC-MathML/chapter1.html - mathematics notation
 
* https://en.wikipedia.org/wiki/ReStructuredText and https://en.wikipedia.org/wiki/ReStructuredText#History
* https://en.wikipedia.org/wiki/Setext
* http://docutils.sourceforge.net/mirror/setext.html - setext mirror
* https://www.w3.org/MarkUp/html-test/setext/setext+sgml_01.html - SGML vs setext, etc

* http://www.sgmlsource.com/history/index.htm - The SGML History Niche - six
  papers, looks like they may be by Goldfarb

* http://www.tei-c.org/Vault/ - TEI (Text Encoding Initiative) Archive,
  1988-1999, with link to another part for 1987-1988

* http://www.tbray.org/ongoing/When/200x/2008/02/10/XML-People - Tim Bray,
  originally writing in 1998, on XML People.

* http://www.tei-c.org/Support/Learn/tei_bibliography.xml - A bibliography of
  publications related to the text encoding initiative

* https://quod.lib.umich.edu/j/jep/3336451.0003.406?view=text;rgn=main - 1998
  SGML and PDF -- why we need both

* http://www.math.utah.edu/~beebe/talks/2003/tug2003/tug2003-keynote.pdf -
  2003 25 years of |TeX| and METAFONT: Looking back and looking forward:
  TUG'2003 Keynote Address

* https://is.muni.cz/el/1433/jaro2016/PB138/um/printable/01_intro_markup.html?lang=en - 2016 
  Introduction to Markup Languages

* https://en.wikipedia.org/wiki/Portable_Document_Format
* https://en.wikipedia.org/wiki/PostScript

* https://linux.die.net/man/7/roff - roff - concepts and history of roff typesetting 
* https://www.revolvy.com/topic/Roff%20(computer%20program), whose content is
  from https://en.wikipedia.org/wiki/Roff_(computer_program) on wikipedia, but
  the pages on this site seem to be good at leading one into a veritable
  labyrinth of links (also all derived from wikipedia?) - e.g.:

  * https://en.wikipedia.org/wiki/TYPSET_and_RUNOFF
  * https://en.wikipedia.org/wiki/TJ-2

    TJ-2 (Type Justifying Program) was published by Peter Samson in May 1963
    and is thought to be the first page layout program. ...  TJ-2 was
    succeeded by TYPSET and RUNOFF, a pair of complementary programs written
    in 1964 for the CTSS operating system. TYPSET and RUNOFF soon evolved
    into runoff for Multics, which was in turn ported to Unix in the 1970s as
    roff.

  * https://en.wikipedia.org/wiki/Txt2tags
  * https://en.wikipedia.org/wiki/Runoff_(program)
  * https://en.wikipedia.org/wiki/Troff
  * https://en.wikipedia.org/wiki/Pic_language
  * https://en.wikipedia.org/wiki/Groff_(software)
  * https://en.wikipedia.org/wiki/Nroff
  * https://en.wikipedia.org/wiki/Markup_language
  * https://en.wikipedia.org/wiki/TeX
  * 

* Let's not forget https://en.wikipedia.org/wiki/AsciiDoc (and
  http://asciidoctor.org/) although I don't want to dwell on them


* https://www.livinginternet.com/i/iw_unix_dev.htm ::

    In the spring of 1971, the interest in Unix began to grow, so instead of
    writing a new text-processing system as originally proposed, Thompson and
    Ritchie translated the existing "roff" text formatter from the PDP-7 to the
    PDP-11 and made it available to the Patent department on their new Unix
    system. This practical success helped convince Bell Labs of the value of
    Unix, and shortly thereafter they bought the team one of the first, powerful
    PDP-11/45 minicomputers to continue their development. A series of
    progressively better "editions" of Unix were then released.

Timeline?
=========
need to put in setext, markdown, nroff/troff/groff, RUNOFF

* 1964 RUNOFF https://en.wikipedia.org/wiki/TYPSET_and_RUNOFF

  - also, the RUNOFF program https://en.wikipedia.org/wiki/Runoff_(program)

* 1969 roff
* nroff (newer roff) https://en.wikipedia.org/wiki/Nroff
* troff (typesetter roff) https://en.wikipedia.org/wiki/Troff

  - in various versions, and with increasing capabilities. nroff basically
    ignores what it doesn't understand when reading the same input.

* 1990s groff (GNU roff)

http://h20565.www2.hpe.com/hpsc/doc/public/display?docId=emr_na-c04623260 is
the OpenVMS Digital Standard Runoff Reference Manual from May 1993.

and

* 1967 - GenCode, William W. Tunnicliffe ("generic coding") - publishing industry.
* 1969 - GML, Charles Goldfarb
* 1974 (is that date right?) - SGML
* 1978 ?? - TeX
* 1980 - Scribe, Brian Reid, doctoral thesis
* 1984 ?? - LaTeX
* 1986 - SGML ISO Standard ISO 8879
* 1989 ?? - HTML
* setext - introduced 1991
* 1996 - XML
* StructuredText - introduced through Zope
* reStructuredText - 
* MathML - 

Found things
============
http://minnie.tuhs.org/pipermail/tuhs/2017-April/009638.html ::

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
* [T] 1982 |TeX| and Metafont in Pascal
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

Mumblings
=========

General links
-------------
* `Wikipedia - Markup Language`_
* `Wikipedia - List of document markup languages`_
* `Charles Goldfarb — the Godfather of Markup Languages`_, Georgi Dalako.
* 2016 `An informal look into the history of digital typography`_, David Walden

.. _`Wikipedia - Markup Language`: https://en.wikipedia.org/wiki/Markup_language
.. _`Wikipedia - List of document markup languages`: https://en.wikipedia.org/wiki/List_of_document_markup_languages
.. _`Charles Goldfarb — the Godfather of Markup Languages`: http://history-computer.com/Internet/Birth/Goldfarb.html
.. _`An informal look into the history of digital typography`: http://www.tug.org/tug2016/walden-digital.pdf

HTML/XML/XHTML specific links
-----------------------------
These may get removed - I'm not particularly interested in this part of the
history, and it's really a specialism of its own, with its own consideration
and politics.

* 1997 `The Evolution of Web Documents`_, Dan Connolly, Rohit Khare, and Adam
  Rifkin. HTML, SML, SGML.
* 1998 (republished 2008) `XML People`_, Tim Bray. A look at the people who
  influenced development of XML
*  2010 `A brief history of markup`_, Jeremy Keith. From HTML 2.0 through XHTML to HTML5.
* https://www.ukessays.com/essays/information-technology/the-history-of-markup-languages-information-technology-essay.php

.. _`The Evolution of Web Documents`: https://www.xml.com/pub/a/w3j/s3.connolly.html
.. _`XML People`: http://www.tbray.org/ongoing/When/200x/2008/02/10/XML-People
.. _`A brief history of markup`: https://alistapart.com/article/a-brief-history-of-markup

Collections of information
--------------------------
* 1988-1999 Text Encoding Initiative `The TEI Archive`_
* ????-2013`A Bibliography of Publications Related to the Text Encoding Initiative`_
  which are not just related to TEI itself
* 2002/2003 `The SGML History Niche`_, Charles F. Goldfarb. Some personal
  recollections.

.. _`The TEI Archive`: http://www.tei-c.org/Vault/
.. _`A Bibliography of Publications Related to the Text Encoding Initiative`: http://www.tei-c.org/Support/Learn/tei_bibliography.xml
.. _`The SGML History Niche`: http://www.sgmlsource.com/history/index.htm

Miscellaneous links
-------------------
* `Wikipedia - scribe`_. Scribe was another influential early markup language,
  from around 1908.
* `Wikipedia - PostScript`_
* `Wikipedia - Wiki`_ talks about wiki pages themselves.
* `Wikipedia - WikiWikiWeb`_ talks about the first wiki. I don't particularly
  propose to talk about the (many) ways of marking up wiki text here. However,
  `Text Formatting Rules`_ is the page on wikiwikiweb about the markup it
  supported. It really did use differing numbers of single quotes to mean
  different sorts of markup. And inline meaningful tabs. Which is why I don't
  want to talk about it.
* `A Brief History of the Development of SMDL and HyTime`_. OK, just one link
  to an article about marking up music. Although I actually find Lilypond_
  (1996 and later) more interesting.
* `Why Markdown is not my favourite language`_ (from 2012) shares many of my
  grumbles about markdown, gives a reasoned look at reStructuredText, and
  decides that actually the best hope is actually Creole_. Unfortunately, I
  don't think there's been much adoption of Creole.
* http://karl-voit.at/2017/09/23/orgmode-as-markup-only/ - orgmore (in Emacs)
  considered as markup

.. _`Wikipedia - PostScript`: https://en.wikipedia.org/wiki/PostScript
.. _`Wikipedia - scribe`: https://en.wikipedia.org/wiki/Scribe_(markup_language)
.. _`Wikipedia - Wiki`: https://en.wikipedia.org/wiki/Wiki
.. _`Wikipedia - WikiWikiWeb`: https://en.wikipedia.org/wiki/WikiWikiWeb.
.. _`Text formatting rules`: http://wiki.c2.com/?TextFormattingRules
.. _`A Brief History of the Development of SMDL and HyTime`: http://www.sgmlsource.com/history/hthist.htm
.. _`Why Markdown is not my favourite language`: http://www.wilfred.me.uk/blog/2012/07/30/why-markdown-is-not-my-favourite-language/
.. _Creole: http://www.wikicreole.org/
.. _Lilypond: http://lilypond.org/

RUNOFF
------
Simple text layout and pagination, including right justification.

An example::

   .center
   AN EXAMPLE


* https://en.wikipedia.org/wiki/TYPSET_and_RUNOFF

roff and friends
----------------

An example::

   ...


* https://en.wikipedia.org/wiki/Troff
* https://www.freebsd.org/cgi/man.cgi?query=roff&apropos=0&sektion=7&format=ascii

SGML
----

An example::

   ...


Links:

* `The Implications of SGML for the Preparation of Scientific Publications`_,
  Joan Smith, *The Computer Journal*, Volume 29, Issue 3, 1 January 1986,
  Pages 193-200

.. _`The Implications of SGML for the Preparation of Scientific Publications`: https://academic.oup.com/comjnl/article-lookup/doi/10.1093/comjnl/29.3.193


TEI
---

"""The mission of the Text Encoding Initiative is to develop and maintain a
set of high-quality guidelines for the encoding of humanities texts, and to
support their use by a wide community of projects, institutions, and
individuals"""

This alone looks like a whole field of study I haven't even started - I don't
expect to be able to do it justice here.

An example::

   ...

Links:

* https://en.wikipedia.org/wiki/Text_Encoding_Initiative
* http://www.tei-c.org/index.xml

Scribe
------

An example::

    @Heading(The Beginning)
    @Begin(Quotation)
        Let's start at the very beginning, a @i(very good place) to start
    @End(Quotation)

but that can also be written::

    @Heading(The Beginning)
    @(Quotation
        Let's start at the very beginning, a @i(very good place) to start
    )

Links:

* https://en.wikipedia.org/wiki/Scribe_(markup_language)
* http://reports-archive.adm.cs.cmu.edu/anon/scan/CMU-CS-81-100.pdf - Brian Reid's
  1980 doctoral dissertation at Carnegie Mellon University describes it. My
  first quick scan suggests that this is very worth reading. NB: It mentions
  |TeX| and EQN (the roff-related tool for equations).
* http://bitsavers.informatik.uni-stuttgart.de/pdf/cmu/scribe/Scribe_Introductory_Users_Manual_Jul78.pdf

Scriba_ is "a markup format similar to Scribe". It references Skribilo_ and
scribble_ as being similar.

.. _Scriba: https://github.com/CommonDoc/scriba
.. _Skribilo: http://www.nongnu.org/skribilo/
.. _scribble: http://quickdocs.org/scribble/

.. note:: Is the Scribe described at

      http://www-sop.inria.fr/members/Manuel.Serrano/scribe/doc/scribe.html

   the same thing? It appears to be a Scheme-based programming language for
   authoring documentation.

HTML
----

An example::

   ...

Docbook
-------

An example::

    ...

DocBook before 4.1 - SGML with a DTD
DocBook from 4.1 but before 5 - SGML/XML with a DTD
2005 DocBook 5 and later - XML with a RELAX NG schema, with rule-based
validation for some constraints using Schematron

Links:

* `Wikipedia - DocBook`_
* `The DocBook Project`_ on Sourceforge
* `DocBook.org`_ - the official site for the book "DocBook 5: The
  Definitive Guide", 2004-2006 Norman Walsh. The book itself is online at
  http://tdg.docbook.org/
* https://workaround.org/docbook/ is a quick introduction to DocBook

.. _`Wikipedia - DocBook`: https://en.wikipedia.org/wiki/DocBook
.. _`The DocBook Project`: http://docbook.sourceforge.net/
.. _`DocBook.org`: http://docbook.org/

POD
---
Perl's POD (or Plain Old Documentation) is clearly influenced by 

An example::

   ...

Links:

* `The Timeline of Perl and its Culture`_ explains that POD was introduced in
  1995 at the same time as Perl 5.001. This is a very nice brief history of
  the significant events in Perl, from the 1960s to 2002, with links at the
  end.
* https://perldoc.perl.org/perlpodspec.html


.. _`The Timeline of Perl and its Culture`: http://history.perl.org/PerlTimeline.html

|TeX|
-----

An example::

   \beginsection
   A new section

   Paragraphs are separated by blank lines. `Quotation marks' differ. {\it
   Italics are done so}. Equations are important, and can be inline:
   $$|y - z| < \epsilon$$. Hyphen (-), ranges (1--4) and dashes (---) are all
   distinct.

   However, more people use systems {\it written} in \TeX, such as \LaTeX,
   because they provide ready-made support for most document elements.

   \bye

   
.. note:: I used to write plain |TeX|, but most people actually use |LaTeX|,
   which dates from about 1983/1984, or one of the other systems written in
   |TeX|.

Links:

* 2003 `25 Years of TEX and METAFONT`_: Looking Back and Looking Forward:
  TUG’2003 Keynote Address`, Nelson H. F. Beebe. Including sections on "What
  did |TeX| do right" and "What did |TeX| do wrong".

.. _`25 Years of TEX and METAFONT`: http://www.math.utah.edu/~beebe/talks/2003/tug2003/tug2003-keynote.pdf

----


Python's Doc-SIG
----------------
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

.. _docstrings: https://en.wikipedia.org/wiki/Docstring
.. _`this article`: http://xahlee.info/comp/python_vs_elisp_docstring_convention.html

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

setext
------
setext was invented by Ian Feldman as an alternative to RTF and SGML. He used
it to format the online magazine TidBITS from issue 100 - before that the
magazine was distributed as a HyperCard_ stack. 

An example::

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

Links:

* `Wikipedia - setext`_ 
* The `docutils`_ site holds a `Setext Documents Mirror`_ which preserves copies
  of some of the setext documentation.
* The `wayback machine`_ also has some `setext documents`_

.. _HyperCard: https://en.wikipedia.org/wiki/HyperCard
.. _`Wikipedia - setext`: https://en.wikipedia.org/wiki/Setext
.. _`docutils`: http://docutils.sourceforge.net/
.. _`wayback machine`: https://web.archive.org
.. _`Setext Documents Mirror`: http://docutils.sourceforge.net/mirror/setext.html
.. _`setext documents`: https://web.archive.org/web/20010424104701/http://www.bsdi.com/setext/

StructuredText
--------------
StructuredText was used extensively in the Zope world, in part to convey type
information [citation needed]. However there were various problems with it,
[give examples]. A start was made on a replacement format, StructuredTextNG
(for "Next Generation"), but that never really got finished, and to an
outsider it appeared to still have some of the same problems.

Some attempts were made on the Doc-SIG to start to come up with a replacement
that could be officially accepted, but Guido was not very receptive to the
idea - he disliked StructuredText, mainly, I think, because of its use of
indentation and its poor specification. He was also insistent that things
programmers might commonly want to type (like __init__ and <variable>) [1]_
should not require any escaping.

An example::

   ...

StructuredTextNG
----------------

An example::

   ...

reStructuredText
----------------

An example::

   ...

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

Links:

* `Wikipedia - reStructuredText`_
* 2012 `An Introduction to reStructuredText`_, David Goodger. This also
  includes David's recounting of its history, which I'd say is accurate if a
  little too modest.

.. _`Wikipedia - reStructuredText`: https://en.wikipedia.org/wiki/ReStructuredText
.. _`An Introduction to reStructuredText`: http://docutils.sourceforge.net/docs/ref/rst/introduction.html

Asciidoc
--------
The tradeoffs made for a particular form of lightweight markup are always very
personal - one person's just-simple-enough is another person's step too far.
This means that developers keep trying to come up with a form of markup that
suits *their* sweet spot. Markup to fit their individual needs and wants.

So it shouldn't be a surprise that when I gave a lightning talk on "which
should I use, reStructuredText or Markdown?" [2]_ I got a couple of people
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

An example::

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

Links:

* `Wikipedia - AsciiDoc`_
* AsciiDoc_ homepage
* AsciiDoctor_ - "Asciidoctor is a fast text processor and publishing toolchain
  for converting AsciiDoc content to HTML5, DocBook 5 (or 4.5) and other
  formats."

.. _`Wikipedia - AsciiDoc`: https://en.wikipedia.org/wiki/AsciiDoc
.. _AsciiDoc: http://asciidoc.org/
.. _AsciiDoctor: http://asciidoctor.org/
.. _`AsciiDoc User Guide`: http://asciidoc.org/userguide.html


Markdown
--------

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

An example::

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

Links:

* `Wikipedia - markdown`_
* CommonMark_ is an attempt to provide a well-specified successor form of
  markdown. The page explains the problem they're trying to solve well. It was
  initially to be called "Standard Markdown", but that led to problems, as
  documented at `Standard Markdown is now Common Markdown`_, and hence the
  name change.

.. _`Wikipedia - markdown`: https://en.wikipedia.org/wiki/Markdown
.. _`original introduction to markdown`: https://daringfireball.net/projects/markdown/a
.. _`original article on markdown's syntax`: https://daringfireball.net/projects/markdown/syntax
.. _CommonMark: http://commonmark.org/
.. _`Standard Markdown is now Common Markdown`: https://blog.codinghorror.com/standard-markdown-is-now-common-markdown/

Other links - to the influences markdown references:

* setext: http://docutils.sourceforge.net/mirror/setext.html
* atx: http://www.aaronsw.com/2002/atx/ - appears very simple, not very
  sophisticated
* Textile: http://www.booked.net/textism.html - shortcuts for HTML
* reStructuredText: http://docutils.sourceforge.net/rst.html
* Grutatxt: http://triptico.com/software/grutatxt.html - appears to date from
  2000 onwards. Simple but ambiguous documentation.
* EtText: http://ettext.taint.org/doc/ - explicitly influenced by setext,
  wikiwikiweb, txt2html, Userland's Frontier, and StructuredText.

Of those, I think only reStructuredText has a decent definition. Also,
compared with the others, I think markdown looks not too bad.

Although it's interesting that AsciiDoc isn't mentioned in the influences.

Readability versus writeability
-------------------------------
There is an obvious tradeoff to be made between how readable a format is, and
how simple it is to write. For instance, delimiting headers by leading
characters::

  # Header 1
  ## Header 2

is much simpler than having to type underlines::

  Header 1
  ========

  Header 2
  --------

Also, having a pre-defined set of underlines (e.g., ``===`` always means title,
``---`` means subtitle, etc.) is easier to learn and easier to use than
allowing any underlining choice (provided it is consistent within a document),
but may be considered to remove the author's choice on which form of
underlining reads best *in this particular document*.

As in so many things, the Zen of Python still has applicability - it is then
left up to the reader how well it has been followed.

The advantages of having a competent specification
--------------------------------------------------
It is normally regarded as a good thing to have multiple implementations of a
specification - not least because it helps to iron out misunderstandings of
what that specification means. Standardisation can help to mediate that
understanding (although not always as much as one might hope), and Python gets
by quite well by just having people communicate a lot and having a reasonable
test suite for the language.

It's not always an obviously good thing, though.

There are many forms of markdown, but the original implementation of markdown
is essentially frozen, as is the original documentation, and that "definition"
of markdown is both ambiguous, and does not address various tasks that people
want to do. Nor is the original author willing to help with this situation [3]_.
This means that different markdown implementations provide their
own decisions on the ambiguous parts, and provide their own extensions.
Unfortunately this means that markdown text is not necessarily portable
between implementations. In practice, however, this probably doesn't matter
much, as the use of markdown is often for documentation that belongs to a
particular site or user environment, and interoperability within that
site/environment is enough.

In contrast, reStructuredText is quite well specified (David Goodger having a
background in SGML systems, after all). This means that the various
implementations of reStructuredText can be specific about what they do or
don't support, and in general interoperability should be better, or at least
more predictable.

Incidentally, it probably also makes it possible to produce a general linter for
reStructuredText - i.e., a program to inspect the text for errors before
running it through docutils to produce output - which is harder to do in a
portable manner for markdown, because there are so many markdowns.

.. [1] both not escaped in this text, of course
.. [2] the answer is, of course, "whichever is suitable" / "whichever you
   choose", although I would suggest that for a large public project (gov.uk,
   documentation for the RaspberryPi) markdown should be adopted, as it is
   simpler, whilst for more challenging uses (or people who prefer more
   challenging markup), reStructuredText is good. And as reStructuredText
   suggests that "if you need to do things it doesn't support, use something
   else", then I think the same can apply to markdown and (perhaps) moving on
   to reStructuredText.
.. [3] whilst I personally find that hard to understand, it's not as if we're
   *paying* anything for the privilege of using markdown, we're using
   something given freely as it is/was.


Comparisons
-----------
Comparing markdown, reStructuredText and AsciiDoc (to pick three).

*Is this section worth anything? I'm not actually convinced.*

NB: check whether AsciiDoctor also always goes through docbook

  ======================   ============  ====================     ========================
  **Concept**              **markdown**  **reStructuredText**     **AsciiDoc**
  ----------------------   ------------  --------------------     ------------------------
  readability              a main aim    the main aim             a main aim
  closely specified        no            yes                      yes
  output to                various       various                  docbook and then various
  inline HTML              yes           delimited [#a]_          delimited [#b]_
  nested inline markup     ?             no                       yes
  non-trivial list items   no            yes                      yes
  extensible               no            directives               macros
  conditional text         no            no                       no
  executable text          no            no [#c]_                 yes
  tables                   not standard  yes                      yes
  ======================   ============  ====================     ========================


.. [#a] reStructuredText allows the writer to add HTML via a directive,
   but it will only be used if the output is to HTML.
.. [#b] AsciiDoc produces HTML via Docbook, and Docbook provides a way of
   including a file of raw HTML into the HTML output.
.. [#c] this is a very conscious decision by reStructuredText

-----------------

Maybe there should be an entry for wikiwikiweb after all.

.. note:: Why do so many markup creators believe that lists are just made up
   of list items with no internal structure? Do they really never want to
   put code into list items, or have more than one paragraph per item? Given
   the experience of the lengths people will go to in those wiki formats that
   are similarly crippled to make it *look* as if one can do these things,
   this would appear always to be a mistake. Back in the origianl wikiwikiweb,
   I think that it was quite deliberate - if one looks at the types of page
   being written in that wiki, there was no intent to have anything beyond a
   sort of "notation" page - it wasn't intended for writing whole documents.
   For other wikis, I suspect many have copied that limitation without
   thinking about the implications. For actual markup formats, though
   (expecially those targetting HTML, which is many of them), it's rather
   harder to understand the limitation.

.. vim: set filetype=rst tabstop=8  softtabstop=2 shiftwidth=2 expandtab:
