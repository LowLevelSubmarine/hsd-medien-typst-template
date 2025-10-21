#let hsd(
  title: none,
  sub_title: none,
  author: none,
  type_of_work: none,
  degree_program: none,
  time_of_submission: none,
  examiners: (),
  doc,
) = {
  set text(size: 11pt, font: "arial", top-edge: 1em, hyphenate: true)
  set par(justify: true, linebreaks: "optimized")
  set heading()

  show heading.where(level: 1): value => {
    set text(size: 14pt, weight: "bold")
    pagebreak(weak: true)
    pad(bottom: 9pt, value)
   }

  align(right, [
    #image("./logos.png")
    #v(3.5em)
    #text(size: 24pt, weight: "bold", title)
    #if sub_title != none [
    #v(1.5em)
    #text(size: 16pt, weight: "bold", sub_title)
    ]
    #v(3em)
    #text(size: 16pt, weight: "bold", author)
    #v(10em)
    #text([#type_of_work im Studiengang])
    #v(3pt)
    #text(weight: "bold", degree_program)
    #v(3pt)
    #text(size: 12pt, weight: "bold", time_of_submission)
    #v(4em)
    #if examiners.len() > 0 [
      Prüfer*innen:
      #v(3.5pt)
      #examiners.join([
        #v(2.5pt)
      ])
    ]
  ])
  pagebreak()

  set page(
    margin: (
      top: 2.4cm,
      bottom: 3.7cm,
      left: 4.2cm,
      right: 3cm,
    ),
    header-ascent: 2em,
    header: pad(bottom: 0em, {
      pad(bottom: -9pt, right: 0.5cm, grid(
        columns: (1fr, auto),
        title,
        align(right)[
          Seite
          #context (counter(page).get().at(0))
        ],
      ))
      line(length: 100%)
    }),
    footer: par(justify: false)[
      #type_of_work, Hochschule Düsseldorf, Fachbereich Medien, #degree_program - #author, #time_of_submission
    ],
  )
  doc
}
