#let ch1() = [
  = First chapter

  This is the first chapter. \
  You should just write the stuff you need (new file + function in there that looks like this) and use it. \
  This is just a placeholder. \
  hi

  == Subheadline

  This is an example for a subheadline.

  == Thorsten
  Digga ich b
  #let logo = image("../company_logo.jpg", height: 25mm)


  === Subthorsten
  #align(center)[
    #figure(
      caption: "Das ist das cimt-Logo",
    )[
      #logo
    ]
  ]

  == Tables / Grids

  //3 spalten, 4 zeilen
  #grid(
    columns: 3, //3 gleich große: (1fr, 1fr, 1fr) ; (2fr, 1fr, 1fr)
    column-gutter: 5mm,
    row-gutter: 5mm,
  )[
    Hallo
    Hallo
    Hallo
    
    Hallo
    Hallo
    Hallo

    Hallo
    Hallo
  ]
  

  == Lorem

  #lorem(100)
]

