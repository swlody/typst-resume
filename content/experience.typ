#let meta = toml("../info.toml")
#import "../lib.typ": experience-entry
#import meta.import.fontawesome: *

#let icon = meta.section.icon.experience
#let include-icon = meta.personal.include_icons

= #if include-icon [#fa-icon(icon) #h(5pt)] Experience

#show link: underline

#v(3pt)

#experience-entry(
  title: [Sabbatical],
  date: [2024 - ?],
  company: link("https://recurse.com")[Recurse Center],
  location: [Brooklyn, NY],
)

- Gained depth and breadth of knowledge of web technologies and infrastructure.
  - Built horizontally and vertically scalable backend services.
  - Implemented auth, logging, configuration, metrics and monitoring.
  - CI/CD with extensive testing and cloud native hosting of Docker containers.
- Created a #link("https://dial-a-poem.com")[small website] to view a random poem. HTML with Rust \& SQLite backend. (#link("https://github.com/swlody/dial-a-poem")[Code])
- Launched another #link("https://rrgrng.org")[interactive website] where users could communicate data between a REST API and WebSockets by utilizing Redis. (#link("https://github.com/swlody/random-crowdsourced")[Code]) (#link("https://swlody.dev/rrgrng")[Technical writeup])
  - Required #link("https://swlody.dev/re-rrgrng")[live troubleshooting] of scaling issues after being posted to forums.
- Honed distributed systems skills using the #link("https://fly.io/dist-sys")[Maelstrom workbench]. (#link("https://github.com/swlody/gossip-glomers")[Code])
- Created a #link("https://swlody.dev")[personal website] where you can read more about me!

#v(3pt)

#experience-entry(
  title: [Software Engineer],
  date: [2023],
  company: [GTS Securities],
  location: [New York, NY],
)

- Developed reconciliation system for messages sent and received by trading systems.
  - Integrated with existing systems including Apache Kafka for reconciliation data and Redis for reporting mismatches.
- Involved in full lifecycle of feature development from coding and testing through deployment and verification.
- Assisted new hires with on-boarding exercise to implement a simple trading model.

#v(3pt)

#experience-entry(
  title: [Software Engineer II],
  date: [2019 - 2022],
  company: [Microsoft],
  location: [Reston, VA],
)

- Worked to implement an asynchronous and multi-threaded SFTP server in C++.
  // This can be reworded
  - Integrated with existing backend storage APIs, monitoring infrastructure, QA, and testing.
  - Shared responsibilities for organizing sprint planning and participating in code reviews.
- Spent several days per month on-call as directly responsible engineer for API team.
  - Troubleshooted and resolved issues across the global surface of the cloud storage API.
  - Gained familiarity with every layer of the storage stack from public-facing SDKs and APIs down to the distributed filesystem.
  - Dug deeply into unfamiliar system layers to quickly remediate customer issues.
  - Exercised communication skills to organize responses across teams.
  - Practiced software lifecycle management to ensure issues were fixed in production.
  - Wrote root-cause analyses of incidents and coordinated issue mitigation and resolution.
- Went beyond job scope to #link("https://github.com/Azure/azure-sdk-for-rust/pull/67")[contribute] to open source Rust SDK for Azure.

#v(3pt)

#experience-entry(
  title: [Software Engineer],
  date: [2018 - 2019],
  company: [MTEQ],
  location: [Lorton, VA],
)

- Integrated autonomous field sensors with network protocol based on Protobufs and TLS.
- Created developer libraries for the protocol in C++, C\#, and Python.
- Authored a code generator in Scala to convert XML message definitions into C++/C\#/Python classes.
