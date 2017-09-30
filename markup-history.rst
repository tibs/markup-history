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

----

Timeline
--------

* 1964 TYPSET and RUNOFF
* 1969 GML
* 1970s roff, runoff
* 1976 nroff and troff
* 1977/1978 |TeX| and Metafont in SAIL
* 1980 Scribe
* 1982 |TeX| and Metafont in Pascal
* 1983-1985 |LaTeX|
* 1984 Postscript
* 1986 SGML
* 1987 TEI
* 1989-1991 HTML
* 1991 setext
* 1991 Docbook
* 1994/1995 WikiWikiWeb
* 1994 Perl 5.000 and pod
* 1995 Java and javadoc
* 1996 StructuredText
* 1997 XML
* 2000-2002 reStructuredText
* 2002 AsciiDoc
* 2004 markdown

----

Timeline compressed
-------------------

* 1960s TYPSET and RUNOFF, GML
* 1970s roff, runoff, nroff/troff, |TeX| and Metafont in SAIL
* 1980s Scribe, |TeX| and Metafont in Pascal, |LaTeX|, Postscript, SGML, TEI
* 1990s HTML, setext, Docbook, WikiWikiWeb, POD, javadoc, StructuredText, XML
* 2000s reStructuredText, AsciiDoc, markdown

----

Categories of markup
--------------------

1. Presentational markup
2. Semantic markup
3. Readable plaintext

.. note:: And also a distinction between "static" markup (e.g., HTML) and
   "programmable" (wikipedia would have it as "procedural") markup (e.g.,
   |TeX|). In the latter, the marked up text is actually a program, an
   executable document.

----

RUNOFF
------

Presentational. 1964 and descendants on into the 1980s (and perhaps beyond)

::

  .LINE LENGTH 60
  .LEFT MARGIN 0
  .PARAGRAPH 5
  Call us on our toll free number

  .CENTER
  1-800-555-5555

  and we will respond as soon as convenient.

.. note:: One of the first markups - not very capable (by modern standards) in
   its first incarnation, but clearly the ancestor of later forms of RUNOFF,
   and I used DSR (Digital Standard Runoff) in the 1980s.

   The original documentation suggests the original had the basics for doing
   right-justification, centering and single/double spacing, and perhaps not
   much more - although, of course, what it provided was doubtless useful.

   Commands starting with a dot in the first column, and able to be
   abbreviated right from the beginning.

   This makes good sense, as one doesn't normally start any English sequence
   with a dot.

----

Digital Standard Runnoff, using abbreviated forms

::

    .hl1This is a title

    This is the first paragraph.
    .ls
    .le; This is a list element.
    .le; This is another list element.
    .els

----

GML and SGML
------------

.. note:: Should this be placed later, as SGML, and GML ignored?

   How different was GML from SGML?

Semantic. Meta-description. 1969 (GML), 1986 (SGML)

A mechanism for *describing* markup languages. Use of the DTD.

Here is the start of a paper I have a photocopy of (from Figure 3 therein)::

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


.. note:: Sensibly, SGML came with a "starter set" drafted by Joan Smith and
  Janet Vandore.

  In the example, the ellipses are my own. Note how SGML allowed the
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

SGML: DTDs
----------

Here is a fragment of DTD - this describes a simple list::

  <!--      ELEMENT MIN CONTENT             >
  <!ELEMENT list    - - (item)+             >
  <!ELEMENT item    O O (#PCDATA, (list)*)  >

such as::

  <list>
  <item>First item</item>
  <item>Second item</item>
  <item>Last item</item>
  </list>

.. note:: SGML uses DTDs (Document Type Definitions) to describe the set of
  markup declarations that form a *document type* (e.g., SGML itself, XML,
  HTML).

----

A document can use a DOCTYPE to say what DTD it is conforming to. For
instance::

  <!DOCTYPE html>
  <html>
    <head>
      <title>This is a title</title>
    </head>
    <body>
      <p>Hello world!</p>
    </body>
  </html>

.. note:: DOCTYPE = Documentation Type Declaration

----

roff, nroff, troff, groff
-------------------------

Presentation. 1970s and onwards, and still going strong today.

Part of an example (fake) man page::

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

.. note:: Again, keywords starting with a dot in the first column, but the
   abbreviation as the original (I think?).

   Example taken from Lars Wirzenius' `Writing manual pages`_

   .TH = title, .SH = sub-heading, .B = bold, other font usages (e.g., normal
   font and underlining) are indicated by the \\f sequences.

.. _`Writing manual pages`: https://liw.fi/manpages/,

----

Some example groff (GNU troff) code::

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

.. note:: Whilst the roff family are not strictly speaking programmable as
  such, their use of macros (originally m4?) mean that in practice they are as
  capable as systems such as |TeX| (although I don't think that DSLs like
  |LaTeX| exist as-such).

----

|TeX|
-----

Presentation, and programmable. 1977 and onwards, and still going strong
today.

Driven by the need to guarantee accurate typesetting of mathematics, but led
to new mechanisms for paragraph layout, and an important landmark in literate
programming.

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

.. note:: In serious use of |TeX|, one starts by defining lots of useful
   commands - although `the TeXbook`_ has many useful ideas one can copy.

.. _`The TeXbook`: http://www.ctex.org/documents/shredder/src/texbook.pdf

----

|LaTeX|
-------

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

----

Scribe
------
Presentation, and (I think) programmable. 1980

::

    @Heading(The Beginning)
    @Begin(Quotation)
        Let's start at the very beginning, a @i(very good place) to start
    @End(Quotation)

which can also be written::

    @Heading(The Beginning)
    @(Quotation
        Let's start at the very beginning, a @i(very good place) to start
    )


----

Postscript
----------

Presentation, and programmable. Not really intended to be written by people.
1984 and onwards, and still in use today (and, of course, also used in PDF)

This is the example on the Wikipedia page::

   %!PS
   /Courier             % name the desired font
   20 selectfont        % choose the size in points and establish 
                        % the font as the current one
   72 500 moveto        % position the current point at 
                        % coordinates 72, 500 (the origin is at the 
                        % lower-left corner of the page)
   (Hello world!) show  % stroke the text in parentheses
   showpage             % print all on the page

----

TEI
---

Semantic. 1987. Still going strong and in use today.

With no particular explanation, here is some mark up of the start of
Swinburne's Sestina::

  <lg type="sestina">
  <lg type="sestet" rhyme="ababab">
  <l>I saw my soul at rest upon a <rhyme label="a" xml:id="A">day</rhyme></l>
  <l>As a bird sleeping in the nest of <rhyme label="b" xml:id="B">night</rhyme>,</l>
  <l>Among soft leaves that give the starlight <rhyme label="a" xml:id="C">way</rhyme></l>
  <l>To touch its wings but not its eyes with <rhyme label="b" xml:id="D">light</rhyme>;</l>
  <l>So that it knew as one in visions <rhyme label="a" xml:id="E">may</rhyme>,</l>
  <l>And knew not as men waking, of <rhyme label="b" xml:id="F">delight</rhyme>.</l>
  </lg>

showing the working of the ryhming scheme.

.. note:: Taken from http://teibyexample.org/examples/TBED04v00.htm,
   "TEI By Example" poetry examples.

----

HTML
----

Presentaton, still going strong today (although rather altered). 1991 and
onwards.

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

.. note:: Yes, that is the same example as from the "using a DTD" page.
  Of course, HTML (in each of its various forms) is an SGML document type.

----

setext
------

Presentation. Lightweight. Partly a reaction to SGML. Clearly influential on
all of the succeeding lightweight markups. 1991

Excerpted from a document called "Why setext"::

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

----

Another example::

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




----

Docbook
-------

Semantic. 1991 and onwards. Still going today.

----

wikiwikiweb
-----------

.. note:: Maybe ignore for now

----

POD
---

Perl's "Plain Old Documentation". Clearly influenced by ... and ...

1994

::

  =pod

  =head1 DESCRIPTION

  This is not I<really> representative of POD usage.

  =over 2

  =item This is a list item.

  =item This is another list item.

  =back

  =cut

.. note:: An example of markup to a specific purpose, and clearly very
   successful.

   Note that the blank lines are required around the POD commands.

   I don't think you can do multi-paragraph list items. And, of course, the
   POD definitions contains ambuguities, although how to handle some of them
   is explained.


----

Javadoc
-------

Essentially uninteresting, ignore.

----

StructuredText
--------------

Presentation. Lightweight. 1996. Ancestral to reStructuredText.

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



----

reStructuredText
----------------

Presentation. Lightweight. 2000 and beyond.

Now used for Python documentation, Linux, and others.

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

-----

Asciidoc
--------

Presentation. Lightweight. 2002. Aimed specifically as a lightweight way of
producing docbook.

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

----

markdown
--------

Presentation. Lightweight. 200Presentation. Lightweight. 2002. Aimed
specifically as a lightweight way of producing docbook.4

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

.. note:: Yes, I know headings can be underline as well, but I've never seen
  anyone actually doing that.

----

Fin
---

* 1960s TYPSET and RUNOFF, GML
* 1970s roff, runoff, nroff/troff, |TeX| and Metafont in SAIL
* 1980s Scribe, |TeX| and Metafont in Pascal, |LaTeX|, Postscript, SGML, TEI
* 1990s HTML, setext, Docbook, WikiWikiWeb, POD, javadoc, StructuredText, XML
* 2000s reStructuredText, AsciiDoc, markdown

Written using reStructuredText_.  Presented using hovercraft_.

Source and a longer article at https://github.com/tibs/markup-history

.. vim: set filetype=rst tabstop=8 softtabstop=2 shiftwidth=2 expandtab:
