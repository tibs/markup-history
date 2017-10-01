.. title: A history of markup languages

----

A history of markup languages
=============================

By Tibs / Tony Ibbs, for PyConUK 2017

Written using reStructuredText_.  Presented using hovercraft_.

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
* 1970s roff, runoff, nroff/troff, |TeX| and Metafont in SAIL
* 1980s Scribe, |TeX| and Metafont in WEB/Pascal, |LaTeX|, Postscript, SGML, TEI
* 1990s HTML, setext, Docbook, WikiWikiWeb, POD, javadoc, StructuredText, XML
* 2000s reStructuredText, AsciiDoc, markdown

.. note:: There's a lot to cover, even so.

  The longer notes in the github repository have more detail, and give links
  to interesting pages on the web.

----

Categories of markup
--------------------

1. Presentational
2. Semantic
3. Lightweight

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

::

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

Digital Standard Runoff
-----------------------

::

    .TITLE A simpler DSR example
    .CHAPTER This is a chapter

    This is the first paragraph.
    .LIST
    .LIST ELEMENT;This is a list element. We have *bold\* and &underline\&.
    .LIST ELEMENT;This is another list element. I like interrobangs ?%!
    .END LIST

.. note:: **skippable** DSR

  This is an example using Digital Standard Runoff (DSR), which I
  used to use in the 1980s/90s on VMS.

  Abbreviated forms are also available, e.g., ``.ls`` instead of
  ``.list``, and ``.le;`` instead of ``list element;``.

----

1969: GML and 1986: SGML
------------------------

::

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


.. note:: 1969 GML, 1986 SGML *Semantic* and *"meta"* (DTDs)

  GML (Charles Goldfarb, Edward Mosher, Raymond Lorie) at IBM. 

  [Standard] Generalised Markup Language.

  The example is actually SGML. It is transcribed from Figure 3 of the
  paper named. The ellipses are mine.

  The GML starter set was a set of macros for IBM Script.

  A mechanism for *describing* markup languages. Use of the DTD.

  Sensibly, SGML came with a "starter set" drafted by Joan Smith and
  Janet Vandore.

  Note how SGML allowed the
  definition of elements that were implicitly closed by another element -
  e.g., <li> and <p>

  - <td> is the document title
  - <ad> is an address, <al> an address line
  - <ab> is the abstract
  - <ci> indicates a citation, which rendered as italics in the resulting paper.
  - <ref> marks up a Reference, collected for the section at the end of the document.
  - &SGML is an "entity reference" that expands to 'Standard Generalized
    Markup Language' - we're familiar with things like &eacute; from HTML.

----

SGML: DTD for a list
--------------------

