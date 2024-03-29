#let cv(author: "", website: "", email: "", github: "", body) = {
  set document(author: author, title: author + " - Resume")
  set text(font: "Linux Libertine", lang: "en", size: 10pt)
  set page(
    footer: [
      #set align(right)
      #set text(6pt)
      Last updated on April 18, 2023
    ]
  )

  show heading: it => [
    #pad(bottom: -10pt, [#smallcaps(it.body)])
    #line(length: 100%, stroke: 0.5pt)
  ]

  grid(
    columns: (50%, 50%),
    rows: auto,
    row-gutter: 1.5%,
    align(left + bottom)[
      #block(text(weight: 700, 1.75em, author))
    ],
    align(right + bottom)[
      #email
    ],
    align(left + bottom)[
      #website
    ],
    align(right + bottom)[
      #github
    ],
  )

  // Main body.
  set par(justify: true)

  body
}

#let exp(place, title, location, time, details) = {
  pad(
    bottom: 10%,
    grid(
      columns: (auto, 1fr),
      align(left)[
        *#place* \
        #emph[#title]
      ],
      align(right)[
        #location \
        #time
      ]
    )
  )
  details
}

// ------------

#show: cv.with(
  author: "Simon Bihel",
  website: [#link("https://simonbihel.me/")[simonbihel.me]],
  email: [#link("mailto:simon@simonbihel.me")],
  github: [#link("https://github.com/sbihel")[github.com/sbihel]],
)

= Experience
#exp(
  "Spruce",
  "Head of Infrastructure",
  "(Remote) London, United-Kingdom",
  "September 2020 – Present",
  [
    - Joined as a Software Developer at the beginning of the startup.
    - Development: worked on most libraries and services.
    - DevOps: set up the whole infrastructure, managed services deployments, pipelines, and monitoring.
  ]
)
#exp(
  "Nexmo",
  "Software Developer in Test",
  "London, United-Kingdom",
  "November 2018 – October 2020",
  [
    - *Voice API*: member of the Real-Time Communication stack.
    - Testing: maintenance of the test suite (e.g. abstraction and generation of tests, parallelisation).
    - Monitoring: facilitate incident impact measurement, track API usage, alerting (pushed for on-call).
    - Investigations: understanding test failures or abnormal behaviours across the services.
    - Development: built a rating engine, refactored cluster management, various internal changes in services.
    - DevOps: AWS migration, maintenance of on-demand test environments (e.g. dockerise services, debugging).
  ]
)
#exp(
  "KTH",
  "Research Intern",
  "Stockholm, Sweden",
  "February 2018 – June 2018",
  [
    - *Adaptation of Amplified Unit Tests for Human Comprehension*: Generating natural language explanations for Java unit tests generated by DSpot.
  ]
)
#exp(
  "KAIST",
  "Research Intern",
  "Daejeon, South-Korea",
  "March 2017 – August 2017",
  [
    - *Automated Test Data Generation for Dynamically Typed Programming Languages*: Survey on Test Data Generation from scratch for dynamic languages such as Python.
  ]
)
#exp(
  "IRISA & INRIA",
  "Research Intern",
  "Rennes, France",
  "May 2016 - July 2016",
  [
    - *Specifying the Experimental Scenarios for Simulated Cloud Studies*: Designing an API for SimGrid, a distributed systems simulator, targeting researchers’ needs for cloud simulations.
  ]
)

= Education
#exp(
  "University of Rennes 1 & ÉNS Rennes",
  "BSc & MSc in Computer Science, research track",
  "Rennes, France",
  "2013 - 2018",
  []
)
