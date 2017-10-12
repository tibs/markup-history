Notes per slide
===============

.. My intent is to transfer these to hand-held cards

A history of markup languages
=============================

.. |TeX| replace:: TeX

.. |LaTeX| replace:: LaTeX

A summary of some of the more obvious bits of the history of document markup.

I'm ignoring anything that isn't just text (so, music, mathematics, diagrams,
bibliographies, indices, etc.).

And only hitting the "high spots" for what I am talking about.

But there's a longer article at the github repository, as well as the source
for these slides. I'll give the link again at the end.

Timeline
--------

There's a lot to cover, even so.

This is a very brief timeline - I shan't actually talk about everything on it.

What's interesting, though, is that just about everything named is still in
use, in one form or another.

Categories of markup
--------------------

*Presentational*: how the text should be presented, e.g., as a man page, on a
screen, or on a typeset page.

Even at the beginning of our timeline, people had access to typesetters, and
wanted to drive them.

Centering, right justification and so on are laborious, so worth
automating.

And presentation on different displays (or even line printers) may use
different techniques to produce effects such as bolding.

*Semantic*: marking up the meaning of the text.

One of the important early realisations was that even presentation benefits
from some degree of semantics - i.e., "heading", not "font X at size Y in
bold".

Indexing and creation of references is another sort of semantic markup of
presentationally marked documents.

But it can also be important to mark up the meaning of text for its own sake.

Subcategories, mainly of Presentational:

*Lightweight markup*: simple to type, and hopefully easier to read. Hence also

*Programmable markup*: markup with what is (essentially) a programming
language (wikipedia calls this "procedural" markup). For instance, |TeX|.

Obviously a markup may span categories.

1964: RUNOFF
------------

1964 RUNOFF *Presentational*

Jerome H. Saltzer for CTSS (Compatible Time Sharing System)

Ported to BCPL and then Multics. Ancestor to roff and thus, ultimately, all of
the roff family.

In the 1980s/1990s I used Digital Standard Runoff, also a direct descendant.

This example is (more or less) from the original TYPSET/RUNOFF documentation.

Commands starting with a dot in the first column.

Commands could be abbreviated.

Inline commands shift the "case", for instance in and out of bold case.

1969: GML / 1986: SGML
----------------------

1969 GML, 1986 SGML *Semantic* and *"meta"* (DTDs)

GML (Charles Goldfarb, Edward Mosher, Raymond Lorie - note the initials of the
surnames) at IBM. 

[Standard] Generalised Markup Language.

A mechanism for *describing* markup languages.

SGML uses DTDs (Document Type Definitions) to describe the set of
markup declarations that form a *document type* (e.g., SGML itself, XML,
HTML).

Shown is a DTD fragment for defining a simple list, and an example of the
list structure described.

Sensibly, SGML came with a "starter set" drafted by Joan Smith and
Janet Vandore.

SGML allowed the definition of elements that were implicitly closed by
another element - e.g., <li> and <p> in HTML.

Q: **Can the <item> elements here be closed implicitly?**

1970s: roff, nroff, troff, groff
--------------------------------

1970s \*roff *Presentational*. Still in use (as 1990: groff)

Started as a transliteration of the BCPL version of runoff, for UNIX,
around 1970.

The example is a (fake) man page, using the ``man`` macro package from
Lars Wirzenius' `Writing manual pages`_

.TH = title, .SH = sub-heading, .B = bold, other font usages (e.g., normal
font and underlining) are indicated by the \\f sequences.

Q: **Commonly used with a macro language - essentially programmable?**

.. _`Writing manual pages`: https://liw.fi/manpages/,

1977/1978: |TeX|
----------------

1977/1978 |TeX|

*Presentational with semantic leanings*. Programmable. Still in use.

Designed and mostly written by Donald Knuth.

Driven by the need to guarantee accurate typesetting of mathematics.

In serious use of |TeX|, one starts by defining lots of useful
commands - although `the TeXbook`_ has many useful ideas one can copy.

Most people actually use |LaTeX| (1984) or one of the other markup languages
written in |TeX|. |LaTeX| is still dominant in scientific and mathematical
publishing.

.. _`The TeXbook`: http://www.ctex.org/documents/shredder/src/texbook.pdf

1980: Scribe
------------

**Maybe** could drop this slide as well, although I'd rather not.

1980 Scribe *Presentational*, and maybe also programmable

Described in Brian Reid's 1980 doctoral dissertation at Carnegie Mellon
University. Lisp based.

Similar systems still appear to exist.

Note the two representations - the second one being more lisp-like.

Q: **Also, need to check if it is "programmable".**

1984: Postscript
----------------

**Maybe** drop this, as it's not a form aimed at human use.

**Really seriously consider dropping this slide**

1984 Postscript *Presentational*, and programmable. Still in use.

Created at Adobe Systems by John Warnock, Charles Geschke, Doug Brotz, Ed
Taft and Bill Paxton from 1982 to 1984.

Not really intended to be written by people.

Similar to Forth.

This is the example on the Wikipedia page.

1987: TEI
---------

1987 TEI *Semantic*. Still in use today.

