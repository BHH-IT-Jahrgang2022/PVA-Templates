#let createCover(
  title: [],
  university: [],
  additionalInfo: "Ausarbeitung im Rahmen des Seminars",
  seminar: [],
  study: [],
  semester: [],
  examiner: [],
  author: "",
  dateofBirth: [],
  semesterCount: [],
  matriculationNumber: [],
  address: [],
  email: "",
  date: [],
  cooperation: [],
) = {
  set page(numbering: none)
  align(center, text[#university])
  linebreak()
  align(center, text(18pt)[Studiengang])  // change cover describtions here and following where it's within content
  align(center, text(18pt)[#study])
  linebreak()
  align(center, text(16pt)[*#title*])
  align(center, text[#additionalInfo])
  align(center, text[#seminar])
  align(center, text[#semester])
  linebreak()
  linebreak()
  linebreak()
  text[Erster Gutachter: #examiner]
  linebreak()
  text[Eingereicht am: #date]
  linebreak()
  linebreak()
  linebreak()
  text[*Vorgelegt von:*] 
  linebreak()
  grid(columns: 2, gutter: 1.5em, [Name:], [#author], [Geburtsdatum: ], [#dateofBirth], [Fachsemester:], [#semesterCount], [Matrikelnummer:], [#matriculationNumber], [Adresse:], [#address], [E-Mail:], [#email], [Kooperationsunternehmen: ], [#cooperation])
}