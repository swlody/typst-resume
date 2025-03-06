#let meta = toml("../info.toml")
#import "../lib.typ": experience-entry
#import meta.import.fontawesome: *

#let icon = meta.section.icon.experience
#let include-icon = meta.personal.include_icons

= #if include-icon [#fa-icon(icon) #h(5pt)] Experience

#show link: underline

#v(3pt)

#experience-entry(
  title: [Participant in self-directed programming retreat],
  date: [2024],
  company: [Recure Center],
  location: [Brooklyn, NY],
)

- Worked on personal projects and collaborated with other programmers with diverse levels of experience.
- Gained depth and breadth of knowledge of web technologies and infrastructure.
  - Built horizontally and vertically scalable backend services.
  - CI/CD with extensive testing and cloud native hosting of Docker containers.
- Created a #link("https://dial-a-poem.com")[small website] to fetch a random poem. Utilized vanilla HTML with Rust \& SQLite backend. (#link("https://github.com/swlody/dial-a-poem")[Code])
- Launched another #link("https://rrgrng.org")[interactive website] where users could communicate data between a REST API and WebSockets by utilizing Redis. (#link("https://github.com/swlody/random-crowdsourced")[Code]) (#link("https://swlody.dev/rrgrng")[Technical writeup])
  - Required #link("https://swlody.dev/re-rrgrng")[live troubleshooting] of scaling issues after being posted to forums.
- Honed distributed systems skills using the #link("https://fly.io/dist-sys")[Maelstrom workbench]. (#link("https://github.com/swlody/gossip-glomers")[Code])
- Created a #link("https://swlody.dev")[personal website] where you can read more about me!

#v(3pt)

#experience-entry(
  title: [Software Engineer],
  date: [2022 - 2023],
  company: [GTS Securities],
  location: [New York, NY],
)

- Developed reconciliation system for messages sent and received by trading systems.
  - Integrated with existing systems including Apache Kafka for reconciliation data, and Redis for reporting mismatches.
// - Involved in full lifecycle of feature development from coding and testing through deployment and verification.
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
  - Integrated with existing backend storage APIs, logging and monitoring infrastructure, QA, testing and fuzz testing.
  - Shared responsibilities for organizing sprint planning and participated in code reviews.
- Spent several days per month on-call as directly responsible engineer for API team.
  - Troubleshooted and resolved issues across the global surface of the cloud storage API.
  - Required familiarity with every layer of the storage stack from public-facing SDKs and APIs down to the distributed filesystem.
  - Required digging deep into unfamiliar layers of the code helped to understand and quickly remediate customer issues.
  - Exercised communication skills to organize responses across teams.
  - Practiced software lifecycle management to ensure issues were fixed in production.
  - Wrote root-cause analyses of incidents and coordinated mitigation and resolution of both the symptoms and underlying issues.
- Went beyond job scope to contribute to open source Rust SDK for Azure to add support for calling distributed filesystem APIs.

#v(3pt)

#experience-entry(
  title: [Software Engineer],
  date: [2018 - 2019],
  company: [MTEQ],
  location: [Lorton, VA],
)

- Integrated autonomous field sensor systems with proprietary communication protocol based on Protocol Buffers and TLS.
- Collaborated with team of 2 other developers to create developer libraries for the protocol in C++, C\#, and Python.
- Authored a code generator in Scala to convert XML definitions corresponding to protobuf messages into C++/C\#/Python classes.