"The mission of the Text Encoding Initiative is to develop and maintain a
set of high-quality guidelines for the encoding of humanities texts, and to
support their use by a wide community of projects, institutions, and
individuals"

Some mark up of the start of Swinburne's Sestina, showing the working of the
ryhming scheme - ``rhyme="ababab"`` and then on each line the rhyming word
and which part (a, b) of the rhyming scheme it is.

Taken from the poetry examples at `TEI By Example`_.

.. _`TEI by example`: http://teibyexample.org/examples/TBED04v00.htm

1991: HTML
----------

1991 HTML *Presentational*. Still in use today (although rather altered).

Tim Berners-Lee, at CERN, specified HTML and wrote browser and server
software in late 1990. The "HTML Tags" document was first mentioned on the
internet in 1991.

HTML 2.0 was published as IETF RFC 1866 in 1995

Yes, that is the same example as from the "using a DTD" page.

HTML (at least until HTML5) is an SGML document type - an SGML application.

1991: setext
------------

1991 setext *Presentational*. Lightweight.

Ian Feldman, for use in writing the TidBITs electronic newsletter.

Partly a reaction to SGML. Clearly influential on all of the succeeding
lightweight markups.

Same year as HTML

Note: body text indented. Underlining indicated by something like
underlining (but nb: underlining *should* mean italics).

Two dots for comments or special meaning.

Unclear if lists actually were supported. Specification not very clear,
specified by examples, not rigorous at all. Really just what he needed for his
own purposes.

  **Maybe** add an example of a link? (Links look very similar to one of the
  forms that reStructuredText supports)

1991: Docbook
-------------

1991 Docbook *Semantic*. Still in use today.

"A semantic markup language for technical documentation"

However, partly semantic in the same way that |LaTeX| is used - often also for
presentational purposes (but not *necessarily*).

Same year as HTML and setext.

Example of Docbook 4.3 from
http://www.informatik.tu-cottbus.de/~giurca/tutorials/DocBook/index.htm

Before Docbook 5, an SGML language, defined by a DTD, and then later with
an XML variant (if I've got that right).

DocBook 5 is an XML language, formally defined by a RELAX NG schema with
integrated Schematron rules.

1994/1995: wikiwikiweb
----------------------

**skippable** wikiwikiweb

  (but I'd prefer to keep, as it's important historically)

1994/1995 wikiwikiweb *Presentational*

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

1996: StructuredText
--------------------

1996 StructuredText *Presentational*. Lightweight.

Created by Jim Fulton of Digital Creations (later Zope Foundation) for use
in Zope.

Significant indentation - good idea in a programming language, not so much
when writing plain text.

A heading is a heading because it is followed by a non-heading (!)

All block entities must be separated by blank lines.

Note that "o" can be a list delimiter - regarded as a serious ambiguity.

Specified by example, somewhat ambiguously.

1997: XML
---------

**If this is kept** it needs to be a very brief slide. On the other hand,
I think it is useful as a marker, given how XML is important to the SGML
world.

1997 XML *Semantic*.

Extensible Markup Language

wikipedia: "XML is an application profile of SGML"

No example because there is no "default" XML - a schema is needed.

A simpler subset of SGML, which makes parsers easier to write. Other SGML
based tools (TEI, Docbook, HTML itself) have generally moved towards using
XML rather than SGML in their specification.

XML was compiled by a working group of eleven members,[30] supported by a
(roughly) 150-member Interest Group.

2001/2002: reStructuredText
---------------------------

2001/2002 reStructuredText *Presentational*. Lightweight.

David Goodger had a professional background in SGML.

Original mailing of the idea to the Doc-Sig was in Nov 2000

* Readable is the main aim.
* Output agnostic.
* Well specified, allowing other implementations which behave in the same way.

Sphinx was first introduced as a means of using reStructuredText to write
the Python documenation, instead of |LaTeX|.

Consciously designed to allow doing certain things but not others - basically,
if a document is too complex for reStructuredText, use something like Docbook.

-----

2002: Asciidoc
--------------

2002 Asciidoc *Presentational*. Lightweight.

Stuart Rackham

Aimed specifically as a lightweight way of producing docbook.

Well specified, allowing other implementations which behave in the same way.

The original Asciidoc implementation was written in Python in 2002.

Asciidoctor came out in 2013, and is written in Ruby.

2004: markdown
--------------

2004 markdown *Presentation*. Lightweight.

John Gruber, collaborating with Aaron Swartz on the syntax

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

Fin
---

* 1960s TYPSET and RUNOFF, GML
* 1970s roff, runoff, nroff/troff, |TeX| in SAIL
* 1980s Scribe, |TeX| in WEB/Pascal, |LaTeX|, Postscript, SGML, TEI
* 1990s HTML, setext, Docbook, WikiWikiWeb, StructuredText, XML
* 2000s reStructuredText, AsciiDoc, markdown

Written using reStructuredText_.  Presented using hovercraft_.

Source and a longer article at https://github.com/tibs/markup-history

You may also be interested in Write the Docs: http://www.writethedocs.org/


.. vim: set filetype=rst tabstop=8 softtabstop=2 shiftwidth=2 expandtab:
