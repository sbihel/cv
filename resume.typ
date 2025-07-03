#let cv(author: "", website: "", email: "", github: "", body) = {
  set document(author: author, title: author + " - Resume")
  set text(font: "Libertinus Serif", lang: "en", size: 10pt)
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

= Expertise
/ Rust: Four years of professional experience, including developing libraries, web services, and language bindings.
/ Infrastructure: Experience working on internal infrastructure as well as working in customers' environments.
/ Digital Identity: Four years of experience, including implementing standards and designing solutions.

= Experience
#exp(
  [#link("https://spruceid.com")[SpruceID]],
  "(Remote) London, United Kingdom",
  (
    title: "Principal Software Engineer",
    time: "March 2023 – Present",
    details: []
  ),
  (
    title: "Senior Software Engineer",
    time: "April 2022 – March 2023",
    details: []
  ),
  (
    title: "Software Engineer",
    time: "September 2020 – April 2022",
    details: [
      - Joined as the second employee and worked on most projects over the years.
      - Projects highlights:
         - #link("https://spruceid.com/customer-highlight/california-highlight")[California DMV mobile driver's licenses]: co-led a cross-functional team to implement end-to-end mDL issuance and presentment, with successful production deployment after 6 months.
         - #link("https://login.xyz/")[Sign-in with Ethereum]: wrote an OIDC IdP, as well as writing libraries in Rust, JS, Python, Golang, etc.
         - Standards implementations: wrote open-source libraries for W3C Verifiable Credential, OID4VC, ISO mDL, as well as tooling such as CLIs and HTTP services, with hundreds of GitHub stars combined.
      - Development: worked on most libraries and services; mostly in Rust but also generated bindings for other languages, and worked on web and mobile apps.
      - Infrastructure: designed and implemented the entire infrastructure stack, from provisioning to CI/CD and monitoring, achieving 99.99% uptime and SOC2 compliance.
      - Management: up to 7 direct reports, provided engineering guidance, translated ambiguous requests from internal stakeholders and customers into action items, interfaced with customers, helped with the product direction, and was part of the leadership team.
    ]
  )
)
#exp(
  [#link("https://www.vonage.co.uk/communications-apis/")[Nexmo (Vonage)]],
  "London, United Kingdom",
  (
    title: "Software Development Engineer in Test",
    time: "November 2018 – October 2020",
    details: [
      - Testing: maintenance and optimisation of the test suite, debugging across the whole stack.
      - Monitoring: facilitate incident impact measurement, track API usage, alerting, part of the on-call rotation.
      - Development: built a rating engine, refactored cluster management, various internal changes in services.
      - DevOps: AWS and Docker migration, maintenance of on-demand test environments.
    ]
  )
)

= Education
#exp(
  "University of Rennes 1 & ÉNS Rennes",
  "Rennes, France",
  (
    title: "BSc & MSc in Computer Science, research track",
    time: "2013 – 2018",
    details: [
      Research internships at: KTH (Stockholm, Sweden, Feb–Jun 2018); KAIST (Daejeon, South Korea, Mar–Aug 2017); IRISA & INRIA (Rennes, France, May–Jul 2016).
    ]
  )
)

= Skills
/ Languages: Rust, Python, Swift, Terraform
/ Rust Libraries: Axum/Tower, RustCrypto, Cryptoki (PKCS\#11), uniffi, wasm-bindgen, Leptos, Sea-ORM, PyO3
/ Application Platforms: Linux, Web, iOS, Android
/ Tools: Grafana stack (Prometheus, Mimir, Loki, Tempo), Docker, Helm, FluxCD, GitHub Actions
/ Orchestrators: Kubernetes (EKS with EC2 and Fargate), HashiCorp Nomad, Cloudflare Workers, ECS (Fargate)
/ Cloud Providers: AWS, Cloudflare
/ Standards: JOSE, OIDC, W3C Verifiable Credentials, OID4VC, ISO mDL, Sign-in with Ethereum
