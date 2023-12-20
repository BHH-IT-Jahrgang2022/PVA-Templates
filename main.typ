//vars
#import "vars.typ": title

#import "config.typ": conf
#import "deckblatt.typ": deckblatt

#import "chapters/abstract.typ": abstract
#import "chapters/ch1.typ": ch1

#show: doc => conf(
  title,
  doc
)


//start of doc

//deckblatt
#deckblatt()
//pagebreak


//toc
#set page(numbering: "I")
#outline(title: "Inhaltsverzeichnis") \
#outline(title: "Abbildungsverzeichnis",target: figure)
#pagebreak()


#abstract()
#pagebreak()

//main

#set page(numbering: "1")
#counter(page).update(1)


#ch1()

#pagebreak()
Fortnite#cite(<games2017fortnite>) (needed to not make the bibliography empty, delete in actual use)
#bibliography("main.bib")