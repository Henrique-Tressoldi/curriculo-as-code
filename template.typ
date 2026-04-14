#let resume(
  name: "",
  title: "",
  contact_info: (),
  body
) = {
  set document(title: name + " - Resume", author: name)
  set text(font: "Libertinus Serif", size: 10pt, lang: "en")
  set page(
    paper: "a4",
    margin: (x: 1.5cm, y: 1.5cm),
  )

  // Document base settings
  set par(justify: true, leading: 0.5em)

  // Header section
  align(center)[
    #text(weight: "bold", size: 24pt)[#name]
    #v(5pt)
    #text(weight: "medium", size: 14pt, fill: rgb(80, 80, 80))[#title]
    #v(5pt)
    #set text(size: 10pt)
    #contact_info.join("  |  ")
  ]

  v(5pt)
  line(length: 100%, stroke: 0.5pt + rgb(150, 150, 150))
  v(10pt)

  // Heading Level 1 (Sections)
  show heading.where(level: 1): it => [
    #set text(size: 13pt, weight: "bold", fill: rgb(0, 51, 102))
    #v(10pt)
    #upper(it.body)
    #v(-5pt)
    #line(length: 100%, stroke: 0.3pt + rgb(200, 200, 200))
    #v(5pt)
  ]

  // Heading Level 2 (Job Title / Company)
  show heading.where(level: 2): it => [
    #set text(size: 11pt, weight: "bold", fill: rgb(0, 0, 0))
    #v(8pt)
    #it.body
  ]
  
  // Heading Level 3 (Dates / Location)
  show heading.where(level: 3): it => [
    #set text(size: 10pt, weight: "semibold", style: "italic", fill: rgb(80, 80, 80))
    #v(-5pt)
    #it.body
    #v(2pt)
  ]

  body
}
