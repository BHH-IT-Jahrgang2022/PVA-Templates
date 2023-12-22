#let style(content) = {
  set text(
    font: "Times New Roman",  // set global font
    size: 12pt,  // and size
    lang: "de"  // set language of document: influencing auto-generating describtions and some character placing like ' and ""
  )


  set heading(
    numbering: "1.1",  // set global heading style
    outlined: true
  )

  set page(
    paper: "a4",
    margin: (
      top: 2.5cm, 	      // set gloabl page design and margins
      bottom: 2cm,
      left: 2.5cm,
      right: 2.5cm
    ),
    numbering: "1", // set page numbering style
    number-align: right  // and number alignment
  )

  set par(
    justify: true,  // justifing paragraphs?
    leading: 1.5em  // leading paragraphs?
  )

  set cite(style: "apa")  // set global cite style here
  show figure: set text(size: 0.85em) // set figure caption size here

  content
}
