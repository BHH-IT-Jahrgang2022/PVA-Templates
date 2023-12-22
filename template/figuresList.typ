#let createListofFigures() = {
  set heading(numbering: none)
  par[= Abbildungsverzeichnis]  // change heading here for other languages
  outline(title: none, target: figure.where(kind: image))
}