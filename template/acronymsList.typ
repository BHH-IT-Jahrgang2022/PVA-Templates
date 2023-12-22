#let createListofAcronyms() = {
  set heading(numbering: none)
  par[= Abkürzungsverzeichnis]  // Edit heading here to change language
  set terms(tight: false, separator: none)
  include "../acronyms.typ"
}