#let conf(title, document)={
  set text(
    font: "Linux Libertine",
    size: 12pt ,
  )
  set page(
    paper: "a4",
    margin: (top: 25mm, left: 25mm, right: 25mm, bottom: 20mm),
    number-align: bottom + right,
    numbering: "1",
    header: align(right)[#title]
  )
  set par(justify: true, leading: 1.5em)
  
  set heading(numbering: "1.")

  document
}
