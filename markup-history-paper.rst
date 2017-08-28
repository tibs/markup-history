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

Different sorts of markup languages
===================================

I propose to think of there being four types of markup languages, althouh
clearly there are both other types, and also overlap between the types.

1. Simple markup

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

.. vim: set filetype=rst tabstop=8  softtabstop=2 shiftwidth=2 expandtab:
