#import "template/conf.typ": style
#import "template/cover.typ": createCover
#import "template/contents.typ": createTableofContent
#import "template/acronymsList.typ": createListofAcronyms
#import "template/figuresList.typ": createListofFigures
#import "template/tablesList.typ": createListofTables
#import "abstract.typ": showAbstract
#import "template/bib.typ": createBibliography
#import "appendix.typ": showAppendix


// --- Sets global style and page settings ---
// Edit template/conf.typ to change a GLOBAL setting (e.g. font), some are variable set "locally" for special pages/ chapters
#show: style

#set document(
  author: "Your Name",  // put your name here for pdf document properties
  title: "The Title"  // and the pdf title here
)
// --- Cover Page: Please submit values in the same data type ---
// Edit template/cover.typ for changes on base design/ layout/ language

#par[
  #show: doc => createCover(
    title: "Test of Typst Template",
    university: [Your university],
    seminar: [Your seminar],
    study: [Your subject of study],
    examiner: [Your professor],
    author: "Your Name",
    dateofBirth: [01.01.2001],
    semesterCount: [1],
    matriculationNumber: [123456],
    address: [Teststraße 1 \ 12345 Teststadt],
    email: "test@test-university.edu",
    date: "01. April 2099",
    cooperation: [Your Company]
  )
]

#pagebreak()


// --- Table of Content ---
// Edit template/contents.typ to change anything
#par[
  #set page(numbering: "I")
  #counter(page).update(1)
  #show: doc => createTableofContent()
]

#pagebreak()

// --- List of acronyms ---
// Edit template/acronymsList.typ to change design/ present options
// NOTE: you need to add all acronyms manually in the acronyms.typ file, but NO design options there (including citeStyle, this is set in global settings)
#par[
  #set page(numbering: "I")
  #show: doc => createListofAcronyms()
]

#pagebreak()

// --- List of figures --- (Comment all out if there are none)
// Edit template/figuresList.typ to change design/ present options
// NOTE: in order to get all your images in you need to set them up as figure-image, please see the README for more information and some nice features coming with it
#par[
  #set page(numbering: "I")
  #show: doc => createListofFigures()
]

#pagebreak()

// --- List of tables --- (Comment all out if there are none)
// Edit template/tablesList.typ to change design/ present options
// NOTE: in order to get all your tables in you need to set them as figure-table, please see the README for more information and some nice features coming with it
#par[
  #set page(numbering: "I")
  #show: doc => createListofTables()
]

// --- Abstract ---
// Write your abstract in abstract.typ
#par[
  #set page(numbering: "I")
  #set heading(numbering: none)
  #show: showAbstract()
]

#pagebreak()

// --- Main Part ---
// Write your main part in main.typ
// Here apply the global conf settings
#counter(page).update(1)
#par[
  #include "main.typ"  // should you have files per chapter include them here
]

#pagebreak()

// --- Bibliography ---
// Edit bib.typ to edit bibliography settings including paths to .bib and .yml source files
#par[
  #set heading(numbering: none)
  #show: doc => createBibliography()
]

#pagebreak()

// --- Appendix ---
// Edit appendix.typ for content 

#par[
  #set page(numbering: "I")
  #counter(page).update(1)
  #set heading(numbering: none)
  #show: showAppendix()
]
