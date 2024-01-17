#let createTableofContent() = {
  set heading(numbering: none)
  set heading(outlined: false)
  par[= Inhaltsverzeichnis]  // change heading here for other languages
  show outline.entry.where(level:1): it => {
    v(12pt, weak: true)
    strong(it)
  }
  outline(title: none, indent: auto)
}