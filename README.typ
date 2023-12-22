#set text(
  font: "Linux Libertine",
  size: 12pt
)
#set par(justify: true, leading: 1em)
#set heading(numbering: none)
#show figure: set text(size: 0.85em)

= README for Typst Template following the BHH style guide

\

This readme is about the technical specifications and information about the project and less about its intentions. The last part in short firstly: If you have a compile error: check if you commented the table and/ or images list in _paper.typ_  in case you have no image and/ or table.

\ 

=== General folder structure of the template: \
\- bib\
#h(1cm)  \- example.yml\
#h(1cm)  \- bib.yml\
\- figures\
#h(1cm)  \- test.png\
\- README\
#h(1cm)  \- README.md\
#h(1cm)  \- README.typ\
\- template\
#h(1cm)  \- acronymsList.typ\
#h(1cm)  \- bib.typ\
#h(1cm)  \- conf.typ\
#h(1cm)  \- contents.typ\
#h(1cm)  \- cover.typ\
#h(1cm)  \- figuresList.typ\
#h(1cm)  \- tablesList.typ\
\- abstract.typ\
\- acronyms.typ\
\- appendix.typ\
\- main.typ\
\- paper.typ\
\
=== The most important folders 
==== Bibliography <bib>

The *bib* folder stores the _.yml_ and _.bib_ files, where books and other sources are stored. They follow either the LaTeX bib style or the #link("https://github.com/typst/hayagriva", )[#underline[#text(fill: blue)[Typst own yml-format]]]. To reduce confusion use this, though of course you can add paths to any file you want. The empty _bib.yml_ file is already added to the document and is ready to take your sources in the style of the _example.yml_ file. When you don't refer to a source it's normally not shown so you could even leave the _example.yml_ file there and don't need to touch the _bib.typ_ file.


==== Figures

The *figures* folder stores the images and figures you want to add to reduce confusion about paths. Valid file types are _.jpg_, _.png_, _.gif_, and _.svg_.

==== Template data

The *template* folder stores all the _.typ_ files you need to setup an essay. You only need to touch those files if any default configuration doesn't work for you. The files in there auto-generate your list of acronyms with data you provide (in the _acronyms.typ_-file at root level), your bibliography, your table of contents, your cover page (with data you submit in the _paper.typ_), your list of figures, and your list of tables. Furthermore, the basic configuration of the page and text design is stored there.

=== The files on root level and their meaning

==== _abstract.typ_

The abstract is stored and edited in _abstract.typ_ to do so, follow the example in the file and stay within the function. Everything outside of the function will not be shown.

==== _acronyms.typ_

All the acronyms you want to have in the list of acronyms are created in _acronyms.typ_. To make the design nearly following the style guide, you need to add ```typ
#h(1fr)
``` to every explanation as shown in the examples. Might get updated soon though.

==== _appendix.typ_

As the name indicates, in _appendix.typ_ is all your text and data for the appendix stored. You can add text within the function, excatly like the abtsract in _abstract.typ_

==== _main.typ_

Your main part will be written in _main.typ_. If you wish you could also write the chapters in chapter files and add them together either in _main.typ_ or directly in _paper.typ_. Within _main.typ_ you do NOT need to set any design specific properties including headline or page definitions. Here it's solely about the content of your work. Below will be some tips about how to include figures/ pictures, tables, and cites as well as some inormation about what to do when a typst compile fails and what known errors are regarding problems of templates. Please read the chapter *#link(<TypstBasics>)[Typst Basics]* carefully.


==== _paper.typ_

_paper.typ_ is the "main" file of the document: if you want to see the whole document, you need to compile _paper.typ_ to a _.pdf_. Additionally, you set some personal properties in _paper.typ_, including:
- metadata for the _.pdf_-document:
  - author: your name as string
  - title: title as string
- data for the cover page:
  - title: title as content or string
  - univerity: university as content or string
  - additionalInfo: as content or string, default: "Ausarbeitung im Rahmen des Seminars"
  - seminar: seminar as content or string
  - study: your study as content or string
  - semester: the current semester as content or string
  - examiner: your examiner as content or string
  - author: author as content or string
  - dateofBirth: your date of birth as content or string
  - semesterCount: your total amount of semesters as content or string
  - matriculationNumber: your matriculation number as content or string
  - address: your address as content in the form [_street_ \\ _city_]
  - email: your email as string
  - date: date of submission as string
  - cooperation: company of cooperation as content or string
\
Furthermore, you can remove some list/ indices here, in case you don't need them, refer to *#link(<TypstBasics>)[Typst Basics]* for more information.
\
\
#align(center)[*Basically: do NOT touch the files within the TEMPLATE folder, do NOT touch any fields starting with an _\#_ unless you only provide data while being asked via comments to do so within the _paper.typ_ file. Try to avoid using _\#_ unless you use it with _figures_, _par_ or _align_ if you are not sure about what you're doing. In all cases of lacking knowledge, see the chapter below* \ If you are an expirienced user, feel free to adjust the document to your liking, maybe open a branch for it, to allow other users the access to your version of this template? ]
\
\


= Typst Basics <TypstBasics>

== General Help

See the #link("https://typst.app/docs/reference/", )[#underline[#text(fill: blue)[official documentation of typst]]] for any guidiance regarding Typst itself. The following guide will provide some basic information with detailed code examples to make the life easier.

== Writing some text

Since the style setup is already done with this template, you don't need to worry anything design related. Something you might have to do is alignment in case you need something special. The normal text is (if nothing special is stated) written using the _Times New Roman_ font in the size _12pt_ and _justified_ with a leading of _1.5em_.
To structure your text, you can add headlines with *=* in front of the line (similiar to typical mark-down), where ```typ
= heading
== subheading
=== 3rd heading
``` and so on.\

Now you have some organized plain text...\
Just like in markdown you can make text *bold* or _italics_ or #underline()[underlined]:
```typ
*bold*
_italics_
#underline()[underlined]
```\
Just to have it noted here, the alignment is setup via the _\#align_ command:
```typ
#align(center)[centered text]
```\

To use the *\#* as text character and not as an command prefix, you can escape it, like any other functional key, with an backslash *\\*.

To add a line break either write '\#linebreak()' or just use the backslash.

Another nice function is the easy nesting: everything written within Typst Content (the squared bracktes []) is another "pure Typst instance": there you can call functions with the hashtag like before:
```typ
#par[
  Let's create a paragraph with an 
  #underline()[
    underlined part and a 
    #text(fill: red)[
      red word
    ]
  ]
]
``` The outcome looks like this:
#par[Let's create a paragraph with an #underline()[underlined part and a #text(fill: red)[red word]]]
Maybe center it additionally?
```typ
#align(center)[
  #par[
    Let's create a paragraph with an 
    #underline()[
      underlined part and a 
      #text(fill: red)[
        red word
      ]
    ]
  ]
]
```
#align(center)[#par[Let's create a paragraph with an #underline()[underlined part and a #text(fill: red)[red word]]]]

But the red part shouldn't be underlined...
```typ
#align(center)[
  #par[
    Let's create a paragraph with an 
    #underline()[
      underlined part and a
    ] 
    #text(fill: red)[
      red word
    ]
  ]
]
```
#align(center)[#par[Let's create a paragraph with an #underline()[underlined part and a] #text(fill: red)[red word]]]
\



== Adding images

Since pure text is most of the time a little boring to read, you can add some images easily. Just have them in a normal image file type (jpg, png, gif or svg) and for easy use, place them with a nice file name in the _figures_ folder.

If you reach the point in (for exmaple _main.typ_) where you want to add the image, setup a figure and then add the image like this:
```typ
#figure(
  image("figures/yourImage.png", width: 70%, alt: "give your image a nice alt text"),
  caption: "and a nice caption"
)<AddANiceTag>
```
About the used parameters:
- image: image initialization
  - path: mandatory, string path to file starting at document (not necessarily root!)
  - width: optional, sets the width of the image (relational to page), height possible too, for more option refer to the Typst documentation
  - alt: alternative text, string describing the image
- caption: figure caption, only "titling" here, numbering is added automatically with it being a figure!
- <>: a tag allows you to place a reference within the text towards a specific item. For figures they're shown as the auto-generated part of the caption (in a German text'd be "Abbildung X") where X is automatically assigned with the upcoming number in the document. They're auto-counted in order of appearance. References will be looked at a little later.

Please refrain from using '\#image(...)' without figure, since only figures - images are added to the list of figures, additionally captions are only easily available for figures.\ \
Maybe nest the figure into centering to make it look cleaner depening on your taste:
```typ
#align(center)[
  #figure(
    image("figures/yourImage.png", width: 70%, alt: "give your image a nice alt text"),
    caption: "and a nice caption"
  )<AddANiceTag>
]
```That  would create (with usage of the _/figures/test.png_ image) following output:
#align(center)[
  #figure(
    image("figures/test.png", width: 70%, alt: "give your image a nice alt text"),
    caption: "and a nice caption"
  )<AddANiceTag>
]

\

=== Text wrapping around images (or any other figure)

Text wrapping isn't implemented yet though it's in planning according to the development team of Typst.
To wrap text manually, you can use the grid function: just be aware, you need to classify, which words are belonging into the grid and which not, manually. In case of adding some more lines above the image/ grid may break the whole design. But after the warning: here a code example on how to do it:

```typ
#grid(columns: 2, gutter: 1em,
  [
    #figure(
      image("figures/test.png", width: 25%, alt: "test-image: line-drawn human"),
      caption: [Demonstration of wrapping]
    )<WrappedImage>
  ],
  [
    #lorem(40)
  ]
  #lorem(50)  // some after grid text to demonstrate the wrapping effect
) 
``` The result with the test image (note this part will break after deleting the _test.png_ in the _figures_ folder):
#grid(columns: 2, gutter: 1em,
  [
    #figure(
      image("figures/test.png", width: 25%, alt: "test-image: line-drawn human"),
      caption: [Demonstration of wrapping]
    )<WrappedImage>
  ],
  [
    #lorem(40)
  ]
) 
#lorem(50)
\

== Tables

Sometimes you need some tables to show (scientific) data: to do so you can create a table within a figure. Here again, like with the images, don't forget to nest it within a figure to get an auto created entry in the list of tables as well as the caption feature:
```typ
#figure(
  table(columns: 2, [1], [2], [3], [4]),
  caption: "Demonstration"
)<TableWithTag>
``` This will return following table:
#figure(
  table(columns: 2, [1], [2], [3], [4]),
  caption: "Demonstration"
)<TableWithTag>

Let's add some funny designs:

```typ
#figure(
  table(columns: (1fr, 2fr), inset: 10pt, 
  align: horizon,
  [*Header 1*], [*Header 2*],
  [1], [2], 
  [3], [4],
  [5]),
  caption: "Some more Design"
)<DesignATable>
``` And the outcome:

#figure(
  table(columns: (1fr, 2fr), inset: 10pt, 
  align: horizon,
  [*Header 1*], [*Header 2*],
  [1], [2], 
  [3], [4],
  [5]),
  caption: "Some more Design"
)<DesignATable>

== Citing and other references

To cite something, you need to add the books/ articles/ websites/ whatever you want to cite, to the bibliography... easiest way is to put them in the according format into the bib.yml file or create a new one and integrate it in the bib.typ file in the template folder. See #link(<bib>)[Bibliography] for more information.
After having all your sources present you can cite them with an *\@* and then the tag (name of the entry of an _.yml_ element). Furthermore, you can add some more supplements, e.g. supplying a page number:
```typ
some smart statement @SmartBook[p. 6]
```
This would automatically insert the reference data according to the chosen cite style (e.g. "apa" or "ieee") and add the supplement provided.
Examples can be found in the _main.typ_ where the bibliography is embedded.

Additionally, you can reference towards a figure having a tag. Let's link an image and a table from a few chapters above:

```typ
Some text, see @WrappedImage \
And some more text, see @DesignATable
```
That's the output:\
Some text, see @WrappedImage \
And some more text, see @DesignATable

= An important note

PLEASE CHECK YOUR STYLE GUIDE, there might be some mistakes, feel free to open an issue, so we can fix that.

And last but definitly not least: you'll run into a compile error when you leave outlines of figures in, even though you haven't a figure of that respective kind in:\
when you don't have any table in, you need delete or comment the part about list of tables in the _paper.typ_
same goes for the list of images


====  Some outlines

#outline()

\

#outline(
  target: figure.where(kind: image)
)

\

#outline(
  target: figure.where(kind: table)
)