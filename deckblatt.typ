#import "vars.typ": title, event, year, gutachter, due_date, author_name, author_dob, author_fachsemester, author_uid, author_street, author_city, author_email

#let logo = align(right)[
    #image("company_logo.jpg", width: 50mm)
  ]

#let deckblatt() = [
  //set page numbering
  #set page(numbering: none, header: none)
  #counter(page).update(0)

  //content
  #logo
  
  #align(center)[
  Berufliche Hochschule Hamburg 
  \ \
  
  #text(18pt)[
    Studiengang \
    Informatik B Sc.
  ]
  \ \ \ 

  #text(16pt)[
    *#title*
  ]

  (Ausarbeitung im Rahmen des Seminars/Vorlesung oder Bachelor-/Masterarbeit) \
  Veranstaltung #event \
  Wintersemester #year
]
\ \ 

Gutachter: #gutachter \
Eingereicht am: #due_date \ \ \ 

*Vorgelegt von:* \
#grid(
  columns: (1fr, 2fr),
  align(left)[
    Name: \
    Geburtsdatum: \
    Fachsemester: \
    Matrikelnummer: \
    Adresse: \ \
    E-Mail: \
  ],
  align(left)[
    #author_name \
    #author_dob \
    #author_fachsemester \
    #author_uid \
    #author_street \
    #author_city \
    #link("mailto:" + author_email)
  ]
)


//#pagebreak()
]