::

  <!--      ELEMENT MIN CONTENT             >
  <!ELEMENT list    - - (item)+             >
  <!ELEMENT item    O O (#PCDATA, (list)*)  >

*and such a list*::

  <list>
  <item>First item</item>
  <item>Second item</item>
  <item>Last item</item>
  </list>

.. note:: **skippable** DTD for a list

  SGML uses DTDs (Document Type Definitions) to describe the set of
  markup declarations that form a *document type* (e.g., SGML itself, XML,
  HTML).

  Shown is a DTD fragment for defining a simple list, and an example of the
  list structure described.

----

SGML: document declares its DOCTYPE
-----------------------------------

::

  <!DOCTYPE html>
  <html>
    <head>
      <title>This is a title</title>
    </head>
    <body>
      <p>Hello world!</p>
    </body>
  </html>

.. note:: **skippable** Using a DTD

  DOCTYPE = Documentation Type Declaration

  A document can use a DOCTYPE to say what DTD it is conforming to.

----

1970s: roff, nroff, troff, groff
--------------------------------

::

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

.. note:: 1970s \*roff *Presentational*. Still in use (as groff)

  Started as a transliteration of the BCPL version of runoff, for UNIX,
  around 1970.

  The example is a (fake) man page, using the ``man`` macro package from
  Lars Wirzenius' `Writing manual pages`_

  .TH = title, .SH = sub-heading, .B = bold, other font usages (e.g., normal
  font and underlining) are indicated by the \\f sequences.

.. _`Writing manual pages`: https://liw.fi/manpages/,

----

1990: groff
-----------

::

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

.. note:: **skippable** groff

  1990 groff

  Some example groff (GNU troff) code.

  Whilst the roff family are not strictly speaking programmable as
  such, their use of macros (originally m4?) means that in practice they are
  as capable as systems such as |TeX| (although I don't think that DSLs like
  |LaTeX| exist as-such).

----

1997/1998: |TeX|
----------------

::

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

.. note:: 1997/1998 |TeX|

  *Presentational with semantic leanings*. Programmable. Still in use.

  Designed and mostly written by Donald Knuth.
 
  Driven by the need to guarantee accurate typesetting of mathematics.

  In serious use of |TeX|, one starts by defining lots of useful
  commands - although `the TeXbook`_ has many useful ideas one can copy.

.. _`The TeXbook`: http://www.ctex.org/documents/shredder/src/texbook.pdf

----

1983: |LaTeX|
-------------

::

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

----

1980: Scribe
------------

::

    @Heading(The Beginning)
    @Begin(Quotation)
        Let's start at the very beginning, a @i(very good place) to start
    @End(Quotation)

*which can also be written*::

    @Heading(The Beginning)
    @(Quotation
        Let's start at the very beginning, a @i(very good place) to start
    )

.. note:: 1980 Scribe *Presentational*, and maybe also programmable

  Described in Brian Reid's 1980 doctoral dissertation at Carnegie Mellon
  University. Lisp based.

  Similar systems still appear to exist.

----

1984: Postscript
----------------

::

   %!PS
   /Courier             % name the desired font
   20 selectfont        % choose the size in points and establish 
                        % the font as the current one
   72 500 moveto        % position the current point at 
                        % coordinates 72, 500 (the origin is at the 
                        % lower-left corner of the page)
   (Hello world!) show  % stroke the text in parentheses
   showpage             % print all on the page

.. note:: 1984 Postscript *Presentational*, and programmable. Still in use.

  Created at Adobe Systems by John Warnock, Charles Geschke, Doug Brotz, Ed
  Taft and Bill Paxton from 1982 to 1984.

  Not really intended to be written by people.

  Similar to Forth.

  This is the example on the Wikipedia page.

----

1987: TEI
---------

::

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

::

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

  Yes, that is the same example as from the "using a DTD" page.

  HTML (at least until HTML5) is an SGML document type - an SGML application

----

1991: setext
------------

::

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

.. note:: 1991 setext *Presentational*. Lightweight.

  Ian Feldman, for use in writing the TidBITs electronic newsletter.

  Excerpted from a document called "Why setext".

  Partly a reaction to SGML. Clearly influential on
  all of the succeeding lightweight markups.

  Same year as HTML

----

More setext
-----------

::

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

.. note:: **skippable** More setext

----

1991: Docbook
-------------

::

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

  Same year as HTML and setext.

  Example of Docbook 4.3 from
  http://www.informatik.tu-cottbus.de/~giurca/tutorials/DocBook/index.htm

  Before Docbook 5, an SGML language, defined by a DTD, and then later with
  an XML variant (if I've got that right).

----

2009: Docbook 5
---------------

::

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

.. note:: **skippable** Docbook 5

  Example from wikipedia (for Docbook 5, which is relatively recent).

  DocBook 5 is an XML language, formally defined by a RELAX NG schema with
  integrated Schematron rules.

----

1994/1995: wikiwikiweb
----------------------

::

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

1994: POD
---------

::

  =pod

  =head1 DESCRIPTION

  This is not I<really> representative of POD usage.

  =over 2

  =item This is a list item.

  =item This is another list item.

  =back

  =cut

.. note:: 1994 POD *Presentational*. Still in use today.

  Perl's "Plain Old Documentation".

  Same year as wikiwikiweb

  An example of markup to a specific purpose, and clearly very successful.

  Note that the blank lines are required around the POD commands.

  I don't think you can do multi-paragraph list items. The POD definitions
  contains ambuguities, although how to handle some of them is explained in
  the POD documentation.

----

1995: Javadoc
-------------

::

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

.. note::  **skippable** javadoc

  1995 javadoc *Presentational*. Still in use today.

  Has never specified the subset of HTML it allows.

----

1996: StructuredText
--------------------

::

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

1997: XML
---------

.. note:: 1997 XML *Semantic*.

  Extensible Markup Language

  wikipedia: "XML is an application profile of SGML"

  No example because there is no "default" XML - a schema is needed.

  A simpler subset of SGML, which makes parsers easier to write. Other SGML
  based tools (TEI, Docbook, HTML itself) have generally moved towards using
  XML rather than SGML in their specification.

  XML was compiled by a working group of eleven members,[30] supported by a
  (roughly) 150-member Interest Group.

----

2001/2002: reStructuredText
---------------------------

::

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

::

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

::

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
* 1970s roff, runoff, nroff/troff, |TeX| and Metafont in SAIL
* 1980s Scribe, |TeX| and Metafont in WEB/Pascal, |LaTeX|, Postscript, SGML, TEI
* 1990s HTML, setext, Docbook, WikiWikiWeb, POD, javadoc, StructuredText, XML
* 2000s reStructuredText, AsciiDoc, markdown

Written using reStructuredText_.  Presented using hovercraft_.

Source and a longer article at https://github.com/tibs/markup-history

You may also be inerested in Write the Docs: http://www.writethedocs.org/

.. vim: set filetype=rst tabstop=8 softtabstop=2 shiftwidth=2 expandtab:
