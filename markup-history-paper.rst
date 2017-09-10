=============================
A hsitory of markup languages
=============================

By Tibs / Tony Ibbs, for PyConUK 2017

.. note:: This is the "paper" that is equivalent to the slideshow. It may or
   may not remaing a separate document.

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

Different sorts of markup languages
===================================
.. note:: Hmm, actually the following is not necessarily particularly helpful,
   and may not reflect the history at all. Some more research is required.
   However, it does cover the topics I want to talk about, especially with
   regard to the slideshow/talk.

1. Historical markup

   .. note:: This is a bad name for this - I must try to think of something
      better. Originally I had "output to teletype", which is historically
      accurate, but of course troff can do much more, and the notation is the
      same as for nroff.

2. Sophisticated markup: |TeX|/|LaTeX|

   .. note:: Originally this was just called TeX/LaTeX.

3. Semantic markup

4. Readable plaintext

.. For the moment, we represent TeX and LaTeX as simple text, but I might
   change that in the future

.. |TeX| replace:: TeX

.. |LaTeX| replace:: LaTeX

Simple markup
=============
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

|TeX|/|LaTeX|
=============

Control of typesetting so the author gets properly formatted text, and,
particularly, equations. Also, the first decent paragraphing and pagination
algorithms. 

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
* http://pustakalaya.org/wiki/wp/m/Markup_language.htm - 2008 (?)
 
 
* http://history-computer.com/Internet/Birth/Goldfarb.html - Charles Goldfarb—the Godfather of Markup Languages
 
* https://www.w3.org/TR/REC-MathML/chapter1.html - mathematics notation
 
* https://en.wikipedia.org/wiki/ReStructuredText and https://en.wikipedia.org/wiki/ReStructuredText#History
* https://en.wikipedia.org/wiki/Setext
* http://docutils.sourceforge.net/mirror/setext.html - setext mirror
* https://www.w3.org/MarkUp/html-test/setext/setext+sgml_01.html - SGML vs setext, etc

.. vim: set filetype=rst tabstop=8  softtabstop=2 shiftwidth=2 expandtab:
