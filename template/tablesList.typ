#let createListofTables() = {
  set heading(numbering: none)
  par[= Tabellenverzeichnis]  // change heading here for other languages
  outline(title: none, target: figure.where(kind: table))
}
