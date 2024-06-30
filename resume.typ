#let cv(author: "", website: "", email: "", github: "", body) = {
  set document(author: author, title: author + " - Resume")
  set text(font: "Linux Libertine", lang: "en", size: 10pt)
  set page(
    footer: [
      #set align(right)
      #set text(6pt)
      Last updated on #datetime.today().display("[month repr:long] [day], [year].")
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

#let exp(place, location, ..details) = {
  grid(
    columns: (50%, 50%),
    align(left)[
      *#place*
    ],
    align(right)[
      #location
    ]
  )
  v(1%, weak: true)
  for position in details.pos() {
    grid(
      columns: (50%, 50%),
      align(left)[
        #emph[#position.title]
      ],
      align(right)[
        #position.time
      ]
    )
    set list(indent: 1em)
    position.details
    v(1%, weak: true)
  }
  v(2%, weak: true)
}

// ------------

#show: cv.with(
  author: "Simon Bihel",
  website: [#link("https://simonbihel.me/")[simonbihel.me]],
  email: [#link("mailto:simon@simonbihel.me")],
  github: [#link("https://github.com/sbihel")[github.com/sbihel]],
)

= Skills
/ Rust: One of my main interests, I have four years of experience working with it in different contexts, from libraries and web services to bindings in various languages.
/ Infrastructure: One of my main responsibilities, I have experience working on internal infrastructure as well as working in customers' environments.
/ Digital Identity: I have been working in this domain for four years, ranging from working and implementing standards to designing solutions.

= Experience
#exp(
  "SpruceID",
  "(Remote) London, United-Kingdom",
  (
    title: "Principal Software Engineer, Head of Infrastructure",
    time: "March 2023 – Present",
    details: []
  ),
  (
    title: "Senior Software Engineer, Infrastructure Lead",
    time: "April 2022 – March 2023",
    details: []
  ),
  (
    title: "Software Engineer",
    time: "September 2020 – April 2022",
    details: [
      - Joined as the second employee and worked on most projects over the years.
      - Development: worked on most libraries and services. Mostly in Rust but generated bindings for other languages. Also worked on web and mobile apps.
      - Standards: participated in the implementation of new standards (e.g. Verifiable Credentials, OID4VC, ISO mDL, Sign-In with Ethereum).
      - Infrastructure: single person responsible for it, I provided direction and did most of the implementation.
      - DevOps: managed services deployments, CI/CD pipelines, and monitoring.
      - Architecture: contributed to infrastructure and software architecture discussions.
      - Compliance: worked on the infrastructure side of SOC2.
      - Management: up to 7 direct reports at a time, I was also part of the leadership team.
    ]
  )
)
#exp(
  "Nexmo (Vonage)",
  "London, United-Kingdom",
  (
    title: "Software Development Engineer in Test",
    time: "November 2018 – October 2020",
    details: [
      - Testing: maintenance of the test suite (e.g. abstraction and generation of tests, parallelisation).
      - Monitoring: facilitate incident impact measurement, track API usage, alerting (pushed for on-call).
      - Investigations: understanding test failures or abnormal behaviours across the services.
      - Development: built a rating engine, refactored cluster management, various internal changes in services.
      - DevOps: AWS migration, maintenance of on-demand test environments (e.g. dockerise services, debugging).
    ]
  )
)
#exp(
  "KTH",
  "Stockholm, Sweden",
  (
    title: "Research Intern",
    time: "February 2018 – June 2018",
    details: []
  )
)
#exp(
  "KAIST",
  "Daejeon, South-Korea",
  (
    title: "Research Intern",
    time: "March 2017 – August 2017",
    details: []
  )
)
#exp(
  "IRISA & INRIA",
  "Rennes, France",
  (
    title: "Research Intern",
    time: "May 2016 - July 2016",
    details: []
  )
)

= Education
#exp(
  "University of Rennes 1 & ÉNS Rennes",
  "Rennes, France",
  (
    title: "BSc & MSc in Computer Science, research track",
    time: "2013 - 2018",
    details: []
  )
)
