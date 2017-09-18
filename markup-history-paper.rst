=============================
A hsitory of markup languages
=============================

By Tibs / Tony Ibbs, for PyConUK 2017

.. note:: This is the "paper" that is equivalent to the slideshow. It may or
   may not remaing a separate document.

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


.. vim: set filetype=rst tabstop=8  softtabstop=2 shiftwidth=2 expandtab:
