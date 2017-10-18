:title: A history of markup languages

----

A history of markup languages
=============================

By Tibs / Tony Ibbs, for PyConUK 2017

Written using reStructuredText_.  Presented using hovercraft_.

Source and a longer article at https://github.com/tibs/markup-history

.. _reStructuredText: http://docutils.sourceforge.net/docs/ref/rst/restructuredtext.html
.. _hovercraft: https://github.com/regebro/hovercraft


.. |TeX| replace:: TeX

.. |LaTeX| replace:: LaTeX

.. If using beamer, I might do:
..
.. .. role: latex(raw)
..    :format: latex
..
.. .. |TeX| replace:: :latex:`{\TeX}`
..
.. .. |LaTeX| replace:: :latex:`{\LaTeX}`
..
.. or so I think

.. note:: A summary of some of the more obvious bits of the history of
  document markup.

  Specifically ignoring anything that isn't just text (so, music, mathematics,
  diagrams, bibliographies, indices, etc.).

----

Timeline
--------

* 1960s TYPSET and RUNOFF, GML
* 1970s roff, runoff, nroff/troff, |TeX| in SAIL
* 1980s Scribe, |TeX| in WEB/Pascal, |LaTeX|, SGML, TEI
* 1990s HTML, setext, Docbook, WikiWikiWeb, StructuredText, XML
* 2000s reStructuredText, AsciiDoc, markdown

.. note:: There's a lot to cover, even so.

  The longer notes in the github repository have more detail, and give links
  to interesting pages on the web.

----

The types of markup
-------------------

Presentational or Semantic

...but also lightweight, and maybe programmable

.. note::

  Presentational: how the text should be presented, e.g., as a man page, on a
  screen, or on a typeset page.
  
  Even at the beginning of our timeline, people had access to typesetters, and
  wanted to drive them.

  Semantic: marking up the meaning of the text.

  One of the important early realisations was that even presentation benefits
  from some degree of semantics - i.e., "heading", not "font X at size Y in
  bold".

  Lightweight: simple to type, and hopefully easier to read. Hence also
  the sub-category Readable plaintext.

  Obviously a markup may span categories.

  Separately, "static" markup (e.g., HTML) versus "programmable" (wikipedia:
  "procedural") markup (e.g., |TeX|).

----

1964: RUNOFF
------------

.. code:: Groff

  .LINE LENGTH 60
  .LEFT MARGIN 0
  .PARAGRAPH 5
  Call us on our toll free number

  .CENTER
  1-800-555-5555

  and we will respond as soon as convenient.

.. note:: 1964 RUNOFF *Presentational*

   Jerome H. Saltzer for CTSS (Compatible Time Sharing System)

   Ported to BCPL and then Multics. Ancestor to roff.

   This example is (more or less) from the original TYPSET/RUNOFF documentation.

   Commands starting with a dot in the first column, and could be abbreviated.

----

1969: GML / 1986: SGML / 1997: XML
----------------------------------

*DTD for a list:*

.. code:: DTD

  <!--      ELEMENT MIN CONTENT             >
  <!ELEMENT list    - - (item)+             >
  <!ELEMENT item    O O (#PCDATA, (list)*)  >

*and such a list:*

.. code:: XML

  <list>
  <item>First item</item>
  <item>Second item</item>
  <item>Last item</item>
  </list>

.. note:: 1969 GML, 1986 SGML *Semantic* and *"meta"* (DTDs)

  GML (Charles Goldfarb, Edward Mosher, Raymond Lorie) at IBM. 

  [Standard] Generalised Markup Language.

  A mechanism for *describing* markup languages. Use of the DTD.

  SGML uses DTDs (Document Type Definitions) to describe the set of
  markup declarations that form a *document type* (e.g., SGML itself, XML,
  HTML).

  Shown is a DTD fragment for defining a simple list, and an example of the
  list structure described.

  Sensibly, SGML came with a "starter set" drafted by Joan Smith and
  Janet Vandore.

  SGML allowed the definition of elements that were implicitly closed by
  another element - e.g., <li> and <p> in HTML. *Can the <item> elements
  here be closed implicitly?*

----

1970s: roff, nroff, troff, groff
--------------------------------

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

.. note:: 1970s \*roff *Presentational*. Still in use (as 1990: groff)

  Started as a transliteration of the BCPL version of runoff, for UNIX,
  around 1970.

  The example is a (fake) man page, using the ``man`` macro package from
  Lars Wirzenius' `Writing manual pages`_

  .TH = title, .SH = sub-heading, .B = bold, other font usages (e.g., normal
  font and underlining) are indicated by the \\f sequences.

.. _`Writing manual pages`: https://liw.fi/manpages/,

----

1977/1978: |TeX|
----------------

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

.. note:: 1977/1978 |TeX|

  *Presentational with semantic leanings*. Programmable. Still in use.

  Designed and mostly written by Donald Knuth.
 
  Driven by the need to guarantee accurate typesetting of mathematics.

  In serious use of |TeX|, one starts by defining lots of useful
  commands - although `the TeXbook`_ has many useful ideas one can copy.

.. _`The TeXbook`: http://www.ctex.org/documents/shredder/src/texbook.pdf

----

1980: Scribe
------------

.. code::

    @Heading(The Beginning)
    @Begin(Quotation)
        Let's start at the very beginning, a @i(very good place) to start
    @End(Quotation)

*which can also be written:*

.. code::

    @Heading(The Beginning)
    @(Quotation
        Let's start at the very beginning, a @i(very good place) to start
    )

.. note:: 1980 Scribe *Presentational*, and maybe also programmable

  Described in Brian Reid's 1980 doctoral dissertation at Carnegie Mellon
  University. Lisp based.

  Similar systems still appear to exist.

  **Maybe** could drop this slide as well, although I'd rather not.

  Also, need to check if it is "programmable".

----

1987: TEI
---------

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


.. note:: 1987 TEI *Semantic*. Still in use today.

  "The mission of the Text Encoding Initiative is to develop and maintain a
  set of high-quality guidelines for the encoding of humanities texts, and to
  support their use by a wide community of projects, institutions, and
  individuals"

  Some mark up of the start of Swinburne's Sestina, showing the working of the
  ryhming scheme.

  Taken from the poetry examples at `TEI By Example`_.

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

.. note:: 1991 HTML *Presentational*. Still in use today (although rather altered).

  Tim Berners-Lee, at CERN, specified HTML and wrote browser and server
  software in late 1990. The "HTML Tags" document was first mentioned on the
  internet in 1991.

  HTML 2.0 was published as IETF RFC 1866 in 1995

  HTML (at least until HTML5) is an SGML document type - an SGML application

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

.. note:: 1991 Docbook *Semantic*. Still in use today.

  "A semantic markup language for technical documentation"

  Same year as HTML

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

  Partly a reaction to SGML. Clearly influential on
  all of the succeeding lightweight markups.

  Same year as HTML and Docbook

  **Maybe** add an example of a link?

----

1994/1995: wikiwikiweb
----------------------

.. code::

  Paragraphs are not indented.

  * This is a list item
  ** This is a sub-list item

    Indented text is monospaced.

  We have ''emphasis'', '''bold''', '''''bold italic''''', and a LinkToAnotherPage.

  But we can A''''''voidMakingAWikiLink.

  No HTML, tables, headers, maths, scripts. No links within a page.

.. note:: **skippable** wikiwikiweb

   1994/1995 wikiwikiweb *Presentational*

   The first wiki, invented by Ward Cunningham

   I think that newlines within a paragraph are ignored, but it's hard  to
   tell.

   The lack of capability is deliberate, aiming to promote a particular style
   of discourse:

      "This wiki is quite bare bones, and intentionally so. Less formatting
      means you have to concentrate on saying things carefully and clearly.
      Content over form."


----


1996: StructuredText
--------------------

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

.. note:: 1996 StructuredText *Presentational*. Lightweight.

  Created by Jim Fulton of Digital Creations (later Zope Foundation) for use
  in Zope.

  Significant indentation - good idea in a programming language.

----

2001/2002: reStructuredText
---------------------------

.. code:: reST

   This is a heading
   =================

   This is a paragraph. Body text is not indented.

     - This is a list item. Words can be *emphasized*, **strong** or
       ``teletype`` - yes, that's paired backquotes [1]_.
     - This is a list item as well. We can't use "o" as a list delimiter,
       as it is too ambiguous. We don't need blank lines between list items.

       This is more of the second list item. It is indented appropriately.

   This is a sub-heading
   ---------------------

   Sub-section body text is not indented either. What makes sense for
   programming languages is irritating for text.

   .. [1] Lines after the first line of a list item must be indented appropriately.

.. note:: 2001/2002 reStructuredText *Presentational*. Lightweight.

  David Goodger had a professional background in SGML.

  Original mailing of the idea to the Doc-Sig was in Nov 2000

  Readable is the main aim.

  Output agnostic.

  Sphinx was first introduced as a means of using reStructuredText to write
  the Python documenation, instead of |LaTeX|.

  Well specified, allowing other implementations which behave in the same way.

-----

2002: Asciidoc
--------------

.. There doesn't seem to be a Pygments mode for AsciiDoc

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

.. note:: 2002 Asciidoc *Presentational*. Lightweight.

  Stuart Rackham

  Aimed specifically as a lightweight way of producing docbook.

  Well specified, allowing other implementations which behave in the same way.

  The original Asciidoc implementation was written in Python in 2002.

  Asciidoctor came out in 2013, and is written in Ruby.

----

2004: markdown
--------------

.. There doesn't seem to be a Pygments mode for markdown

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

.. note:: 2004 markdown *Presentation*. Lightweight.

  John Gruber, collaborating with Aaron Swartz on the syntax

  Yes, I know headings can be underline as well, but I've never seen
  anyone actually doing that.

  Aimed at producing HTML.

  From the syntax page: "Markdown’s syntax is intended for one purpose: to be
  used as a format for *writing* for the web." Their emphasis.

  Poorly specified. Ambiguous.
  Allows embedded HTML.
  Most implementations extend it, incompatibly.

  Very successful because (the most popular variants) hit a good compromise on
  the simplicity/capability curve.

----

Fin
---

* 1960s TYPSET and RUNOFF, GML
* 1970s roff, runoff, nroff/troff, |TeX| in SAIL
* 1980s Scribe, |TeX| in WEB/Pascal, |LaTeX|, SGML, TEI
* 1990s HTML, setext, Docbook, WikiWikiWeb, StructuredText, XML
* 2000s reStructuredText, AsciiDoc, markdown

Written using reStructuredText_.  Presented using hovercraft_.

Source and a longer article at https://github.com/tibs/markup-history

You may also be interested in Write the Docs: http://www.writethedocs.org/

.. vim: set filetype=rst tabstop=8 softtabstop=2 shiftwidth=2 expandtab:
