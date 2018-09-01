Notes per slide
===============

A history of markup languages
=============================

  By Tibs / Tony Ibbs

  This version for Write The Docs, Prague, 2018.

  Written using reStructuredText_.

  Converted to PDF slides using pandoc_ and beamer_.

  Source and extended notes at https://github.com/tibs/markup-history

.. _reStructuredText: http://docutils.sourceforge.net/docs/ref/rst/restructuredtext.html
.. _pandoc: https://pandoc.org
.. _beamer: https://github.com/josephwright/beamer

.. |TeX| replace:: :math:`\text{\TeX}`

.. |LaTeX| replace:: :math:`\text{\LaTeX}`

A summary of some of the more obvious bits of the history of document markup.

And only hitting the "high spots" for what I am talking about.

However, the github repository has the source for these slides, and also a set
of extended notes with links. I'll give the URL again at the end.

----

Timeline
--------

  * 1960s TYPSET and RUNOFF, GML
  * 1970s roff, runoff, nroff/troff, |TeX| in SAIL
  * 1980s |TeX| in WEB/Pascal, |LaTeX|, SGML, TEI
  * 1990s groff, HTML, setext, Docbook, WikiWikiWeb, XML
  * 2000s reStructuredText, AsciiDoc, markdown

I'm ignoring anything that isn't just text (so, music, mathematics, diagrams,
bibliographies, indices, etc.).

Even so, this is clearly not all of the text markup formats there are, but
hopefully its a good survey.

There's a lot to cover, even so.

What's interesting, though, is that almost everything named is still in
use, in one form or another.

Note: I'm not going to follow a strict linear sequence in time, but instead
work partially by topic.

----

The types of markup
-------------------

  Presentational or Semantic

  ...but also lightweight, and maybe programmable

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

Subcategories, mainly of Presentational
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*Lightweight markup*: simple to type, and hopefully easier to read. Hence also

*Programmable markup*: markup with what is (essentially) a programming
language (wikipedia calls this "procedural" markup). For instance, |TeX|.

Obviously a markup may span categories.

----

1964: RUNOFF
------------

  .. code:: roff

    .LINE LENGTH 60
    .LEFT MARGIN 0
    .PARAGRAPH 5
    Call us on our toll free number

    .CENTER
    1-800-555-5555

    and we will respond as soon as convenient.

1964 RUNOFF *Presentational*

Jerome H. Saltzer for CTSS (Compatible Time Sharing System)

Commands starting with a dot in the first column.

Commands could be abbreviated, e.g., ``.ls`` instead of ``.list``, and
``.le;`` instead of ``list element;``.

Inline commands shift the "case", for instance in and out of bold case.

Ported to BCPL and Multics. Ancestor to roff and thus, ultimately, all of
the roff family.

In the 1980s/1990s I used Digital Standard Runoff, also a direct descendant.

This example is (more or less) from the original TYPSET/RUNOFF documentation.

----

1969: GML / 1986: SGML
----------------------

  *DTD for a list:*

  .. code:: DTD

    <!--      ELEMENT MIN CONTENT             >
    <!ELEMENT list    - - (item)+             >
    <!ELEMENT item    O O (#PCDATA, (list)*)  >

  *and such a list:*

  .. code:: sgml

    <list>
    <item>First item</item>
    <item>Second item</item>
    <item>Last item</item>
    </list>


1969 GML, 1986 SGML *Semantic* and *"meta"* (DTDs)

1969 GML (Charles Goldfarb, Edward Mosher, Raymond Lorie - note the initials
of the surnames) at IBM. 

1986 [Standard] Generalised Markup Language.

The GML starter set was a set of macros for IBM Script.

A mechanism for *describing* markup languages. Use of the DTD.

Sensibly, SGML came with a "starter set" drafted by Joan Smith and
Janet Vandore.

SGML uses DTDs (Document Type Definitions) to describe the set of
markup declarations that form a *document type* (e.g., SGML itself, XML,
HTML).

Shown is a DTD fragment for defining a simple list, and an example of the
list structure described.

SGML allows the definition of elements that are implicitly closed by
another element - e.g., <li> and <p> in HTML.

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

XML
~~~

In 1997 XML arrives.

   "XML is an application profile of SGML"

It's a simpler subset of SGML, which makes parsers easier to write.

Other SGML based tools (TEI, Docbook, HTML itself) have generally moved
towards using XML rather than SGML in their specification.

----

1970s: roff, nroff, troff, groff
--------------------------------

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

1970s \*roff *Presentational*. Still in use (as 1990: groff)

Started as a transliteration of the BCPL version of runoff, for UNIX,
around 1970.

The example is a (fake) man page, using the ``man`` macro package from
Lars Wirzenius' `Writing manual pages`_

* ``.TH`` = title
* ``.SH`` = sub-heading
* ``.B`` = bold
* other font usages (e.g., normal font and underlining) are indicated by the
  ``\f`` sequences.

.. _`Writing manual pages`: https://liw.fi/manpages/,

Whilst the roff family are not strictly speaking programmable as such, their
use of macros means that in practice they are as capable as systems such as
|TeX| (although I don't think that DSLs like |LaTeX| exist as-such).

----

1977/1978: |TeX| / 1983: |LaTeX|
--------------------------------

  .. code:: latex

    \begin{center}
    \rule{5in}{0.1mm}
    \end{center}

    \section*{Captain Competent strikes again}

    The superhero is a familiar concept in comics, science
    fiction and many other fields. However, I am more
    interested in what might be called `the competent
    hero'. This is a subtler form of protagonist---a
    person who has attained {\em competence} in their
    daily life.

The example is |LaTeX|, because that is more likely to be familiar to the
audience, and most likely what they would use in preference to |TeX| itself.

1977/1978 |TeX|

*Presentational with semantic leanings*. Programmable. Still in use.

Designed and mostly written by Donald Knuth.

Driven by the need to guarantee accurate typesetting of mathematics.

In serious use of |TeX|, one starts by defining lots of useful
commands - although `the TeXbook`_ has many useful ideas one can copy.

.. _`The TeXbook`: http://www.ctex.org/documents/shredder/src/texbook.pdf


1983 |LaTeX| *Presentational*. Still in use.

Leslie Lamport.

|LaTeX| is essentially a DSL written in |TeX|. It's probably still
the best known, but certainly not the only one.

I used to write plain |TeX|, but most people actually use |LaTeX|,
which dates from about 1983/1984. |LaTeX| is probably still dominant in
scientific and mathematical publishing.

This example is from the first edition of a fanzine I used to edit - all of
the markup is provided for me by |LaTeX|, so I didn't need to define anything
here.

----

1987: TEI
---------

  .. code:: XML

    <lg type="sestina">
    <lg type="sestet" rhyme="ababab">
    <l>I saw my soul at rest upon a
       <rhyme label="a" xml:id="A">day</rhyme></l>
    <l>As a bird sleeping in the nest of
       <rhyme label="b" xml:id="B">night</rhyme>,</l>
    <l>Among soft leaves that give the starlight
       <rhyme label="a" xml:id="C">way</rhyme></l>
    <l>To touch its wings but not its eyes with
       <rhyme label="b" xml:id="D">light</rhyme>;</l>
    <l>So that it knew as one in visions
       <rhyme label="a" xml:id="E">may</rhyme>,</l>
    <l>And knew not as men waking, of
       <rhyme label="b" xml:id="F">delight</rhyme>.</l>
    </lg>

1987 TEI *Semantic*. Still in use today.

"The mission of the Text Encoding Initiative is to develop and maintain a
set of high-quality guidelines for the encoding of humanities texts, and to
support their use by a wide community of projects, institutions, and
individuals"

Some mark up of the start of Swinburne's Sestina,
taken from the poetry examples at `TEI By Example`_,
showing the working of the ryhming scheme.

``rhyme="ababab"`` and then on each line the rhyming word and which part (a,
b) of the rhyming scheme it is.

(In the 16x9 version of this slide, I've set these far to the right, to make
them more obvious.)

.. _`TEI by example`: http://teibyexample.org/examples/TBED04v00.htm

----

1991: HTML
----------

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

1991 HTML *Presentational*. Still in use today (although rather altered).

Tim Berners-Lee, at CERN, specified HTML and wrote browser and server
software in late 1990. The "HTML Tags" document was first mentioned on the
internet in 1991.

HTML 2.0 was published as IETF RFC 1866 in 1995. There was no specification
called "HTML 1".

HTML until HTML5 is an SGML document type - an SGML application.

Wikipedia says:

  "The HTML5 syntax is no longer based on SGML despite the similarity of its
  markup. It has, however, been designed to be backward compatible with common
  parsing of older versions of HTML. It comes with a new introductory line
  that looks like an SGML document type declaration, ``<!DOCTYPE html>``, which
  triggers the standards-compliant rendering mode."

  ----

1991: Docbook
-------------

  .. code:: XML

    <?xml version="1.0" encoding="UTF-8"?>
    <!DOCTYPE article PUBLIC "-//OASIS//DTD Simplified DocBook XML V1.0//EN"
    "http://www.oasis-open.org/docbook/xml/simple/1.0/sdocbook.dtd">
    <article>
     <title>DocBook Tutorial</title>
     <articleinfo>
      <author>
       <firstname>Adrian</firstname> <surname>Giurca</surname>
      </author>
      <date>April 5, 2005</date>
     </articleinfo>
     <section>
      <title>What is DocBook ?</title>
      <para>DocBook is an SGML dialect developed by O'Reilly
      and HaL Computer Systems in 1991.</para>
     </section>
    </article>

1991 Docbook *Semantic*. Still in use today.

*(Same year as HTML)*

"A semantic markup language for technical documentation"

However, I think it is often "semantic" in the same way that |LaTeX| is
"semantic" - often also for presentational purposes (but not *necessarily*).

Example of Docbook 4.3 from
http://www.informatik.tu-cottbus.de/~giurca/tutorials/DocBook/index.htm

Before Docbook 5, an SGML language, defined by a DTD

DocBook 5 is an XML language, formally defined by a RELAX NG schema with
integrated Schematron rules.

----

1991: setext
------------

  .. code:: reST

     This is the title. There can be only one.
     =========================================
       Body text must be indented by two spaces.

     A subheading
     ------------
       **Bold words** and ~italic~ are supported.
       _Underlined_words_ are also supported.
       `Backquoted words` are not touched.

     > This text will be represented using a monospaced font.

     * This text will have a bullet mark before it.

     .. Two dots introduce text that can be ignored.
     .. Two dots alone mean the logical end of text.
     ..

1991 setext *Presentational*. Lightweight.

*(Same year as HTML and Docbook)*

*(This is the beginning of our look at lightweight markup formats)*

Ian Feldman, for use in writing the TidBITs electronic newsletter.

Partly a reaction to SGML. Clearly influential on all of the succeeding
lightweight markups.

Note: the body text must be indented.

Multi-word italics (``~multiword~italics~``) appears to have been an
extension. 

Underlining should really mean italics, following typewritten text
conventions.

Two dots for comments or special meaning.

Unclear if lists actually were supported. Specification not very clear,
specified by examples, not rigorous at all. Really just what he needed for his
own purposes.

  (Links look very similar to one of the forms that reStructuredText supports)

  ----

1994/1995: wikiwikiweb
----------------------

  .. code:: wiki

    Paragraphs are not indented.

    * This is a list item
    ** This is a sub-list item

      Indented text is monospaced.

    We have ''emphasis'', '''bold''', '''''bold italic''''',
    and a LinkToAnotherPage.

    But we can A''''''voidMakingAWikiLink.

    No HTML, tables, headers, maths, scripts.
    No links within a page.

1994/1995 wikiwikiweb *Presentational*

The first wiki, invented by Ward Cunningham

Like most wiki formats, specified by example, with no real rigour. However,
I suspect this may have been done deliberately, to encourage learning by
exploration.

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

----


----

2001/2002: reStructuredText
---------------------------

  .. code:: reST

     This is a heading
     =================
     This is a paragraph. Body text is not indented.

       - This is a list item. Words can be *emphasized*,
         **strong** or ``teletype`` - yes, that's paired
         backquotes [1]_.
       - This is a list item as well.

         This is more of the second list item. It is indented
         appropriately.

     This is a sub-heading
     ---------------------
     Sub-section body text is not indented either.

     .. [1] Note the indentation inside the list item.

In part, a reaction to 1996 StructuredText which was created by Jim Fulton of
Digital Creations (later Zope Foundation) for use in Zope, and which suffered
from documentation by example and ambiguous markup.

2001/2002 reStructuredText *Presentational*. Lightweight.

David Goodger had a professional background in SGML.

Original mailing of the idea to the Doc-Sig was in Nov 2000

* Readability is the main aim.
* Output agnosticism is an important secondary aim.

Clearly influenced by setext (and StructuredText), but with more rigor.

Paragraphs do *not* need to be indented, but note how the text in list items
follows the indentation of the text in the first line.

It is well specified, allowing other implementations which behave in the same way.

* < and > are not special - Guido wanted to be able to discuss XML
  and suchlike without quoting stuff.
* Similarly, it's not possible for underscores to be significant, as leading
  and trailing underscores have meaning in Python.
* Perhaps in part because of that, there is no way to specify underlined text,
  which is a Good Thing.

Consciously designed to allow doing certain things but not others - basically,
if a document is too complex for reStructuredText, use something like Docbook.

Sphinx was first introduced as a means of using reStructuredText to write
the Python documenation, instead of |LaTeX|.

----

2002: Asciidoc
--------------

.. There doesn't seem to be a Pygments mode for AsciiDoc

  .. code:: reST

    = This is a title heading
    This is a paragraph. Body text is not indented.

    - This is a list item. Words can be _italic_, *bold* or
     +mono+ - yes, that's paired plus-signs.
    - This is a list item as well.
    +
    This is more of the second list item. It is "`joined on`"
    by the `+`.footnote:[Note the quotation marks around
    _joined on_.]

    == This is a sub-heading
    Sub-section body text is not indented either.

2002 Asciidoc *Presentational*. Lightweight.

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

Note that headings can also be delimited with underlining characters, but that
doesn't seem to be the normal convention (it's not what the current
Asciidoctor documentation introduces, although https://asciidoclive.com
still shows that style in its example).

----

2004: markdown
--------------

  .. code:: markdown

     # This is a heading
     This is a paragraph. Body text is not indented.

     - This is a list item. Words can be *emphasized*,
     **strong** or `inline` - that's single backquotes.
     - This is a list item as well.

         This is more of the second list item. Its first line
       must be indented by 4 spaces or a tab.

     ## This is a sub-heading
     Sub-section body text is not indented either.

     (No footnotes. But <tt>HTML</tt> is allowed.)

2004 markdown *Presentation*. Lightweight.

John Gruber, collaborating with Aaron Swartz on the syntax

*So* nearly wonderful.

Yes, I know headings can be underline as well ("setext" style, as it terms
it), but I've never seen anyone actually doing that.

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

(The CommonMark specification is rigorous, and well written, but inevitably
very long, which rather undoes the perceived "simplicity" of markdown. Also,
it is only really atttempting to specify the common ground of the markdown
variants, and thus does not, for instance, include table.  

Note that it calls the underlined heading style "setext headings", which is
nice.)

----

Fin
---

  * 1960s TYPSET and RUNOFF, GML
  * 1970s roff, runoff, nroff/troff, |TeX| in SAIL
  * 1980s |TeX| in WEB/Pascal, |LaTeX|, SGML, TEI
  * 1990s groff, HTML, setext, Docbook, WikiWikiWeb, XML
  * 2000s reStructuredText, AsciiDoc, markdown

  Written using reStructuredText_.

  Converted to PDF slides using pandoc_ and beamer_.

  Source and extended notes at https://github.com/tibs/markup-history

Since this version of the talk is to be given to Write the Docs, I assume they
already know about the Write the Docs website: http://www.writethedocs.org/


.. vim: set filetype=rst tabstop=8 softtabstop=2 shiftwidth=2 expandtab:
